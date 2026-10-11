package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzapv {
    protected volatile int bjG = -1;

    public static final <T extends zzapv> T zza(T t, byte[] bArr) throws zzapu {
        return (T) zzb(t, bArr, 0, bArr.length);
    }

    public static final void zza(zzapv zzapvVar, byte[] bArr, int i, int i2) {
        try {
            zzapo zzc = zzapo.zzc(bArr, i, i2);
            zzapvVar.zza(zzc);
            zzc.az();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public static final <T extends zzapv> T zzb(T t, byte[] bArr, int i, int i2) throws zzapu {
        try {
            zzapn zzb = zzapn.zzb(bArr, i, i2);
            t.zzb(zzb);
            zzb.zzafo(0);
            return t;
        } catch (zzapu e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public static final byte[] zzf(zzapv zzapvVar) {
        byte[] bArr = new byte[zzapvVar.aM()];
        zza(zzapvVar, bArr, 0, bArr.length);
        return bArr;
    }

    @Override // 
    /* renamed from: aB, reason: merged with bridge method [inline-methods] */
    public zzapv clone() throws CloneNotSupportedException {
        return (zzapv) super.clone();
    }

    public int aL() {
        if (this.bjG < 0) {
            aM();
        }
        return this.bjG;
    }

    public int aM() {
        int zzx = zzx();
        this.bjG = zzx;
        return zzx;
    }

    public String toString() {
        return zzapw.zzg(this);
    }

    public void zza(zzapo zzapoVar) throws IOException {
    }

    public abstract zzapv zzb(zzapn zzapnVar) throws IOException;

    protected int zzx() {
        return 0;
    }
}
