package com.google.android.gms.internal;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzaoq {
    private final byte[] bhE = new byte[256];
    private int bhF;
    private int bhG;

    public zzaoq(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.bhE[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            i2 = (i2 + this.bhE[i3] + bArr[i3 % bArr.length]) & 255;
            byte b2 = this.bhE[i3];
            this.bhE[i3] = this.bhE[i2];
            this.bhE[i2] = b2;
        }
        this.bhF = 0;
        this.bhG = 0;
    }

    public void zzax(byte[] bArr) {
        int i = this.bhF;
        int i2 = this.bhG;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & 255;
            i2 = (i2 + this.bhE[i]) & 255;
            byte b2 = this.bhE[i];
            this.bhE[i] = this.bhE[i2];
            this.bhE[i2] = b2;
            bArr[i3] = (byte) (bArr[i3] ^ this.bhE[(this.bhE[i] + this.bhE[i2]) & 255]);
        }
        this.bhF = i;
        this.bhG = i2;
    }
}
