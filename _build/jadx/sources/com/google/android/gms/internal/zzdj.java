package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzdj {

    @Nullable
    private final zzdk zzajn;
    private final Map<String, zzdi> zzbee = new HashMap();

    public zzdj(@Nullable zzdk zzdkVar) {
        this.zzajn = zzdkVar;
    }

    public void zza(String str, zzdi zzdiVar) {
        this.zzbee.put(str, zzdiVar);
    }

    public void zza(String str, String str2, long j) {
        zzdg.zza(this.zzajn, this.zzbee.get(str2), j, str);
        this.zzbee.put(str, zzdg.zza(this.zzajn, j));
    }

    @Nullable
    public zzdk zzkf() {
        return this.zzajn;
    }
}
