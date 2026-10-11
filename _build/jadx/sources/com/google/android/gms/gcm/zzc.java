package com.google.android.gms.gcm;

import android.os.Bundle;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzc {
    public static final zzc ZC = new zzc(0, 30, 3600);
    public static final zzc ZD = new zzc(1, 30, 3600);
    private final int ZE;
    private final int ZF;
    private final int ZG;

    private zzc(int i, int i2, int i3) {
        this.ZE = i;
        this.ZF = i2;
        this.ZG = i3;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return zzcVar.ZE == this.ZE && zzcVar.ZF == this.ZF && zzcVar.ZG == this.ZG;
    }

    public int hashCode() {
        return (((((this.ZE + 1) ^ 1000003) * 1000003) ^ this.ZF) * 1000003) ^ this.ZG;
    }

    public String toString() {
        int i = this.ZE;
        int i2 = this.ZF;
        return new StringBuilder(74).append("policy=").append(i).append(" initial_backoff=").append(i2).append(" maximum_backoff=").append(this.ZG).toString();
    }

    public Bundle zzai(Bundle bundle) {
        bundle.putInt("retry_policy", this.ZE);
        bundle.putInt("initial_backoff_seconds", this.ZF);
        bundle.putInt("maximum_backoff_seconds", this.ZG);
        return bundle;
    }

    public int zzblj() {
        return this.ZE;
    }

    public int zzblk() {
        return this.ZF;
    }

    public int zzbll() {
        return this.ZG;
    }
}
