package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzdt;
import com.google.android.gms.internal.zzdu;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzef extends com.google.android.gms.dynamic.zzg<zzdu> {
    public zzef() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzg
    /* renamed from: zzai, reason: merged with bridge method [inline-methods] */
    public zzdu zzc(IBinder iBinder) {
        return zzdu.zza.zzaa(iBinder);
    }

    public zzdt zzb(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            return zzdt.zza.zzz(zzcr(context).zza(com.google.android.gms.dynamic.zze.zzac(context), com.google.android.gms.dynamic.zze.zzac(frameLayout), com.google.android.gms.dynamic.zze.zzac(frameLayout2), com.google.android.gms.common.internal.zze.xM));
        } catch (RemoteException | zzg.zza e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }
}
