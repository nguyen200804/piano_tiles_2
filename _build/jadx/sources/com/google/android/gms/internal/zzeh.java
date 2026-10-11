package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.internal.zzec;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzeh extends zzec.zza {
    private final NativeContentAd.OnContentAdLoadedListener zzbhj;

    public zzeh(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
        this.zzbhj = onContentAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.zzec
    public void zza(zzdx zzdxVar) {
        this.zzbhj.onContentAdLoaded(zzb(zzdxVar));
    }

    zzdy zzb(zzdx zzdxVar) {
        return new zzdy(zzdxVar);
    }
}
