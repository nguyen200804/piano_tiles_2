package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.ads.internal.request.zzd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzdc;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzkj;
import com.google.android.gms.internal.zzla;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzc {

    public interface zza {
        void zzb(AdResponseParcel adResponseParcel);
    }

    interface zzb {
        boolean zza(VersionInfoParcel versionInfoParcel);
    }

    public static zzkj zza(final Context context, VersionInfoParcel versionInfoParcel, zzla<AdRequestInfoParcel> zzlaVar, zza zzaVar) {
        return zza(context, versionInfoParcel, zzlaVar, zzaVar, new zzb() { // from class: com.google.android.gms.ads.internal.request.zzc.1
            @Override // com.google.android.gms.ads.internal.request.zzc.zzb
            public boolean zza(VersionInfoParcel versionInfoParcel2) {
                return versionInfoParcel2.zzcnm || (com.google.android.gms.common.util.zzi.zzcl(context) && !zzdc.zzayz.get().booleanValue());
            }
        });
    }

    static zzkj zza(Context context, VersionInfoParcel versionInfoParcel, zzla<AdRequestInfoParcel> zzlaVar, zza zzaVar, zzb zzbVar) {
        return zzbVar.zza(versionInfoParcel) ? zza(context, zzlaVar, zzaVar) : zzb(context, versionInfoParcel, zzlaVar, zzaVar);
    }

    private static zzkj zza(Context context, zzla<AdRequestInfoParcel> zzlaVar, zza zzaVar) {
        zzkd.zzcv("Fetching ad response from local ad request service.");
        zzd.zza zzaVar2 = new zzd.zza(context, zzlaVar, zzaVar);
        return zzaVar2;
    }

    private static zzkj zzb(Context context, VersionInfoParcel versionInfoParcel, zzla<AdRequestInfoParcel> zzlaVar, zza zzaVar) {
        zzkd.zzcv("Fetching ad response from remote ad request service.");
        if (com.google.android.gms.ads.internal.client.zzm.zziw().zzar(context)) {
            return new zzd.zzb(context, versionInfoParcel, zzlaVar, zzaVar);
        }
        zzkd.zzcx("Failed to connect to remote ad request service.");
        return null;
    }
}
