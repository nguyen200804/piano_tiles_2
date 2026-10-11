package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.internal.zzdn;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzdl extends zzdn.zza {
    private final com.google.android.gms.ads.internal.zzh zzbek;

    @Nullable
    private final String zzbel;
    private final String zzbem;

    public zzdl(com.google.android.gms.ads.internal.zzh zzhVar, @Nullable String str, String str2) {
        this.zzbek = zzhVar;
        this.zzbel = str;
        this.zzbem = str2;
    }

    @Override // com.google.android.gms.internal.zzdn
    public String getContent() {
        return this.zzbem;
    }

    @Override // com.google.android.gms.internal.zzdn
    public void recordClick() {
        this.zzbek.zzeh();
    }

    @Override // com.google.android.gms.internal.zzdn
    public void recordImpression() {
        this.zzbek.zzei();
    }

    @Override // com.google.android.gms.internal.zzdn
    public void zzi(@Nullable com.google.android.gms.dynamic.zzd zzdVar) {
        if (zzdVar == null) {
            return;
        }
        this.zzbek.zzc((View) com.google.android.gms.dynamic.zze.zzad(zzdVar));
    }

    @Override // com.google.android.gms.internal.zzdn
    public String zzkk() {
        return this.zzbel;
    }
}
