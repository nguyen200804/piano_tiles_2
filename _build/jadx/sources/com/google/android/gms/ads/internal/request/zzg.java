package com.google.android.gms.ads.internal.request;

import com.google.android.gms.ads.internal.request.zzc;
import com.google.android.gms.ads.internal.request.zzl;
import com.google.android.gms.internal.zzin;
import java.lang.ref.WeakReference;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzg extends zzl.zza {
    private final WeakReference<zzc.zza> zzcbw;

    public zzg(zzc.zza zzaVar) {
        this.zzcbw = new WeakReference<>(zzaVar);
    }

    @Override // com.google.android.gms.ads.internal.request.zzl
    public void zzb(AdResponseParcel adResponseParcel) {
        zzc.zza zzaVar = this.zzcbw.get();
        if (zzaVar != null) {
            zzaVar.zzb(adResponseParcel);
        }
    }
}
