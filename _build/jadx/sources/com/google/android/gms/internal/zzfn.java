package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.VideoOptionsParcel;
import com.google.android.gms.ads.internal.client.zzu;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzfm;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzfn extends zzu.zza {
    private String zzaln;
    private zzfh zzbkq;

    @Nullable
    private com.google.android.gms.ads.internal.zzl zzbkv;
    private zzfj zzblc;

    @Nullable
    private zzhs zzbld;
    private String zzble;

    public zzfn(Context context, String str, zzgj zzgjVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zzd zzdVar) {
        this(str, new zzfh(context, zzgjVar, versionInfoParcel, zzdVar));
    }

    zzfn(String str, zzfh zzfhVar) {
        this.zzaln = str;
        this.zzbkq = zzfhVar;
        this.zzblc = new zzfj();
        com.google.android.gms.ads.internal.zzu.zzgb().zza(zzfhVar);
    }

    private void zzlw() {
        if (this.zzbkv == null || this.zzbld == null) {
            return;
        }
        this.zzbkv.zza(this.zzbld, this.zzble);
    }

    static boolean zzn(AdRequestParcel adRequestParcel) {
        Bundle zzi = zzfk.zzi(adRequestParcel);
        return zzi != null && zzi.containsKey("gw");
    }

    static boolean zzo(AdRequestParcel adRequestParcel) {
        Bundle zzi = zzfk.zzi(adRequestParcel);
        return zzi != null && zzi.containsKey("_ad");
    }

    void abort() {
        if (this.zzbkv != null) {
            return;
        }
        this.zzbkv = this.zzbkq.zzbc(this.zzaln);
        this.zzblc.zzc(this.zzbkv);
        zzlw();
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void destroy() throws RemoteException {
        if (this.zzbkv != null) {
            this.zzbkv.destroy();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    @Nullable
    public String getMediationAdapterClassName() throws RemoteException {
        if (this.zzbkv != null) {
            return this.zzbkv.getMediationAdapterClassName();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public boolean isLoading() throws RemoteException {
        return this.zzbkv != null && this.zzbkv.isLoading();
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public boolean isReady() throws RemoteException {
        return this.zzbkv != null && this.zzbkv.isReady();
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void pause() throws RemoteException {
        if (this.zzbkv != null) {
            this.zzbkv.pause();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void resume() throws RemoteException {
        if (this.zzbkv != null) {
            this.zzbkv.resume();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void setManualImpressionsEnabled(boolean z) throws RemoteException {
        abort();
        if (this.zzbkv != null) {
            this.zzbkv.setManualImpressionsEnabled(z);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void setUserId(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void showInterstitial() throws RemoteException {
        if (this.zzbkv != null) {
            this.zzbkv.showInterstitial();
        } else {
            zzkd.zzcx("Interstitial ad must be loaded before showInterstitial().");
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void stopLoading() throws RemoteException {
        if (this.zzbkv != null) {
            this.zzbkv.stopLoading();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(AdSizeParcel adSizeParcel) throws RemoteException {
        if (this.zzbkv != null) {
            this.zzbkv.zza(adSizeParcel);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(VideoOptionsParcel videoOptionsParcel) {
        throw new IllegalStateException("getVideoController not implemented for interstitials");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(com.google.android.gms.ads.internal.client.zzp zzpVar) throws RemoteException {
        this.zzblc.zzbkk = zzpVar;
        if (this.zzbkv != null) {
            this.zzblc.zzc(this.zzbkv);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(com.google.android.gms.ads.internal.client.zzq zzqVar) throws RemoteException {
        this.zzblc.zzalf = zzqVar;
        if (this.zzbkv != null) {
            this.zzblc.zzc(this.zzbkv);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(com.google.android.gms.ads.internal.client.zzw zzwVar) throws RemoteException {
        this.zzblc.zzbkh = zzwVar;
        if (this.zzbkv != null) {
            this.zzblc.zzc(this.zzbkv);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(com.google.android.gms.ads.internal.client.zzy zzyVar) throws RemoteException {
        abort();
        if (this.zzbkv != null) {
            this.zzbkv.zza(zzyVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(com.google.android.gms.ads.internal.reward.client.zzd zzdVar) {
        this.zzblc.zzbkl = zzdVar;
        if (this.zzbkv != null) {
            this.zzblc.zzc(this.zzbkv);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(zzdo zzdoVar) throws RemoteException {
        this.zzblc.zzbkj = zzdoVar;
        if (this.zzbkv != null) {
            this.zzblc.zzc(this.zzbkv);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(zzho zzhoVar) throws RemoteException {
        this.zzblc.zzbki = zzhoVar;
        if (this.zzbkv != null) {
            this.zzblc.zzc(this.zzbkv);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(zzhs zzhsVar, String str) throws RemoteException {
        this.zzbld = zzhsVar;
        this.zzble = str;
        zzlw();
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public boolean zzb(AdRequestParcel adRequestParcel) throws RemoteException {
        if (!zzn(adRequestParcel)) {
            abort();
        }
        if (zzfk.zzk(adRequestParcel)) {
            abort();
        }
        if (adRequestParcel.zzatt != null) {
            abort();
        }
        if (this.zzbkv != null) {
            return this.zzbkv.zzb(adRequestParcel);
        }
        zzfk zzgb = com.google.android.gms.ads.internal.zzu.zzgb();
        if (zzo(adRequestParcel)) {
            zzgb.zzb(adRequestParcel, this.zzaln);
        }
        zzfm.zza zza = zzgb.zza(adRequestParcel, this.zzaln);
        if (zza == null) {
            abort();
            return this.zzbkv.zzb(adRequestParcel);
        }
        if (!zza.zzbkz) {
            zza.zzlv();
        }
        this.zzbkv = zza.zzbkv;
        zza.zzbkx.zza(this.zzblc);
        this.zzblc.zzc(this.zzbkv);
        zzlw();
        return zza.zzbla;
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    @Nullable
    public com.google.android.gms.dynamic.zzd zzdm() throws RemoteException {
        if (this.zzbkv != null) {
            return this.zzbkv.zzdm();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    @Nullable
    public AdSizeParcel zzdn() throws RemoteException {
        if (this.zzbkv != null) {
            return this.zzbkv.zzdn();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zzdp() throws RemoteException {
        if (this.zzbkv != null) {
            this.zzbkv.zzdp();
        } else {
            zzkd.zzcx("Interstitial ad must be loaded before pingManualTrackingUrl().");
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public com.google.android.gms.ads.internal.client.zzab zzdq() {
        throw new IllegalStateException("getVideoController not implemented for interstitials");
    }
}
