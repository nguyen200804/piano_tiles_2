package com.google.android.gms.internal;

import android.content.Context;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzkq extends zzkc {
    private final String zzae;
    private final com.google.android.gms.ads.internal.util.client.zzc zzcmr;

    public zzkq(Context context, String str, String str2) {
        this(str2, com.google.android.gms.ads.internal.zzu.zzfq().zzg(context, str));
    }

    public zzkq(String str, String str2) {
        this.zzcmr = new com.google.android.gms.ads.internal.util.client.zzc(str2);
        this.zzae = str;
    }

    @Override // com.google.android.gms.internal.zzkc
    public void onStop() {
    }

    @Override // com.google.android.gms.internal.zzkc
    public void zzew() {
        this.zzcmr.zzcr(this.zzae);
    }
}
