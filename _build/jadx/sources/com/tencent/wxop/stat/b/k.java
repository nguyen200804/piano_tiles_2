package com.tencent.wxop.stat.b;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class k extends i {
    static final /* synthetic */ boolean ad;
    private static final byte[] cM;
    private static final byte[] cN;
    public final boolean ba;
    public final boolean bb;
    private final byte[] cO;
    public final boolean cP;
    private final byte[] cQ;
    private int cc;
    int cp;

    static {
        ad = !h.class.desiredAssertionStatus();
        cM = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
        cN = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
    }

    public k() {
        this.cI = null;
        this.ba = true;
        this.bb = true;
        this.cP = false;
        this.cQ = cM;
        this.cO = new byte[2];
        this.cp = 0;
        this.cc = this.bb ? 19 : -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final boolean a(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        byte b2;
        byte b3;
        int i7;
        byte b4;
        int i8;
        int i9;
        int i10 = 0;
        byte[] bArr2 = this.cQ;
        byte[] bArr3 = this.cI;
        int i11 = this.cc;
        int i12 = i + 0;
        switch (this.cp) {
            case 0:
                i2 = -1;
                i3 = 0;
                break;
            case 1:
                if (2 <= i12) {
                    int i13 = ((this.cO[0] & 255) << 16) | ((bArr[0] & 255) << 8) | (bArr[1] & 255);
                    this.cp = 0;
                    i2 = i13;
                    i3 = 2;
                    break;
                }
                i2 = -1;
                i3 = 0;
                break;
            case 2:
                if (i12 > 0) {
                    int i14 = ((this.cO[0] & 255) << 16) | ((this.cO[1] & 255) << 8) | (bArr[0] & 255);
                    this.cp = 0;
                    i2 = i14;
                    i3 = 1;
                    break;
                }
                i2 = -1;
                i3 = 0;
                break;
            default:
                i2 = -1;
                i3 = 0;
                break;
        }
        if (i2 != -1) {
            bArr3[0] = bArr2[(i2 >> 18) & 63];
            bArr3[1] = bArr2[(i2 >> 12) & 63];
            bArr3[2] = bArr2[(i2 >> 6) & 63];
            int i15 = 4;
            bArr3[3] = bArr2[i2 & 63];
            int i16 = i11 - 1;
            if (i16 == 0) {
                if (this.cP) {
                    i15 = 5;
                    bArr3[4] = 13;
                }
                i5 = i15 + 1;
                bArr3[i15] = 10;
                i4 = 19;
            } else {
                i4 = i16;
                i5 = 4;
            }
        } else {
            i4 = i11;
            i5 = 0;
        }
        while (i3 + 3 <= i12) {
            int i17 = ((bArr[i3] & 255) << 16) | ((bArr[i3 + 1] & 255) << 8) | (bArr[i3 + 2] & 255);
            bArr3[i5] = bArr2[(i17 >> 18) & 63];
            bArr3[i5 + 1] = bArr2[(i17 >> 12) & 63];
            bArr3[i5 + 2] = bArr2[(i17 >> 6) & 63];
            bArr3[i5 + 3] = bArr2[i17 & 63];
            int i18 = i3 + 3;
            int i19 = i5 + 4;
            int i20 = i4 - 1;
            if (i20 == 0) {
                if (this.cP) {
                    i9 = i19 + 1;
                    bArr3[i19] = 13;
                } else {
                    i9 = i19;
                }
                i5 = i9 + 1;
                bArr3[i9] = 10;
                i3 = i18;
                i4 = 19;
            } else {
                i4 = i20;
                i5 = i19;
                i3 = i18;
            }
        }
        if (i3 - this.cp == i12 - 1) {
            if (this.cp > 0) {
                b4 = this.cO[0];
                i8 = 1;
            } else {
                b4 = bArr[i3];
                i3++;
                i8 = 0;
            }
            int i21 = (b4 & 255) << 4;
            this.cp -= i8;
            int i22 = i5 + 1;
            bArr3[i5] = bArr2[(i21 >> 6) & 63];
            int i23 = i22 + 1;
            bArr3[i22] = bArr2[i21 & 63];
            if (this.ba) {
                int i24 = i23 + 1;
                bArr3[i23] = 61;
                i23 = i24 + 1;
                bArr3[i24] = 61;
            }
            if (this.bb) {
                if (this.cP) {
                    bArr3[i23] = 13;
                    i23++;
                }
                bArr3[i23] = 10;
                i23++;
            }
            i5 = i23;
        } else if (i3 - this.cp == i12 - 2) {
            if (this.cp > 1) {
                b2 = this.cO[0];
                i10 = 1;
            } else {
                b2 = bArr[i3];
                i3++;
            }
            int i25 = (b2 & 255) << 10;
            if (this.cp > 0) {
                b3 = this.cO[i10];
                i10++;
            } else {
                b3 = bArr[i3];
                i3++;
            }
            int i26 = ((b3 & 255) << 2) | i25;
            this.cp -= i10;
            int i27 = i5 + 1;
            bArr3[i5] = bArr2[(i26 >> 12) & 63];
            int i28 = i27 + 1;
            bArr3[i27] = bArr2[(i26 >> 6) & 63];
            int i29 = i28 + 1;
            bArr3[i28] = bArr2[i26 & 63];
            if (this.ba) {
                i7 = i29 + 1;
                bArr3[i29] = 61;
            } else {
                i7 = i29;
            }
            if (this.bb) {
                if (this.cP) {
                    bArr3[i7] = 13;
                    i7++;
                }
                bArr3[i7] = 10;
                i7++;
            }
            i5 = i7;
        } else if (this.bb && i5 > 0 && i4 != 19) {
            if (this.cP) {
                i6 = i5 + 1;
                bArr3[i5] = 13;
            } else {
                i6 = i5;
            }
            i5 = i6 + 1;
            bArr3[i6] = 10;
        }
        if (!ad && this.cp != 0) {
            throw new AssertionError();
        }
        if (!ad && i3 != i12) {
            throw new AssertionError();
        }
        this.g = i5;
        this.cc = i4;
        return true;
    }
}
