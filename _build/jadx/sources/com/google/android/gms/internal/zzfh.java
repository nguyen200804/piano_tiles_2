package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzfh {
    private Context mContext;
    private final com.google.android.gms.ads.internal.zzd zzajv;
    private final zzgj zzajz;
    private final VersionInfoParcel zzalo;

    zzfh(Context context, zzgj zzgjVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zzd zzdVar) {
        this.mContext = context;
        this.zzajz = zzgjVar;
        this.zzalo = versionInfoParcel;
        this.zzajv = zzdVar;
    }

    public Context getApplicationContext() {
        return this.mContext.getApplicationContext();
    }

    public com.google.android.gms.ads.internal.zzl zzbc(String str) {
        return new com.google.android.gms.ads.internal.zzl(this.mContext, new AdSizeParcel(), str, this.zzajz, this.zzalo, this.zzajv);
    }

    public com.google.android.gms.ads.internal.zzl zzbd(String str) {
        return new com.google.android.gms.ads.internal.zzl(this.mContext.getApplicationContext(), new AdSizeParcel(), str, this.zzajz, this.zzalo, this.zzajv);
    }

    public zzfh zzln() {
        return new zzfh(getApplicationContext(), this.zzajz, this.zzalo, this.zzajv);
    }
}
