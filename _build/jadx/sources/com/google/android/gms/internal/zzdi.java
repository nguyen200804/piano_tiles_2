package com.google.android.gms.internal;

import android.support.annotation.Nullable;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzdi {
    private final long zzbeb;

    @Nullable
    private final String zzbec;

    @Nullable
    private final zzdi zzbed;

    public zzdi(long j, @Nullable String str, @Nullable zzdi zzdiVar) {
        this.zzbeb = j;
        this.zzbec = str;
        this.zzbed = zzdiVar;
    }

    long getTime() {
        return this.zzbeb;
    }

    String zzkd() {
        return this.zzbec;
    }

    @Nullable
    zzdi zzke() {
        return this.zzbed;
    }
}
