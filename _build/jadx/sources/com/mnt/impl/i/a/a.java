package com.mnt.impl.i.a;

import com.mnt.impl.e;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final byte[] f4055a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: b, reason: collision with root package name */
    private static final byte[] f4056b = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9};

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] a(byte[] r5, int r6, int r7, byte[] r8, int r9) {
        /*
            r4 = 61
            r0 = 0
            if (r7 <= 0) goto L28
            r1 = r5[r6]
            int r1 = r1 << 24
            int r1 = r1 >>> 8
            r2 = r1
        Lc:
            r1 = 1
            if (r7 <= r1) goto L2a
            int r1 = r6 + 1
            r1 = r5[r1]
            int r1 = r1 << 24
            int r1 = r1 >>> 16
        L17:
            r1 = r1 | r2
            r2 = 2
            if (r7 <= r2) goto L23
            int r0 = r6 + 2
            r0 = r5[r0]
            int r0 = r0 << 24
            int r0 = r0 >>> 24
        L23:
            r0 = r0 | r1
            switch(r7) {
                case 1: goto L7c;
                case 2: goto L57;
                case 3: goto L2c;
                default: goto L27;
            }
        L27:
            return r8
        L28:
            r2 = r0
            goto Lc
        L2a:
            r1 = r0
            goto L17
        L2c:
            byte[] r1 = com.mnt.impl.i.a.a.f4055a
            int r2 = r0 >>> 18
            r1 = r1[r2]
            r8[r9] = r1
            int r1 = r9 + 1
            byte[] r2 = com.mnt.impl.i.a.a.f4055a
            int r3 = r0 >>> 12
            r3 = r3 & 63
            r2 = r2[r3]
            r8[r1] = r2
            int r1 = r9 + 2
            byte[] r2 = com.mnt.impl.i.a.a.f4055a
            int r3 = r0 >>> 6
            r3 = r3 & 63
            r2 = r2[r3]
            r8[r1] = r2
            int r1 = r9 + 3
            byte[] r2 = com.mnt.impl.i.a.a.f4055a
            r0 = r0 & 63
            r0 = r2[r0]
            r8[r1] = r0
            goto L27
        L57:
            byte[] r1 = com.mnt.impl.i.a.a.f4055a
            int r2 = r0 >>> 18
            r1 = r1[r2]
            r8[r9] = r1
            int r1 = r9 + 1
            byte[] r2 = com.mnt.impl.i.a.a.f4055a
            int r3 = r0 >>> 12
            r3 = r3 & 63
            r2 = r2[r3]
            r8[r1] = r2
            int r1 = r9 + 2
            byte[] r2 = com.mnt.impl.i.a.a.f4055a
            int r0 = r0 >>> 6
            r0 = r0 & 63
            r0 = r2[r0]
            r8[r1] = r0
            int r0 = r9 + 3
            r8[r0] = r4
            goto L27
        L7c:
            byte[] r1 = com.mnt.impl.i.a.a.f4055a
            int r2 = r0 >>> 18
            r1 = r1[r2]
            r8[r9] = r1
            int r1 = r9 + 1
            byte[] r2 = com.mnt.impl.i.a.a.f4055a
            int r0 = r0 >>> 12
            r0 = r0 & 63
            r0 = r2[r0]
            r8[r1] = r0
            int r0 = r9 + 2
            r8[r0] = r4
            int r0 = r9 + 3
            r8[r0] = r4
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mnt.impl.i.a.a.a(byte[], int, int, byte[], int):byte[]");
    }

    private static int a(byte[] bArr, byte[] bArr2, int i) {
        if (bArr[2] == 61) {
            bArr2[i] = (byte) ((((f4056b[bArr[0]] & 255) << 18) | ((f4056b[bArr[1]] & 255) << 12)) >>> 16);
            return 1;
        }
        if (bArr[3] == 61) {
            int i2 = ((f4056b[bArr[1]] & 255) << 12) | ((f4056b[bArr[0]] & 255) << 18) | ((f4056b[bArr[2]] & 255) << 6);
            bArr2[i] = (byte) (i2 >>> 16);
            bArr2[i + 1] = (byte) (i2 >>> 8);
            return 2;
        }
        try {
            int i3 = ((f4056b[bArr[0]] & 255) << 18) | ((f4056b[bArr[1]] & 255) << 12) | ((f4056b[bArr[2]] & 255) << 6) | (f4056b[bArr[3]] & 255);
            bArr2[i] = (byte) (i3 >> 16);
            bArr2[i + 1] = (byte) (i3 >> 8);
            bArr2[i + 2] = (byte) i3;
            return 3;
        } catch (Exception e) {
            return -1;
        }
    }

    public static byte[] a(String str) {
        int i;
        int i2;
        int i3;
        byte[] bytes = str.getBytes(e.aM);
        int length = bytes.length;
        byte[] bArr = new byte[(length * 3) / 4];
        byte[] bArr2 = new byte[4];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i4 >= length) {
                i = i6;
                break;
            }
            byte b2 = (byte) (bytes[i4] & Byte.MAX_VALUE);
            byte b3 = f4056b[b2];
            if (b3 < -5) {
                return null;
            }
            if (b3 >= -1) {
                i2 = i5 + 1;
                bArr2[i5] = b2;
                if (i2 > 3) {
                    i = a(bArr2, bArr, i6) + i6;
                    if (b2 == 61) {
                        break;
                    }
                    i3 = i;
                    i2 = 0;
                } else {
                    i3 = i6;
                }
            } else {
                i2 = i5;
                i3 = i6;
            }
            i4++;
            i6 = i3;
            i5 = i2;
        }
        byte[] bArr3 = new byte[i];
        System.arraycopy(bArr, 0, bArr3, 0, i);
        return bArr3;
    }

    public static String a(byte[] bArr) {
        int length = bArr.length;
        int i = (length * 4) / 3;
        byte[] bArr2 = new byte[(length % 3 > 0 ? 4 : 0) + i + (i / 76)];
        int i2 = length - 2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i5 < i2) {
            a(bArr, i5 + 0, 3, bArr2, i4);
            i3 += 4;
            if (i3 == 76) {
                bArr2[i4 + 4] = 10;
                i4++;
                i3 = 0;
            }
            i5 += 3;
            i4 += 4;
        }
        if (i5 < length) {
            a(bArr, i5 + 0, length - i5, bArr2, i4);
            i4 += 4;
        }
        return new String(bArr2, 0, i4, e.aL);
    }
}
