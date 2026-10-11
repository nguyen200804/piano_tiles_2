# Piano Tiles 2 — Tổng hợp dữ liệu bài hát

Nguồn: thư mục [`assets/res/song`](assets/res/song) gồm **62 bài** (file `.json`), tổng cộng **~70.000 nốt**.

Cấu trúc một file bài hát:

```json
{
  "baseBpm": 90,
  "musics": [
    { "id": 1, "baseBeats": 0.25, "scores": ["<bè 1: giai điệu>", "<bè 2: đệm>", "..."] },
    { "id": 2, "baseBeats": 0.25, "scores": ["...", "..."] }
  ]
}
```

| Trường | Ý nghĩa |
|---|---|
| `baseBpm` | Nhịp độ gốc của bài (phách/phút) |
| `musics` | Danh sách các màn (thường 3 màn; các bài *Challenge* có 5–8 màn) |
| `id` | Số thứ tự màn |
| `baseBeats` | Độ dài (tính bằng phách) của **1 hàng phím** trên màn hình |
| `scores` | Các bè nhạc. Bè đầu là giai điệu (phím bạn chạm), các bè sau là phần đệm tự phát |
| `bpm` *(tùy chọn)* | Nhịp riêng cho màn, chỉ có ở *Katy Katy* |
| `audition` *(tùy chọn)* | Đoạn nghe thử `{"start":[0,0],"end":[0,60]}`, chỉ có ở *Attention* |

> Ghi chú độ tin cậy: cách ghi **cao độ** và **trường độ** đã được kiểm chứng (mỗi ô nhịp cộng đúng 4 phách; tên nốt khớp 88 file mẫu trong `assets/res/music/piano`). Ý nghĩa một số **hiệu ứng** (`@`, `%`, `8<>`) là suy luận từ dữ liệu, được đánh dấu *(suy luận)*.

---

# Tổng hợp các phím đàn

## Cách ghi tên nốt

| Ký hiệu trong file | Quãng tám | Ví dụ | Tên chuẩn |
|---|---|---|---|
| Chữ HOA + `-3` | 0 | `A-3`, `B-3` | A0, B0 |
| Chữ HOA + `-2` | 1 | `C-2` | C1 |
| Chữ HOA + `-1` | 2 | `G-1` | G2 |
| chữ thường, không số | 3 | `c`, `e` | C3, E3 |
| chữ thường + `1` | 4 | `c1` | C4 (Đô giữa) |
| chữ thường + `2` | 5 | `a2` | A5 |
| chữ thường + `3` | 6 | `e3` | E6 |
| chữ thường + `4` | 7 | `g4` | G7 |
| chữ thường + `5` | 8 | `c5` | C8 (phím cao nhất) |
| Thêm `#` phía trước | thăng nửa cung | `#f1`, `#A-1` | F#4, A#2 |

## Bảng 88 phím và số lần xuất hiện (tất cả bài)

Mỗi ô ghi: `ký hiệu trong file` và số lần nốt đó xuất hiện.

| Quãng | C | C# | D | D# | E | F | F# | G | G# | A | A# | B |
|-------|---|----|---|----|---|---|----|---|----|---|----|---|
| 0 |   |   |   |   |   |   |   |   |   | `A-3`<br>4 | `#A-3`<br>8 | `B-3`<br>13 |
| 1 | `C-2`<br>11 | `#C-2`<br>8 | `D-2`<br>40 | `#D-2`<br>14 | `E-2`<br>47 | `F-2`<br>54 | `#F-2`<br>31 | `G-2`<br>98 | `#G-2`<br>69 | `A-2`<br>156 | `#A-2`<br>107 | `B-2`<br>218 |
| 2 | `C-1`<br>265 | `#C-1`<br>289 | `D-1`<br>492 | `#D-1`<br>397 | `E-1`<br>625 | `F-1`<br>631 | `#F-1`<br>434 | `G-1`<br>951 | `#G-1`<br>532 | `A-1`<br>1315 | `#A-1`<br>753 | `B-1`<br>1211 |
| 3 | `c`<br>1205 | `#c`<br>1043 | `d`<br>1761 | `#d`<br>976 | `e`<br>1945 | `f`<br>1388 | `#f`<br>1368 | `g`<br>1859 | `#g`<br>1068 | `a`<br>2191 | `#a`<br>1078 | `b`<br>1617 |
| 4 | `c1`<br>1499 | `#c1`<br>1212 | `d1`<br>1793 | `#d1`<br>981 | `e1`<br>1574 | `f1`<br>1274 | `#f1`<br>1235 | `g1`<br>1509 | `#g1`<br>1264 | `a1`<br>2077 | `#a1`<br>1289 | `b1`<br>1973 |
| 5 | `c2`<br>1877 | `#c2`<br>1740 | `d2`<br>2270 | `#d2`<br>1376 | `e2`<br>2577 | `f2`<br>1708 | `#f2`<br>1697 | `g2`<br>1792 | `#g2`<br>1551 | `a2`<br>2110 | `#a2`<br>831 | `b2`<br>941 |
| 6 | `c3`<br>769 | `#c3`<br>703 | `d3`<br>665 | `#d3`<br>387 | `e3`<br>598 | `f3`<br>290 | `#f3`<br>309 | `g3`<br>282 | `#g3`<br>283 | `a3`<br>341 | `#a3`<br>131 | `b3`<br>166 |
| 7 | `c4`<br>112 | `#c4`<br>183 | `d4`<br>74 | `#d4`<br>57 | `e4`<br>87 | `f4`<br>24 | `#f4`<br>6 | `g4`<br>15 | `#g4`<br>13 | `a4`<br>4 | `#a4`<br>0 | `b4`<br>9 |
| 8 | `c5`<br>8 |   |   |   |   |   |   |   |   |   |   |   |

- Nốt dùng nhiều nhất: `e2` (E5), `d2` (D5), `a` (A3), `a2` (A5), `a1` (A4).
- Vùng dùng nhiều nhất: quãng 3–5 (C3–B5).
- Chỉ có `#a4` (A#7) là không bài nào dùng.

## Nốt đặc biệt

| Ký hiệu | Ý nghĩa | Số lần |
|---|---|---|
| `mute` | Ô phím không phát tiếng (nốt câm) | 1059 |
| `empty` | Ô trống (có file mẫu `empty.mp3`) | 0 |
| `Q` … `Y` | Dấu lặng đứng riêng (xem [bảng nhịp](#tổng-hợp-bảng-nhịp)) | 1693 |

## File âm thanh mẫu (`assets/res/music`)

| Thư mục | Số file | Nội dung |
|---|---:|---|
| `piano` | 91 | Đủ 88 phím A0–C8, cộng `mute`, `empty`, `chuanshao` |
| `bass` | 36 | Bass, khoảng A2–D5 |
| `bass2` | 41 | Bass loại 2, khoảng B1–D5 |
| `drum` | 20 | Trống / bộ gõ |

## Lỗi phát hiện trong dữ liệu

| Bài | Vấn đề |
|---|---|
| *Fly Away* | Có nốt `#e` (E#, tức F). Không có file mẫu `#e.mp3` nên nốt này **không có tiếng** |
| *Đừng như thói quen* | Màn 2 và 3 chỉ chứa `mute`, tức **trống**, chỉ màn 1 có nhạc |

---

# Tổng hợp các hiệu ứng phím

## Ký hiệu cấu trúc

| Ký hiệu | Ý nghĩa | Ví dụ |
|---|---|---|
| `,` | Ngăn cách các phím (nốt) liên tiếp | `c2[L],b1[L]` |
| `;` | Ngăn cách các ô nhịp (mỗi ô thường đủ 4 phách) | `...g1[K];c2[K],...` |
| `[...]` | Trường độ của nốt (xem [bảng nhịp](#tổng-hợp-bảng-nhịp)) | `e2[M]` |
| `( . )` | **Hợp âm**: các nốt vang cùng lúc trên 1 phím | `(e1.c2)[J]` |

## Hiệu ứng phím

| Cú pháp | Tên | Mô tả | Số lần | Số bài | Ví dụ |
|---|---|---|---:|---:|---|
| `5<a,b>` | **Phím đôi** | Hai phím xuất hiện cùng hàng, phải chạm cả hai | 2173 | 36 | `5<c2[N],#a1[N]>` |
| `6<...>` | **Phím dài nhiều nốt** | Một phím dài cần giữ; các nốt bên trong lần lượt vang khi đang giữ | 56 | 6 | `6<#c2[M],b1[KLM]>`, `6<(e1.c2)[J]>` |
| `8<...>` | **Chuỗi nốt nhanh** *(suy luận)* | Gom một loạt nốt rất ngắn (thường `[O]` = 1/16 phách) thành một cụm, giống vuốt phím (glissando) | 34 | 14 | *ANiMA*: `8<b3[O],a3[O],…,F-1[O]>` (32 nốt từ B6 xuống F2) |
| `(a~b~c)` | **Rải hợp âm** (arpeggio) | Các nốt vang nối tiếp rất nhanh thay vì cùng lúc | 621 | 15 | `(#a~#c1~f1)[L]` |
| `(a@b@c)` | **Chia đều thời lượng** *(suy luận)* | Trường độ của phím chia đều cho từng nốt (kiểu chùm 3); `mute` cũng chiếm một phần | 870 | 33 | `(f2@a2@f3)[L]`, `(f2@a2@mute)[L]` |
| `(a%b)` | **Chưa rõ** | Chỉ có trong *Freedom Dive*, luôn ghép nốt giai điệu với một nốt nền cố định | 28 | 1 | `(a2%d2)[M]`, `(b2%d2)[M]` |

Các hiệu ứng trên có thể lồng nhau, ví dụ `5<(#f2~#g2~#f2)[L]>` là phím đôi chứa nốt rải, hoặc `8<(f2.d3~#d2.c3~d2.#a2)[K]>` là chuỗi nhanh gồm các hợp âm rải.

## Bài nhiều hiệu ứng nhất

| Bài | Hiệu ứng nổi bật |
|---|---|
| *Freedom Dive* | 810 phím đôi, 342 rải, 28 `%` |
| *ANiMA* | 295 phím đôi, 93 rải, 1 chuỗi 32 nốt |
| *Fuego* | 293 phím đôi, 59 rải, 6 chuỗi nhanh |
| *Endless Love* | 115 `@`, 28 rải, 5 chuỗi nhanh |
| *Cafe Dang Va Mua*, *Minh Yeu Nhau Di* | 133 `@` mỗi bài |
| *佛系少女* | 20 phím dài nhiều nốt |

---

# Tổng hợp bảng nhịp

## Ký hiệu trường độ

Độ dài ghi bằng chữ cái trong `[...]`. **Nhiều chữ được cộng dồn**, ví dụ `[KL]` = 1 + ½ = 1,5 phách (nốt chấm dôi), `[JKL]` = 3,5 phách.

| Nốt | Lặng | Phách | Tên nhạc lý | Số hàng phím (baseBeats 0.5) | Số hàng phím (baseBeats 0.25) | Số lần (nốt) |
|:---:|:---:|---:|---|---:|---:|---:|
| `H` | `Q` | 8 | 2 nốt tròn | 16 | 32 | 30 |
| `I` | `R` | 4 | Nốt tròn | 8 | 16 | 438 |
| `J` | `S` | 2 | Nốt trắng | 4 | 8 | 1259 |
| `K` | `T` | 1 | Nốt đen | 2 | 4 | 6815 |
| `L` | `U` | 1/2 | Móc đơn | 1 | 2 | 28544 |
| `M` | `V` | 1/4 | Móc kép | 1/2 | 1 | 13555 |
| `N` | `W` | 1/8 | Móc ba | 1/4 | 1/2 | 2230 |
| `O` | `X` | 1/16 | Móc bốn | — | — | 76 |
| `P` | `Y` | 1/32 | Móc năm | — | — | chỉ dùng ghép |

- Dấu lặng đứng riêng như một phím, ví dụ `c2[I],S,c2[LM]`.
- Trường độ ghép hay gặp: `KL` (1192), `LM` (1152), `JK` (307), `JL` (236), `LN` (147).
- Nốt dài hơn 1 hàng phím thành **phím dài**. Nốt ngắn hơn 1 hàng thường nằm trong phím đôi, rải, `@` hoặc chuỗi nhanh.

## Công thức tốc độ

```
TPS (số hàng phím/giây) = baseBpm ÷ 60 ÷ baseBeats
```

Ví dụ *Canon*: 90 ÷ 60 ÷ 0.25 = **6 TPS**. Công thức này lấy từ mã của game (`libcocos2dcpp.so`, đoạn xử lý tốc độ ở `0x1d87a2`). Đây là tốc độ khởi đầu; trong game, tốc độ tăng dần khi chơi lặp qua các vòng.

## Bảng nhịp từng bài

*Số bè*: số bè nhạc nhiều nhất trong một màn. *Âm vực*: nốt thấp nhất – cao nhất. *Hiệu ứng*: số lần dùng mỗi loại.

| # | Bài | baseBpm | Số màn | baseBeats | TPS từng màn | Số bè | Âm vực | Hiệu ứng |
|---|-----|--------:|------:|----------|--------------|------:|--------|----------|
| 1 | 17sai | 134 | 3 | 0.5 | 4.47 · 4.47 · 4.47 | 5 | F1 – D6 | — |
| 2 | A Little Love | 80 | 3 | 0.25 | 5.33 · 5.33 · 5.33 | 2 | F2 – F6 | 5<>×3, @×46 |
| 3 | A Little Sweet (BY2 - Silence Wang) | 105 | 3 | 0.5 | 3.5 · 3.5 · 3.5 | 2 | E2 – B6 | 5<>×18, 6<>×2, ~×2, @×5 |
| 4 | ANiMA | 183 | 3 | 0.5 | 6.1 · 6.1 · 6.1 | 3 | A0 – B6 | 5<>×295, 8<>×1, ~×93 |
| 5 | Attention | 80 | 3 | 0.25 | 5.33 · 5.33 · 5.33 | 2 | F1 – B5 | — |
| 6 | Autumn | 90 | 3 | 0.25 | 6 · 6 · 6 | 2 | D#2 – C#6 | 5<>×14, 6<>×7 |
| 7 | Because I'm Stupid | 120 | 3 | 0.5 | 4 · 4 · 4 | 2 | B1 – E6 | 5<>×26 |
| 8 | Beginner Challenge | 50 | 8 | 0.25 / 0.5 | 3.33 · 3.33 · 1.67 · 3.33 · 3.33 · 1.67 · 3.33 · 3.33 | 2 | C2 – B6 | 5<>×14 |
| 9 | Cafe Dang Va Mua | 93 | 3 | 0.5 | 3.1 · 3.1 · 3.1 | 2 | A1 – D7 | 5<>×4, @×133 |
| 10 | Canon | 90 | 3 | 0.25 | 6 · 6 · 6 | 2 | C2 – A5 | 6<>×8 |
| 11 | Carrying You | 60 | 3 | 0.25 | 4 · 4 · 4 | 2 | C3 – A7 | — |
| 12 | Cho em | 75 | 3 | 0.25 | 5 · 5 · 5 | 2 | A#1 – A#6 | — |
| 13 | Despacito | 90 | 3 | 0.25 | 6 · 6 · 6 | 3 | G1 – B5 | 5<>×2, ~×10, @×4 |
| 14 | Đừng như thói quen | 103 | 3 | 0.25 | 6.87 · 6.87 · 6.87 | 2 | D#2 – D#5 | @×1 |
| 15 | Élan | 129 | 3 | 0.5 | 4.3 · 4.3 · 4.3 | 2 | C#1 – F6 | 5<>×3, 8<>×2, ~×4, @×9 |
| 16 | Em Gai Mua | 90 | 3 | 0.5 | 3 · 3 · 3 | 2 | B1 – B5 | 5<>×2 |
| 17 | Endless Love | 62 | 3 | 0.25 | 4.13 · 4.13 · 4.13 | 2 | G1 – A6 | 5<>×3, 8<>×5, ~×28, @×115 |
| 18 | Faded | 52 | 3 | 0.25 | 3.47 · 3.47 · 3.47 | 2 | B2 – D#6 | — |
| 19 | Flower Dance | 100 | 3 | 0.25 | 6.67 · 6.67 · 6.67 | 2 | E1 – G#7 | 8<>×3, ~×6, @×27 |
| 20 | Fly Away | 148 | 3 | 0.5 | 4.93 · 4.93 · 4.93 | 2 | C#1 – G#6 | 5<>×8 |
| 21 | Forever Alone | 113 | 3 | 0.5 | 3.77 · 3.77 · 3.77 | 2 | D2 – A6 | 5<>×13 |
| 22 | Freedom Dive | 110 | 3 | 0.25 | 7.33 · 7.33 · 7.33 | 3 | B1 – C8 | 5<>×810, ~×342, @×2, %×28 |
| 23 | Fuego | 148 | 3 | 0.5 | 4.93 · 4.93 · 4.93 | 2 | G#1 – C8 | 5<>×293, 8<>×6, ~×59 |
| 24 | Got Hurt From Love | 100 | 3 | 0.5 | 3.33 · 3.33 · 3.33 | 2 | C2 – G#5 | 5<>×48 |
| 25 | Haloween Party | 154 | 3 | 0.25 | 10.27 · 10.27 · 10.27 | 2 | A1 – E6 | — |
| 26 | Haru Haru | 126 | 3 | 0.25 | 8.4 · 8.4 · 8.4 | 2 | B1 – C#6 | — |
| 27 | Hello Vietnam | 90 | 3 | 0.25 | 6 · 6 · 6 | 2 | C2 – D6 | 8<>×3, ~×4, @×16 |
| 28 | HongKong1 | 105 | 3 | 0.5 | 3.5 · 3.5 · 3.5 | 2 | E2 – D6 | — |
| 29 | Hotaru | 80 | 3 | 0.25 | 5.33 · 5.33 · 5.33 | 2 | D1 – E6 | 5<>×1 |
| 30 | Katy Katy | 120 | 3 | 0.5 | 4 · 4 · 4 | 2 | G1 – F5 | — |
| 31 | Lambada | 120 | 3 | 0.5 | 4 · 4 · 4 | 2 | D2 – C6 | 5<>×33 |
| 32 | Love Of My Life | 75 | 3 | 0.5 | 2.5 · 2.5 · 2.5 | 2 | D2 – F6 | @×3 |
| 33 | Love Paradise | 82 | 3 | 0.25 | 5.47 · 5.47 · 5.47 | 2 | A1 – C7 | 8<>×2, ~×4 |
| 34 | Master Challenge | 100 | 8 | 0.25 / 0.5 | 6.67 · 6.67 · 6.67 · 6.67 · 6.67 · 6.67 · 3.33 · 6.67 | 2 | F#1 – D7 | 5<>×58 |
| 35 | Melody Of The Night No.1 | 75 | 3 | 0.5 | 2.5 · 2.5 · 2.5 | 2 | G2 – D6 | @×23 |
| 36 | Melody Of The Night No.12 | 120 | 3 | 0.5 | 4 · 4 · 4 | 2 | F2 – A#6 | @×3 |
| 37 | Melody Of The Night No.2 | 95 | 3 | 0.5 | 3.17 · 3.17 · 3.17 | 2 | D2 – A6 | 5<>×2, @×75 |
| 38 | Melody Of The Night No.3 | 85 | 3 | 0.5 | 2.83 · 2.83 · 2.83 | 2 | D2 – A#6 | @×42 |
| 39 | Melody Of The Night No.6 | 90 | 3 | 0.5 | 3 · 3 · 3 | 2 | E2 – C7 | 5<>×6, @×15 |
| 40 | Minh Yeu Nhau Di | 102 | 3 | 0.5 | 3.4 · 3.4 · 3.4 | 2 | D2 – E6 | @×133 |
| 41 | Mưa | 120 | 3 | 0.5 | 4 · 4 · 4 | 2 | F1 – C#7 | 5<>×32, ~×4, @×11 |
| 42 | Người yêu cũ | 104 | 3 | 0.5 | 3.47 · 3.47 · 3.47 | 2 | A2 – D7 | @×17 |
| 43 | Orange | 80 | 3 | 0.25 | 5.33 · 5.33 · 5.33 | 2 | A0 – D7 | 8<>×1, ~×16, @×48 |
| 44 | Passion | 125 | 3 | 0.5 | 4.17 · 4.17 · 4.17 | 2 | A1 – E6 | 5<>×85, 8<>×2, ~×4, @×6 |
| 45 | Proud Of You | 110 | 3 | 0.5 | 3.67 · 3.67 · 3.67 | 3 | F1 – D7 | 5<>×73, @×3 |
| 46 | Rainy Day | 88 | 3 | 0.5 | 2.93 · 2.93 · 2.93 | 2 | C#2 – F#5 | 5<>×56, @×8 |
| 47 | Requiem of Silence | 65 | 3 | 0.5 | 2.17 · 2.17 · 2.17 | 2 | A0 – G7 | 5<>×3, 8<>×1, ~×29, @×14 |
| 48 | Shape of You | 95 | 3 | 0.25 | 6.33 · 6.33 · 6.33 | 2 | F#3 – B5 | — |
| 49 | Sick Enough To Die | 122 | 3 | 0.5 | 4.07 · 4.07 · 4.07 | 3 | A1 – F#6 | 5<>×2, @×2 |
| 50 | Skilled Challenge | 75 | 5 | 0.25 | 5 · 5 · 5 · 5 · 5 | 3 | G1 – E7 | 5<>×2, @×7 |
| 51 | Somewhere | 88 | 3 | 0.25 | 5.87 · 5.87 · 5.87 | 2 | G#1 – G#6 | 6<>×16, 8<>×4, @×8 |
| 52 | Spectre | 150 | 3 | 0.5 | 5 · 5 · 5 | 2 | E2 – E7 | 5<>×108 |
| 53 | The 105th Day | 96 | 3 | 0.5 | 3.2 · 3.2 · 3.2 | 2 | G#2 – D#6 | 5<>×5 |
| 54 | The Ocean | 90 | 3 | 0.25 | 6 · 6 · 6 | 2 | A#2 – C6 | 5<>×20, @×35 |
| 55 | The Piano | 112 | 3 | 0.5 | 3.73 · 3.73 · 3.73 | 2 | C2 – A#6 | — |
| 56 | Toi Thay Hoa Vang Tren Co Xanh | 80 | 3 | 0.5 | 2.67 · 2.67 · 2.67 | 2 | D2 – D6 | 5<>×1, 8<>×1, @×2 |
| 57 | Virus | 90 | 3 | 0.25 | 6 · 6 · 6 | 2 | D#1 – E6 | 5<>×110 |
| 58 | Wedding Dress | 70 | 3 | 0.25 | 4.67 · 4.67 · 4.67 | 2 | F1 – F6 | 5<>×1, 8<>×2, @×14 |
| 59 | Windy Hill | 74 | 3 | 0.25 | 4.93 · 4.93 · 4.93 | 2 | D2 – F#6 | @×3 |
| 60 | Wings Of Piano | 168 | 3 | 0.5 | 5.6 · 5.6 · 5.6 | 3 | E1 – A7 | 5<>×16, 6<>×3, 8<>×1, ~×16, @×31 |
| 61 | 佛系少女 | 128 | 3 | 0.5 | 4.27 · 4.27 · 4.27 | 2 | C2 – D#6 | 5<>×3, 6<>×20, @×9 |
| 62 | 學貓叫 | 115 | 3 | 0.5 | 3.83 · 3.83 · 3.83 | 2 | A#1 – F#6 | — |

## Thống kê nhanh

| Chỉ số | Giá trị |
|---|---|
| Nhanh nhất | *Haloween Party*: 10.27 TPS (154 bpm) |
| Tiếp theo | *Haru Haru* 8.4 · *Freedom Dive* 7.33 · *Đừng như thói quen* 6.87 |
| Chậm nhất | *Beginner Challenge* (màn 3, 6): 1.67 TPS · *Requiem of Silence*: 2.17 TPS |
| bpm cao nhất / thấp nhất | *ANiMA* 183 / *Beginner Challenge* 50 |
| baseBeats | 0.5: 35 bài · 0.25: 25 bài · trộn cả hai: 2 bài (*Beginner/Master Challenge*) |
| Âm vực rộng nhất | *Requiem of Silence*, *Orange* (từ A0), *Freedom Dive*, *Fuego* (lên tới C8) |
