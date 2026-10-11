package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.internal.zzeb;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzeg extends zzeb.zza {
    private final NativeAppInstallAd.OnAppInstallAdLoadedListener zzbhi;

    public zzeg(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.zzbhi = onAppInstallAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.zzeb
    public void zza(zzdv zzdvVar) {
        this.zzbhi.onAppInstallAdLoaded(zzb(zzdvVar));
    }

    zzdw zzb(zzdv zzdvVar) {
        return new zzdw(zzdvVar);
    }
}
