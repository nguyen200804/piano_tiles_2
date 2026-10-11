package com.google.android.gms.internal;

import android.app.Activity;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzhi;
import com.google.android.gms.internal.zzhj;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzhh extends com.google.android.gms.dynamic.zzg<zzhj> {
    public zzhh() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzg
    /* renamed from: zzap, reason: merged with bridge method [inline-methods] */
    public zzhj zzc(IBinder iBinder) {
        return zzhj.zza.zzar(iBinder);
    }

    public zzhi zzf(Activity activity) {
        try {
            return zzhi.zza.zzaq(zzcr(activity).zzn(com.google.android.gms.dynamic.zze.zzac(activity)));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not create remote AdOverlay.", e);
            return null;
        } catch (zzg.zza e2) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not create remote AdOverlay.", e2);
            return null;
        }
    }
}
