package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzlj {
    public zzlh zza(Context context, AdSizeParcel adSizeParcel, boolean z, boolean z2, @Nullable zzas zzasVar, VersionInfoParcel versionInfoParcel) {
        return zza(context, adSizeParcel, z, z2, zzasVar, versionInfoParcel, null, null, null);
    }

    public zzlh zza(Context context, AdSizeParcel adSizeParcel, boolean z, boolean z2, @Nullable zzas zzasVar, VersionInfoParcel versionInfoParcel, zzdk zzdkVar, com.google.android.gms.ads.internal.zzs zzsVar, com.google.android.gms.ads.internal.zzd zzdVar) {
        zzlk zzlkVar = new zzlk(zzll.zzb(context, adSizeParcel, z, z2, zzasVar, versionInfoParcel, zzdkVar, zzsVar, zzdVar));
        zzlkVar.setWebViewClient(com.google.android.gms.ads.internal.zzu.zzfs().zzb(zzlkVar, z2));
        zzlkVar.setWebChromeClient(com.google.android.gms.ads.internal.zzu.zzfs().zzk(zzlkVar));
        return zzlkVar;
    }
}
