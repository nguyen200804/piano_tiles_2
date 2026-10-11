package com.google.android.gms.auth.api.signin.internal;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zze {
    static int ef = 31;
    private int eg = 1;

    public int zzagc() {
        return this.eg;
    }

    public zze zzba(boolean z) {
        this.eg = (z ? 1 : 0) + (this.eg * ef);
        return this;
    }

    public zze zzq(Object obj) {
        this.eg = (obj == null ? 0 : obj.hashCode()) + (this.eg * ef);
        return this;
    }
}
