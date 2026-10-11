package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.internal.zzee;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzej extends zzee.zza {
    private final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener zzbhl;

    public zzej(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener) {
        this.zzbhl = onCustomTemplateAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.zzee
    public void zza(zzdz zzdzVar) {
        this.zzbhl.onCustomTemplateAdLoaded(new zzea(zzdzVar));
    }
}
