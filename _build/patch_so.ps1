param(
  [string]$Src = "f:\Code\piano-tiles-2\lib\armeabi-v7a\libcocos2dcpp.so",
  [string]$Dst = "f:\Code\piano-tiles-2\_build\patched\lib\armeabi-v7a\libcocos2dcpp.so"
)
# Patch: make the gameplay clock frame-rate independent.
# Original GameScreen tick (~0x1e3b88) advanced game time by a fixed 1/60 s per frame.
# New: step = n/120 s, n = round(err + dt*120) clamped to [1,4], err carried in field +0x29c.
$ErrorActionPreference = 'Stop'
$b = [IO.File]::ReadAllBytes($Src)

function SR([int]$x) { @{ V = $x -shr 1; B = $x -band 1 } }
$code = New-Object System.Collections.Generic.List[byte]
function E16([int]$h) { $code.Add([byte]($h -band 0xFF)); $code.Add([byte](($h -shr 8) -band 0xFF)) }
function E32([int]$h1, [int]$h2) { E16 $h1; E16 $h2 }
function VLDR([int]$sd, [int]$rn, [int]$imm, [int]$load = 1) { $d = SR $sd; E32 (0xED80 -bor ($d.B -shl 6) -bor ($load -shl 4) -bor $rn) (($d.V -shl 12) -bor 0x0A00 -bor ($imm / 4)) }
function VMOV_SR([int]$sn, [int]$rt) { $n = SR $sn; E32 (0xEE00 -bor $n.V) (($rt -shl 12) -bor 0x0A10 -bor ($n.B -shl 7)) }   # vmov Sn, Rt
function VMOV_RS([int]$rt, [int]$sn) { $n = SR $sn; E32 (0xEE10 -bor $n.V) (($rt -shl 12) -bor 0x0A10 -bor ($n.B -shl 7)) }   # vmov Rt, Sn
function V3([int]$base, [int]$opb, [int]$sd, [int]$sn, [int]$sm) { $d = SR $sd; $n = SR $sn; $m = SR $sm; E32 ($base -bor ($d.B -shl 6) -bor $n.V) (($d.V -shl 12) -bor 0x0A00 -bor $opb -bor ($n.B -shl 7) -bor ($m.B -shl 5) -bor $m.V) }
function V2([int]$h1, [int]$opb, [int]$sd, [int]$sm) { $d = SR $sd; $m = SR $sm; E32 ($h1 -bor ($d.B -shl 6)) (($d.V -shl 12) -bor 0x0A00 -bor $opb -bor ($m.B -shl 5) -bor $m.V) }

$CAVE = 0xc26390
# --- cave code ---
VLDR 15 4 0x29c                 # 00 vldr s15,[r4,#0x29c]   err
VMOV_SR 14 6                    # 04 vmov s14, r6           dt
VLDR 16 15 0x5C                 # 08 vldr s16,[pc,#0x5c]    120.0 (literal at +0x68)
V3 0xEE00 0x00 15 14 16         # 0C vmla.f32 s15, s14, s16
V2 0xEEBD 0x40 14 15            # 10 vcvtr.s32.f32 s14, s15
VMOV_RS 1 14                    # 14 vmov r1, s14
E16 0x2904; E16 0xBFC8; E16 0x2104    # 18 cmp r1,#4 ; it gt ; movgt r1,#4
E16 0x2901; E16 0xBFB8; E16 0x2101    # 1E cmp r1,#1 ; it lt ; movlt r1,#1
VMOV_SR 14 1                    # 24 vmov s14, r1
V2 0xEEB8 0xC0 14 14            # 28 vcvt.f32.s32 s14, s14
V3 0xEE30 0x40 15 15 14         # 2C vsub.f32 s15, s15, s14
V2 0xEEB7 0x00 13 0             # 30 vmov.f32 s13, #1.0
V2 0xEEB4 0xC0 15 13            # 34 vcmpe.f32 s15, s13
E32 0xEEF1 0xFA10                 # 38 vmrs APSR_nzcv, fpscr
E16 0xBFC8                        # 3C it gt
V2 0xEEB0 0x40 15 13            # 3E vmovgt.f32 s15, s13
V2 0xEEB1 0x40 13 13            # 42 vneg.f32 s13, s13
V2 0xEEB4 0xC0 15 13            # 46 vcmpe.f32 s15, s13
E32 0xEEF1 0xFA10                 # 4A vmrs
E16 0xBFB8                        # 4E it lt
V2 0xEEB0 0x40 15 13            # 50 vmovlt.f32 s15, s13
VLDR 15 4 0x29c 0               # 54 vstr s15,[r4,#0x29c]
V3 0xEE80 0x00 16 14 16         # 58 vdiv.f32 s16, s14, s16   step = n/120
E32 0xF8D4 0x32A0                 # 5C ldr.w r3,[r4,#0x2a0]
E16 0x3301                        # 60 adds r3,#1
E32 0xF8C4 0x32A0                 # 62 str.w r3,[r4,#0x2a0]
E16 0x4770                        # 66 bx lr
if ($code.Count -ne 0x68) { throw "cave size mismatch: 0x{0:x}" -f $code.Count }
$code.AddRange([BitConverter]::GetBytes([single]120.0))   # 68 literal

for ($i = $CAVE; $i -lt $CAVE + $code.Count; $i++) { if ($b[$i] -ne 0) { throw "cave not empty at 0x{0:x}" -f $i } }
$code.CopyTo($b, $CAVE)

# --- extend LOAD0 (phdr #2) filesz/memsz to cover the cave ---
$ph = 0x34 + 2 * 32
if ([BitConverter]::ToUInt32($b, $ph) -ne 1 -or [BitConverter]::ToUInt32($b, $ph + 0x10) -ne 0xc26388) { throw "unexpected LOAD0" }
[BitConverter]::GetBytes([uint32]0xc264d0).CopyTo($b, $ph + 0x10)
[BitConverter]::GetBytes([uint32]0xc264d0).CopyTo($b, $ph + 0x14)

function Expect([int]$at, [string]$hex) { $e = $hex -split ' ' | % { [Convert]::ToByte($_, 16) }; for ($i = 0; $i -lt $e.Count; $i++) { if ($b[$at + $i] -ne $e[$i]) { throw ("unexpected bytes at 0x{0:x}" -f $at) } } }

# --- 0x1e3c0e (inside IT NE): vldr s16,[lit 1/60] -> vmov s16, r6 (use real dt when not playing) ---
Expect 0x1e3c0e "9f ed aa 8a"
$b[0x1e3c0e] = 0x08; $b[0x1e3c0f] = 0xEE; $b[0x1e3c10] = 0x10; $b[0x1e3c11] = 0x6A

# --- 0x1e3c8a..0x1e3cb0: averaging block -> bl cave ; b 0x1e3cb0 ; nops ---
Expect 0x1e3c8a "d4 ed a7 7a"
$a = 0x1e3c8a; $off = $CAVE - ($a + 4)
$S = 0; $I1 = ($off -shr 23) -band 1; $I2 = ($off -shr 22) -band 1
$J1 = (1 - $I1) -bxor $S; $J2 = (1 - $I2) -bxor $S
$h1 = 0xF000 -bor ($S -shl 10) -bor (($off -shr 12) -band 0x3FF)
$h2 = 0xD000 -bor ($J1 -shl 13) -bor ($J2 -shl 11) -bor (($off -shr 1) -band 0x7FF)
$patch = New-Object System.Collections.Generic.List[byte]
foreach ($h in @($h1, $h2, (0xE000 -bor ((0x1e3cb0 - ($a + 4 + 4)) -shr 1)))) { $patch.Add([byte]($h -band 0xFF)); $patch.Add([byte]($h -shr 8)) }
while ($patch.Count -lt (0x1e3cb0 - $a)) { $patch.Add(0x00); $patch.Add(0xBF) }
$patch.CopyTo($b, $a)

New-Item -ItemType Directory -Force -Path (Split-Path $Dst) | Out-Null
[IO.File]::WriteAllBytes($Dst, $b)
"patched -> $Dst"
