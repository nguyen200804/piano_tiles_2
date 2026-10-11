package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.client.zzp;
import com.google.android.gms.internal.zzin;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzb extends zzp.zza {
    private final zza zzatk;

    public zzb(zza zzaVar) {
        this.zzatk = zzaVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzp
    public void onAdClicked() {
        this.zzatk.onAdClicked();
    }
}
