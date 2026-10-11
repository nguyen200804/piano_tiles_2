package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.internal.zzju;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzic {

    public interface zza {
        void zzb(zzju zzjuVar);
    }

    public zzkj zza(Context context, com.google.android.gms.ads.internal.zza zzaVar, zzju.zza zzaVar2, zzas zzasVar, @Nullable zzlh zzlhVar, zzgj zzgjVar, zza zzaVar3, zzdk zzdkVar) {
        zzkj zziaVar;
        AdResponseParcel adResponseParcel = zzaVar2.zzciq;
        if (adResponseParcel.zzcby) {
            zziaVar = new zzif(context, zzaVar2, zzgjVar, zzaVar3, zzdkVar, zzlhVar);
        } else if (!adResponseParcel.zzauu) {
            zziaVar = adResponseParcel.zzcce ? new zzia(context, zzaVar2, zzlhVar, zzaVar3) : (zzdc.zzazs.get().booleanValue() && com.google.android.gms.common.util.zzs.zzavu() && !com.google.android.gms.common.util.zzs.zzavw() && zzlhVar != null && zzlhVar.zzdn().zzaus) ? new zzie(context, zzaVar2, zzlhVar, zzaVar3) : new zzid(context, zzaVar2, zzlhVar, zzaVar3);
        } else {
            if (!(zzaVar instanceof com.google.android.gms.ads.internal.zzq)) {
                String valueOf = String.valueOf(zzaVar != null ? zzaVar.getClass().getName() : "null");
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 65).append("Invalid NativeAdManager type. Found: ").append(valueOf).append("; Required: NativeAdManager.").toString());
            }
            zziaVar = new zzig(context, (com.google.android.gms.ads.internal.zzq) zzaVar, zzaVar2, zzasVar, zzaVar3);
        }
        String valueOf2 = String.valueOf(zziaVar.getClass().getName());
        zzkd.zzcv(valueOf2.length() != 0 ? "AdRenderer: ".concat(valueOf2) : new String("AdRenderer: "));
        zziaVar.zzpy();
        return zziaVar;
    }

    public zzkj zza(Context context, zzju.zza zzaVar, zzjf zzjfVar) {
        zzjl zzjlVar = new zzjl(context, zzaVar, zzjfVar);
        String valueOf = String.valueOf(zzjlVar.getClass().getName());
        zzkd.zzcv(valueOf.length() != 0 ? "AdRenderer: ".concat(valueOf) : new String("AdRenderer: "));
        zzjlVar.zzpy();
        return zzjlVar;
    }
}
