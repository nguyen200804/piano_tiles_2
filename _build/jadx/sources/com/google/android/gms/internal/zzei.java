package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.internal.zzed;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzei extends zzed.zza {
    private final NativeCustomTemplateAd.OnCustomClickListener zzbhk;

    public zzei(NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.zzbhk = onCustomClickListener;
    }

    @Override // com.google.android.gms.internal.zzed
    public void zza(zzdz zzdzVar, String str) {
        this.zzbhk.onCustomClick(new zzea(zzdzVar), str);
    }
}
