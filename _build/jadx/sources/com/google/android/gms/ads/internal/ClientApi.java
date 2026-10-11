package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Keep;
import android.support.annotation.Nullable;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.zzx;
import com.google.android.gms.ads.internal.client.zzz;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.zzdc;
import com.google.android.gms.internal.zzdt;
import com.google.android.gms.internal.zzfn;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzhi;
import com.google.android.gms.internal.zzhp;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzje;

@Keep
@DynamiteApi
@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ClientApi extends zzx.zza {
    @Override // com.google.android.gms.ads.internal.client.zzx
    public com.google.android.gms.ads.internal.client.zzs createAdLoaderBuilder(com.google.android.gms.dynamic.zzd zzdVar, String str, zzgj zzgjVar, int i) {
        return new zzk((Context) com.google.android.gms.dynamic.zze.zzad(zzdVar), str, zzgjVar, new VersionInfoParcel(com.google.android.gms.common.internal.zze.xM, i, true), zzd.zzek());
    }

    @Override // com.google.android.gms.ads.internal.client.zzx
    public zzhi createAdOverlay(com.google.android.gms.dynamic.zzd zzdVar) {
        return new com.google.android.gms.ads.internal.overlay.zzd((Activity) com.google.android.gms.dynamic.zze.zzad(zzdVar));
    }

    @Override // com.google.android.gms.ads.internal.client.zzx
    public com.google.android.gms.ads.internal.client.zzu createBannerAdManager(com.google.android.gms.dynamic.zzd zzdVar, AdSizeParcel adSizeParcel, String str, zzgj zzgjVar, int i) throws RemoteException {
        return new zzf((Context) com.google.android.gms.dynamic.zze.zzad(zzdVar), adSizeParcel, str, zzgjVar, new VersionInfoParcel(com.google.android.gms.common.internal.zze.xM, i, true), zzd.zzek());
    }

    @Override // com.google.android.gms.ads.internal.client.zzx
    public zzhp createInAppPurchaseManager(com.google.android.gms.dynamic.zzd zzdVar) {
        return new com.google.android.gms.ads.internal.purchase.zze((Activity) com.google.android.gms.dynamic.zze.zzad(zzdVar));
    }

    @Override // com.google.android.gms.ads.internal.client.zzx
    public com.google.android.gms.ads.internal.client.zzu createInterstitialAdManager(com.google.android.gms.dynamic.zzd zzdVar, AdSizeParcel adSizeParcel, String str, zzgj zzgjVar, int i) throws RemoteException {
        Context context = (Context) com.google.android.gms.dynamic.zze.zzad(zzdVar);
        zzdc.initialize(context);
        VersionInfoParcel versionInfoParcel = new VersionInfoParcel(com.google.android.gms.common.internal.zze.xM, i, true);
        boolean equals = "reward_mb".equals(adSizeParcel.zzaur);
        return (!equals && zzdc.zzbae.get().booleanValue()) || (equals && zzdc.zzbaf.get().booleanValue()) ? new zzfn(context, str, zzgjVar, versionInfoParcel, zzd.zzek()) : new zzl(context, adSizeParcel, str, zzgjVar, versionInfoParcel, zzd.zzek());
    }

    @Override // com.google.android.gms.ads.internal.client.zzx
    public zzdt createNativeAdViewDelegate(com.google.android.gms.dynamic.zzd zzdVar, com.google.android.gms.dynamic.zzd zzdVar2) {
        return new com.google.android.gms.ads.internal.formats.zzk((FrameLayout) com.google.android.gms.dynamic.zze.zzad(zzdVar), (FrameLayout) com.google.android.gms.dynamic.zze.zzad(zzdVar2));
    }

    @Override // com.google.android.gms.ads.internal.client.zzx
    public com.google.android.gms.ads.internal.reward.client.zzb createRewardedVideoAd(com.google.android.gms.dynamic.zzd zzdVar, zzgj zzgjVar, int i) {
        return new zzje((Context) com.google.android.gms.dynamic.zze.zzad(zzdVar), zzd.zzek(), zzgjVar, new VersionInfoParcel(com.google.android.gms.common.internal.zze.xM, i, true));
    }

    @Override // com.google.android.gms.ads.internal.client.zzx
    public com.google.android.gms.ads.internal.client.zzu createSearchAdManager(com.google.android.gms.dynamic.zzd zzdVar, AdSizeParcel adSizeParcel, String str, int i) throws RemoteException {
        return new zzt((Context) com.google.android.gms.dynamic.zze.zzad(zzdVar), adSizeParcel, str, new VersionInfoParcel(com.google.android.gms.common.internal.zze.xM, i, true));
    }

    @Override // com.google.android.gms.ads.internal.client.zzx
    @Nullable
    public zzz getMobileAdsSettingsManager(com.google.android.gms.dynamic.zzd zzdVar) {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzx
    public zzz getMobileAdsSettingsManagerWithClientJarVersion(com.google.android.gms.dynamic.zzd zzdVar, int i) {
        return zzo.zza((Context) com.google.android.gms.dynamic.zze.zzad(zzdVar), new VersionInfoParcel(com.google.android.gms.common.internal.zze.xM, i, true));
    }
}
