package com.google.android.gms.internal;

import android.support.annotation.Nullable;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzdg {
    @Nullable
    public static zzdi zza(@Nullable zzdk zzdkVar, long j) {
        if (zzdkVar == null) {
            return null;
        }
        return zzdkVar.zzc(j);
    }

    public static boolean zza(@Nullable zzdk zzdkVar, @Nullable zzdi zzdiVar, long j, String... strArr) {
        if (zzdkVar == null || zzdiVar == null) {
            return false;
        }
        return zzdkVar.zza(zzdiVar, j, strArr);
    }

    public static boolean zza(@Nullable zzdk zzdkVar, @Nullable zzdi zzdiVar, String... strArr) {
        if (zzdkVar == null || zzdiVar == null) {
            return false;
        }
        return zzdkVar.zza(zzdiVar, strArr);
    }

    @Nullable
    public static zzdi zzb(@Nullable zzdk zzdkVar) {
        if (zzdkVar == null) {
            return null;
        }
        return zzdkVar.zzkg();
    }
}
