# Rebuilds Piano Tiles 2 APK with targetSdkVersion raised to 24 (required by Android 15+/One UI 7+).
# Output: _build\out\piano-tiles-2-unsigned.apk  (sign afterwards with sign_apk.ps1)
param(
  [string]$Src = (Split-Path $PSScriptRoot -Parent),
  [string]$Out = (Join-Path $PSScriptRoot 'out\piano-tiles-2-unsigned.apk'),
  [int]$NewTarget = 24
)
$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression, System.IO.Compression.FileSystem

# ---------- 1. Patch binary AndroidManifest.xml ----------
$b = [IO.File]::ReadAllBytes((Join-Path $Src 'AndroidManifest.xml'))
function U16($o){ [BitConverter]::ToUInt16($b,$o) }
function U32($o){ [BitConverter]::ToUInt32($b,$o) }
$strings=@(); $resIds=@(); $off=8; $patched=$false
while ($off -lt $b.Length) {
  $type=U16 $off; $hsz=U16 ($off+2); $size=U32 ($off+4)
  if ($type -eq 0x0001) {
    $count=U32 ($off+8); $flags=U32 ($off+16); $strStart=U32 ($off+20); $utf8=($flags -band 0x100) -ne 0
    for($i=0;$i -lt $count;$i++){
      $so=$off+$strStart+(U32 ($off+$hsz+$i*4))
      if($utf8){ $p=$so; if($b[$p] -band 0x80){$p++}; $p++; $l=$b[$p]; if($l -band 0x80){$l=(($l -band 0x7f) -shl 8)+$b[$p+1];$p++}; $p++; $strings+=[Text.Encoding]::UTF8.GetString($b,$p,$l) }
      else { $l=U16 $so; $p=$so+2; if($l -band 0x8000){$l=(($l -band 0x7fff) -shl 16)+(U16 ($so+2));$p+=2}; $strings+=[Text.Encoding]::Unicode.GetString($b,$p,$l*2) }
    }
  } elseif ($type -eq 0x0180) {
    for($i=0;$i -lt ($size-8)/4;$i++){ $resIds += (U32 ($off+8+$i*4)) }
  } elseif ($type -eq 0x0102 -and $strings[(U32 ($off+20))] -eq 'uses-sdk') {
    $ac=U16 ($off+28)
    for($i=0;$i -lt $ac;$i++){
      $a=$off+36+$i*20; $ni=U32 ($a+4)
      if(($ni -lt $resIds.Count -and $resIds[$ni] -eq 0x01010270) -or $strings[$ni] -eq 'targetSdkVersion'){
        $old=U32 ($a+16); $dt=$b[$a+15]
        if($dt -ne 0x10){ throw "targetSdkVersion is not an int (type $dt)" }
        [BitConverter]::GetBytes([uint32]$NewTarget).CopyTo($b,$a+16)
        "targetSdkVersion: $old -> $NewTarget"; $patched=$true
      }
    }
  }
  $off+=$size
}
if(-not $patched){ throw "targetSdkVersion not found" }

# ---------- 2. Build unsigned APK (drop old META-INF signature) ----------
# NOTE: .NET Framework's ZipArchive writes CompressionLevel.NoCompression as *Deflate* (method 8),
# which breaks AssetManager.openFd() (SoundPool cannot load MP3s -> no sound at all).
# So we use a tiny ZIP writer that emits real STORED (method 0) entries.
Add-Type -TypeDefinition @"
using System; using System.IO; using System.IO.Compression; using System.Text; using System.Collections.Generic;
public class ApkZipWriter : IDisposable {
  static readonly uint[] T = MakeTable();
  static uint[] MakeTable(){ var t=new uint[256]; for(uint i=0;i<256;i++){ uint c=i; for(int k=0;k<8;k++) c=(c&1)!=0?0xEDB88320u^(c>>1):c>>1; t[i]=c; } return t; }
  static uint Crc(byte[] d){ uint c=0xFFFFFFFFu; foreach(byte x in d) c=T[(c^x)&0xFF]^(c>>8); return c^0xFFFFFFFFu; }
  class Ent { public byte[] Name; public ushort Method; public uint Crc, CSize, USize, Offset; }
  readonly FileStream fs; readonly BinaryWriter w; readonly List<Ent> ents = new List<Ent>();
  public ApkZipWriter(string path){ fs=new FileStream(path,FileMode.Create); w=new BinaryWriter(fs); }
  public void Add(string name, byte[] data, bool store){
    var e=new Ent{ Name=Encoding.UTF8.GetBytes(name), Crc=Crc(data), USize=(uint)data.Length, Offset=(uint)fs.Position };
    byte[] payload=data;
    if(!store){ var ms=new MemoryStream(); using(var ds=new DeflateStream(ms,CompressionLevel.Optimal,true)) ds.Write(data,0,data.Length); payload=ms.ToArray(); e.Method=8; } else e.Method=0;
    e.CSize=(uint)payload.Length;
    w.Write(0x04034b50u); w.Write((ushort)20); w.Write((ushort)0x0800); w.Write(e.Method); w.Write((ushort)0); w.Write((ushort)0x21);
    w.Write(e.Crc); w.Write(e.CSize); w.Write(e.USize); w.Write((ushort)e.Name.Length); w.Write((ushort)0); w.Write(e.Name);
    w.Write(payload); ents.Add(e);
  }
  public void Dispose(){
    uint cdStart=(uint)fs.Position;
    foreach(var e in ents){
      w.Write(0x02014b50u); w.Write((ushort)20); w.Write((ushort)20); w.Write((ushort)0x0800); w.Write(e.Method); w.Write((ushort)0); w.Write((ushort)0x21);
      w.Write(e.Crc); w.Write(e.CSize); w.Write(e.USize); w.Write((ushort)e.Name.Length); w.Write((ushort)0); w.Write((ushort)0);
      w.Write((ushort)0); w.Write((ushort)0); w.Write(0u); w.Write(e.Offset); w.Write(e.Name);
    }
    uint cdSize=(uint)fs.Position-cdStart;
    w.Write(0x06054b50u); w.Write((ushort)0); w.Write((ushort)0); w.Write((ushort)ents.Count); w.Write((ushort)ents.Count);
    w.Write(cdSize); w.Write(cdStart); w.Write((ushort)0); w.Flush(); fs.Dispose();
  }
}
"@ -ReferencedAssemblies System.IO.Compression
New-Item -ItemType Directory -Force -Path (Split-Path $Out) | Out-Null
if(Test-Path $Out){ Remove-Item $Out }
$zip=New-Object ApkZipWriter $Out
$stored=0
try {
  $zip.Add('AndroidManifest.xml', $b, $false)
  $n=1
  foreach($f in (Get-ChildItem $Src | Where-Object { $_.Name -ne '_build' } | ForEach-Object { if ($_.PSIsContainer) { Get-ChildItem $_.FullName -Recurse -File } else { $_ } })){
    $rel=$f.FullName.Substring($Src.Length).TrimStart('\').Replace('\','/')
    if($rel -eq 'AndroidManifest.xml' -or $rel.StartsWith('META-INF/') -or $rel.StartsWith('_build/')){ continue }
    # workspace-only files (sheet music scans, docs) are not part of the game
    if($rel.StartsWith('sheet-song/') -or $rel -eq 'readme.md'){ continue }
    # resources.arsc + media must be STORED (openFd / mmap); .so stored too
    $store = ($rel -eq 'resources.arsc' -or $rel -match '\.(so|png|jpg|ogg|mp3|wav|m4a)$')
    $file = $f.FullName
    $override = Join-Path $PSScriptRoot ('patched\' + $rel.Replace('/','\'))
    if (Test-Path $override) { "Using patched: $rel"; $file = $override }
    $zip.Add($rel, [IO.File]::ReadAllBytes($file), $store)
    if($store){ $stored++ }
    $n++
  }
} finally { $zip.Dispose() }
"Wrote $n entries ($stored stored uncompressed) -> $Out"
