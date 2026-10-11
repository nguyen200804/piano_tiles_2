package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Api;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzvv implements Api.ApiOptions.Optional {
    public static final zzvv atR = new zza().zzbzt();
    private final boolean atS;
    private final boolean atT;
    private final Long atU;
    private final Long atV;
    private final boolean dO;
    private final boolean dQ;
    private final String dR;
    private final String dS;

    public static final class zza {
        /* JADX WARN: Multi-variable type inference failed */
        public zzvv zzbzt() {
            boolean z = false;
            return new zzvv(z, z, null, z, 0 == true ? 1 : 0, z, 0 == true ? 1 : 0, 0 == true ? 1 : 0);
        }
    }

    private zzvv(boolean z, boolean z2, String str, boolean z3, String str2, boolean z4, Long l, Long l2) {
        this.atS = z;
        this.dO = z2;
        this.dR = str;
        this.dQ = z3;
        this.atT = z4;
        this.dS = str2;
        this.atU = l;
        this.atV = l2;
    }

    public boolean zzafr() {
        return this.dO;
    }

    public boolean zzaft() {
        return this.dQ;
    }

    public String zzafu() {
        return this.dR;
    }

    @Nullable
    public String zzafv() {
        return this.dS;
    }

    public boolean zzbzp() {
        return this.atS;
    }

    public boolean zzbzq() {
        return this.atT;
    }

    @Nullable
    public Long zzbzr() {
        return this.atU;
    }

    @Nullable
    public Long zzbzs() {
        return this.atV;
    }
}
