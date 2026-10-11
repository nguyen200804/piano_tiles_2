package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.flags.impl.zza;
import com.google.android.gms.internal.zzty;

@DynamiteApi
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FlagProviderImpl extends zzty.zza {
    private boolean zzamt = false;
    private SharedPreferences zzaxu;

    @Override // com.google.android.gms.internal.zzty
    public boolean getBooleanFlagValue(String str, boolean z, int i) {
        return !this.zzamt ? z : zza.C0143zza.zza(this.zzaxu, str, Boolean.valueOf(z)).booleanValue();
    }

    @Override // com.google.android.gms.internal.zzty
    public int getIntFlagValue(String str, int i, int i2) {
        return !this.zzamt ? i : zza.zzb.zza(this.zzaxu, str, Integer.valueOf(i)).intValue();
    }

    @Override // com.google.android.gms.internal.zzty
    public long getLongFlagValue(String str, long j, int i) {
        return !this.zzamt ? j : zza.zzc.zza(this.zzaxu, str, Long.valueOf(j)).longValue();
    }

    @Override // com.google.android.gms.internal.zzty
    public String getStringFlagValue(String str, String str2, int i) {
        return !this.zzamt ? str2 : zza.zzd.zza(this.zzaxu, str, str2);
    }

    @Override // com.google.android.gms.internal.zzty
    public void init(zzd zzdVar) {
        Context context = (Context) zze.zzad(zzdVar);
        if (this.zzamt) {
            return;
        }
        try {
            this.zzaxu = zzb.zzn(context.createPackageContext("com.google.android.gms", 0));
            this.zzamt = true;
        } catch (PackageManager.NameNotFoundException e) {
        }
    }
}
