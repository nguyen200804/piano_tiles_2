# Signs the unsigned APK with zipalign + v1/v2/v3 signatures.
# Creates a personal keystore on first run (keep it to sign future rebuilds with the same key,
# otherwise Android will refuse to update and you must uninstall first).
param(
  [string]$Apk = (Join-Path $PSScriptRoot 'out\piano-tiles-2-unsigned.apk'),
  [string]$OutName = $(if ($Apk -match 'sdk23') { 'PianoTiles2-3.0.0.806-sdk23.apk' } else { 'PianoTiles2-3.0.0.806-sdk24.apk' })
)
$ErrorActionPreference = 'Stop'
$tools   = Join-Path $PSScriptRoot 'tools'
$ks      = Join-Path $PSScriptRoot 'piano-tiles-2.keystore'
$alias   = 'pianotiles2'
$pass    = 'pianotiles2'

# Locate Java/keytool
$jreBin = $null
if (Test-Path (Join-Path $tools 'jre')) {
  $jreBin = (Get-ChildItem (Join-Path $tools 'jre') -Directory | Select-Object -First 1).FullName + '\bin'
} elseif (Test-Path "C:\Program Files\Android\Android Studio\jbr\bin\java.exe") {
  $jreBin = "C:\Program Files\Android\Android Studio\jbr\bin"
} elseif ($env:JAVA_HOME -and (Test-Path "$env:JAVA_HOME\bin\java.exe")) {
  $jreBin = "$env:JAVA_HOME\bin"
} elseif (Get-Command java -ErrorAction SilentlyContinue) {
  $jreBin = Split-Path (Get-Command java).Source
} else {
  throw 'Java / keytool not found'
}

if (-not (Test-Path $ks)) {
  & "$jreBin\keytool.exe" -genkeypair -keystore $ks -storepass $pass -keypass $pass -alias $alias `
    -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Piano Tiles 2 Personal Build, O=Personal, C=VN"
  if ($LASTEXITCODE) { throw 'keytool failed' }
}

$signer = Join-Path $tools 'uber-apk-signer.jar'
$final = Join-Path (Split-Path $Apk) $OutName

if (Test-Path $signer) {
  & "$jreBin\java.exe" -jar $signer -a $Apk --ks $ks --ksAlias $alias --ksPass $pass --ksKeyPass $pass --overwrite
  if ($LASTEXITCODE) { throw 'signing failed' }

  # uber-apk-signer may exit 0 on argument errors, so verify explicitly
  $verify = & "$jreBin\java.exe" -jar $signer -a $Apk --onlyVerify 2>&1 | Out-String
  $verify
  if ($verify -notmatch 'VERIFY\s*\r?\n\s*file:' -or $verify -match 'FAILED|errors: [1-9]') { throw 'verification failed' }
  Move-Item -Force $Apk $final
} else {
  # Fallback to Android SDK build-tools (zipalign + apksigner)
  $sdkDir = "$env:LOCALAPPDATA\Android\Sdk"
  if ($env:ANDROID_HOME) { $sdkDir = $env:ANDROID_HOME }
  if ($env:ANDROID_SDK_ROOT) { $sdkDir = $env:ANDROID_SDK_ROOT }
  $buildToolsDir = (Get-ChildItem (Join-Path $sdkDir 'build-tools') -Directory | Sort-Object Name -Descending | Select-Object -First 1).FullName
  if (-not $buildToolsDir) { throw 'Android build-tools not found' }

  $zipalign = Join-Path $buildToolsDir 'zipalign.exe'
  $apksigner = Join-Path $buildToolsDir 'apksigner.bat'
  $aligned = Join-Path (Split-Path $Apk) 'piano-tiles-2-aligned.apk'

  "Zipaligning APK with $zipalign..."
  & $zipalign -f -p 4 $Apk $aligned
  if ($LASTEXITCODE) { throw 'zipalign failed' }

  "Signing APK with $apksigner..."
  $env:JAVA_HOME = Split-Path $jreBin -Parent
  $env:Path = "$jreBin;$buildToolsDir;$env:Path"
  cmd /c "`"$apksigner`" sign --ks `"$ks`" --ks-key-alias $alias --ks-pass pass:$pass --key-pass pass:$pass --out `"$final`" `"$aligned`""
  if ($LASTEXITCODE) { throw 'apksigner sign failed' }

  "Verifying APK signature..."
  cmd /c "`"$apksigner`" verify -v `"$final`""
  if ($LASTEXITCODE) { throw 'apksigner verify failed' }

  if (Test-Path $aligned) { Remove-Item -Force $aligned }
  if (Test-Path $Apk) { Remove-Item -Force $Apk }
}

"Signed APK: $final"

