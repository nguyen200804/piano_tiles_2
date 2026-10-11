package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzca;
import com.google.android.gms.internal.zzcb;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzbz extends com.google.android.gms.dynamic.zzg<zzcb> {
    private static final zzbz zzaiu = new zzbz();

    private zzbz() {
        super("com.google.android.gms.ads.adshield.AdShieldCreatorImpl");
    }

    public static zzca zzb(String str, Context context, boolean z) {
        zzca zzc;
        return (com.google.android.gms.common.zzc.zzang().isGooglePlayServicesAvailable(context) != 0 || (zzc = zzaiu.zzc(str, context, z)) == null) ? new zzby(str, context, z) : zzc;
    }

    private zzca zzc(String str, Context context, boolean z) {
        com.google.android.gms.dynamic.zzd zzac = com.google.android.gms.dynamic.zze.zzac(context);
        try {
            return zzca.zza.zzd(z ? zzcr(context).zza(str, zzac) : zzcr(context).zzb(str, zzac));
        } catch (RemoteException | zzg.zza e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzg
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public zzcb zzc(IBinder iBinder) {
        return zzcb.zza.zze(iBinder);
    }
}
