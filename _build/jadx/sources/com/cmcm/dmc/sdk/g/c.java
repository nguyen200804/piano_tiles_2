package com.cmcm.dmc.sdk.g;

import com.applovin.sdk.AppLovinTargetingData;
import java.util.Arrays;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    public static class a {

        /* renamed from: b, reason: collision with root package name */
        private final byte[] f769b;
        private final int c;
        private final boolean d;
        private final boolean e;
        private static final char[] f = {'0', 'K', 'a', 'j', 'D', '7', 'A', 'Z', 'c', 'F', '2', 'Q', 'n', 'P', 'r', '5', AppLovinTargetingData.GENDER_FEMALE, 'w', 'i', 'H', 'R', 'N', 'y', 'g', AppLovinTargetingData.GENDER_MALE, 'u', 'p', 'U', 'T', 'I', 'X', 'x', '6', '9', 'B', 'W', 'b', '-', 'h', 'M', 'C', 'G', 'J', 'o', '_', 'V', '8', 'E', 's', 'k', 'z', '1', 'Y', 'd', 'v', 'L', '3', '4', 'l', 'e', 't', 'q', 'S', 'O'};
        private static final char[] g = f;

        /* renamed from: a, reason: collision with root package name */
        static final a f768a = new a(false, null, -1, true);

        private a(boolean z, byte[] bArr, int i, boolean z2) {
            this.d = z;
            this.f769b = bArr;
            this.c = i;
            this.e = z2;
        }

        private int a(int i) {
            int i2;
            if (this.e) {
                i2 = ((i + 2) / 3) * 4;
            } else {
                int i3 = i % 3;
                i2 = (i3 == 0 ? 0 : i3 + 1) + ((i / 3) * 4);
            }
            return this.c > 0 ? i2 + (((i2 - 1) / this.c) * this.f769b.length) : i2;
        }

        private int a(byte[] bArr, int i, int i2, byte[] bArr2) {
            int i3;
            char[] cArr = this.d ? g : f;
            int i4 = ((i2 - i) / 3) * 3;
            int i5 = i + i4;
            if (this.c > 0 && i4 > (this.c / 4) * 3) {
                i4 = (this.c / 4) * 3;
            }
            int i6 = 0;
            int i7 = i;
            while (i7 < i5) {
                int min = Math.min(i7 + i4, i5);
                int i8 = i6;
                int i9 = i7;
                while (i9 < min) {
                    int i10 = i9 + 1;
                    int i11 = i10 + 1;
                    int i12 = ((bArr[i10] & 255) << 8) | ((bArr[i9] & 255) << 16);
                    i9 = i11 + 1;
                    int i13 = i12 | (bArr[i11] & 255);
                    int i14 = i8 + 1;
                    bArr2[i8] = (byte) cArr[(i13 >>> 18) & 63];
                    int i15 = i14 + 1;
                    bArr2[i14] = (byte) cArr[(i13 >>> 12) & 63];
                    int i16 = i15 + 1;
                    bArr2[i15] = (byte) cArr[(i13 >>> 6) & 63];
                    i8 = i16 + 1;
                    bArr2[i16] = (byte) cArr[i13 & 63];
                }
                int i17 = ((min - i7) / 3) * 4;
                i6 += i17;
                if (i17 == this.c && min < i2) {
                    byte[] bArr3 = this.f769b;
                    int length = bArr3.length;
                    int i18 = 0;
                    while (i18 < length) {
                        bArr2[i6] = bArr3[i18];
                        i18++;
                        i6++;
                    }
                }
                i7 = min;
            }
            if (i7 >= i2) {
                return i6;
            }
            int i19 = i7 + 1;
            int i20 = bArr[i7] & 255;
            int i21 = i6 + 1;
            bArr2[i6] = (byte) cArr[i20 >> 2];
            if (i19 == i2) {
                i3 = i21 + 1;
                bArr2[i21] = (byte) cArr[(i20 << 4) & 63];
                if (this.e) {
                    int i22 = i3 + 1;
                    bArr2[i3] = 61;
                    int i23 = i22 + 1;
                    bArr2[i22] = 61;
                    return i23;
                }
            } else {
                int i24 = i19 + 1;
                int i25 = bArr[i19] & 255;
                int i26 = i21 + 1;
                bArr2[i21] = (byte) cArr[((i20 << 4) & 63) | (i25 >> 4)];
                i3 = i26 + 1;
                bArr2[i26] = (byte) cArr[(i25 << 2) & 63];
                if (this.e) {
                    int i27 = i3 + 1;
                    bArr2[i3] = 61;
                    return i27;
                }
            }
            return i3;
        }

        public byte[] a(byte[] bArr) {
            byte[] bArr2 = new byte[a(bArr.length)];
            int a2 = a(bArr, 0, bArr.length, bArr2);
            return a2 != bArr2.length ? Arrays.copyOf(bArr2, a2) : bArr2;
        }

        public String b(byte[] bArr) {
            byte[] a2 = a(bArr);
            return new String(a2, 0, 0, a2.length);
        }
    }

    public static a a() {
        return a.f768a;
    }
}
