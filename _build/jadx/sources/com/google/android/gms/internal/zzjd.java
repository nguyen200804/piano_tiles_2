package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.reward.client.zza;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzjd extends zza.AbstractBinderC0116zza {
    private final String zzcfz;
    private final int zzche;

    public zzjd(String str, int i) {
        this.zzcfz = str;
        this.zzche = i;
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zza
    public int getAmount() {
        return this.zzche;
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zza
    public String getType() {
        return this.zzcfz;
    }
}
