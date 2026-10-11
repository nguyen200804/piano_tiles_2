# Signs the unsigned APK with zipalign + v1/v2/v3 signatures.
# Creates a personal keystore on first run (keep it to sign future rebuilds with the same key,
# otherwise Android will refuse to update and you must uninstall first).
param(
  [string]$Apk = (Join-Path $PSScriptRoot 'out\piano-tiles-2-unsigned.apk')
)
$ErrorActionPreference = 'Stop'
$tools   = Join-Path $PSScriptRoot 'tools'
$jreBin  = (Get-ChildItem (Join-Path $tools 'jre') -Directory | Select-Object -First 1).FullName + '\bin'
$ks      = Join-Path $PSScriptRoot 'piano-tiles-2.keystore'
$alias   = 'pianotiles2'
$pass    = 'pianotiles2'

if (-not (Test-Path $ks)) {
  & "$jreBin\keytool.exe" -genkeypair -keystore $ks -storepass $pass -keypass $pass -alias $alias `
    -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Piano Tiles 2 Personal Build, O=Personal, C=VN"
  if ($LASTEXITCODE) { throw 'keytool failed' }
}

$signer = Join-Path $tools 'uber-apk-signer.jar'
& "$jreBin\java.exe" -jar $signer -a $Apk --ks $ks --ksAlias $alias --ksPass $pass --ksKeyPass $pass --overwrite
if ($LASTEXITCODE) { throw 'signing failed' }

# uber-apk-signer may exit 0 on argument errors, so verify explicitly
$verify = & "$jreBin\java.exe" -jar $signer -a $Apk --onlyVerify 2>&1 | Out-String
$verify
if ($verify -notmatch 'VERIFY\s*\r?\n\s*file:' -or $verify -match 'FAILED|errors: [1-9]') { throw 'verification failed' }

$final = Join-Path (Split-Path $Apk) 'PianoTiles2-3.0.0.806-sdk24.apk'
Move-Item -Force $Apk $final
"Signed APK: $final"
