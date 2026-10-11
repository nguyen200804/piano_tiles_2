package com.mnt.impl;

import com.facebook.ads.AudienceNetworkActivity;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    private static byte[] f3999a = {65, 66, 69, 78, 50, 48, 49, 50, 48, 57, 51, 48, 49, 56, 51, 48};

    /* renamed from: b, reason: collision with root package name */
    private static final byte[] f4000b = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9};

    static {
        byte[] bArr = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    }

    private static byte[] a(byte[] bArr, byte b2) {
        try {
            byte[] bArr2 = new byte[bArr.length];
            for (int i = 0; i < bArr.length; i++) {
                bArr2[i] = (byte) (bArr[i] ^ b2);
            }
            return bArr2;
        } catch (Exception e) {
            return null;
        }
    }

    private static int a(byte[] bArr, byte[] bArr2, int i) {
        if (bArr[2] == 61) {
            bArr2[i] = (byte) ((((f4000b[bArr[0]] & 255) << 18) | ((f4000b[bArr[1]] & 255) << 12)) >>> 16);
            return 1;
        }
        if (bArr[3] == 61) {
            int i2 = ((f4000b[bArr[1]] & 255) << 12) | ((f4000b[bArr[0]] & 255) << 18) | ((f4000b[bArr[2]] & 255) << 6);
            bArr2[i] = (byte) (i2 >>> 16);
            bArr2[i + 1] = (byte) (i2 >>> 8);
            return 2;
        }
        try {
            int i3 = ((f4000b[bArr[0]] & 255) << 18) | ((f4000b[bArr[1]] & 255) << 12) | ((f4000b[bArr[2]] & 255) << 6) | (f4000b[bArr[3]] & 255);
            bArr2[i] = (byte) (i3 >> 16);
            bArr2[i + 1] = (byte) (i3 >> 8);
            bArr2[i + 2] = (byte) i3;
            return 3;
        } catch (Exception e) {
            return -1;
        }
    }

    public static String a(String str) {
        byte[] bArr;
        int i;
        int i2;
        int i3 = 0;
        try {
            byte[] bytes = str.getBytes("iso-8859-1");
            int length = bytes.length;
            byte[] bArr2 = new byte[(length * 3) / 4];
            byte[] bArr3 = new byte[4];
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                if (i4 < length) {
                    byte b2 = (byte) (bytes[i4] & Byte.MAX_VALUE);
                    byte b3 = f4000b[b2];
                    if (b3 < -5) {
                        bArr = null;
                        break;
                    }
                    if (b3 >= -1) {
                        i = i5 + 1;
                        bArr3[i5] = b2;
                        if (i > 3) {
                            int a2 = a(bArr3, bArr2, i6) + i6;
                            if (b2 == 61) {
                                i6 = a2;
                                break;
                            }
                            i2 = a2;
                            i = 0;
                        } else {
                            i2 = i6;
                        }
                    } else {
                        i = i5;
                        i2 = i6;
                    }
                    i4++;
                    i6 = i2;
                    i5 = i;
                } else {
                    break;
                }
            }
            bArr = new byte[i6];
            System.arraycopy(bArr2, 0, bArr, 0, i6);
            byte[] bArr4 = f3999a;
            byte[] bArr5 = bArr;
            while (i3 < bArr4.length) {
                byte[] a3 = a(bArr5, bArr4[i3]);
                i3++;
                bArr5 = a3;
            }
            return new String(bArr5, AudienceNetworkActivity.WEBVIEW_ENCODING);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
