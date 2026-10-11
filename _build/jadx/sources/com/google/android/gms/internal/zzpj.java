package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzpj<O extends Api.ApiOptions> {
    private final Api<O> pN;
    private final O rP;

    public zzpj(Api<O> api, O o) {
        this.pN = api;
        this.rP = o;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzpj)) {
            return false;
        }
        zzpj zzpjVar = (zzpj) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.pN, zzpjVar.pN) && com.google.android.gms.common.internal.zzaa.equal(this.rP, zzpjVar.rP);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.pN, this.rP);
    }

    public Api.zzc<?> zzans() {
        return this.pN.zzans();
    }

    public String zzaon() {
        return this.pN.getName();
    }
}
