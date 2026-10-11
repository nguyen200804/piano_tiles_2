package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.formats.zzh;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzdk;
import com.google.android.gms.internal.zzdo;
import com.google.android.gms.internal.zzeb;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzgn;
import com.google.android.gms.internal.zzgo;
import com.google.android.gms.internal.zzho;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzkh;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzq extends zzb {
    public zzq(Context context, zzd zzdVar, AdSizeParcel adSizeParcel, String str, zzgj zzgjVar, VersionInfoParcel versionInfoParcel) {
        super(context, adSizeParcel, str, zzgjVar, versionInfoParcel, zzdVar);
    }

    private static com.google.android.gms.ads.internal.formats.zzd zza(zzgn zzgnVar) throws RemoteException {
        return new com.google.android.gms.ads.internal.formats.zzd(zzgnVar.getHeadline(), zzgnVar.getImages(), zzgnVar.getBody(), zzgnVar.zzku() != null ? zzgnVar.zzku() : null, zzgnVar.getCallToAction(), zzgnVar.getStarRating(), zzgnVar.getStore(), zzgnVar.getPrice(), null, zzgnVar.getExtras());
    }

    private static com.google.android.gms.ads.internal.formats.zze zza(zzgo zzgoVar) throws RemoteException {
        return new com.google.android.gms.ads.internal.formats.zze(zzgoVar.getHeadline(), zzgoVar.getImages(), zzgoVar.getBody(), zzgoVar.zzky() != null ? zzgoVar.zzky() : null, zzgoVar.getCallToAction(), zzgoVar.getAdvertiser(), null, zzgoVar.getExtras());
    }

    private void zza(final com.google.android.gms.ads.internal.formats.zzd zzdVar) {
        zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzq.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (zzq.this.zzajs.zzapk != null) {
                        zzq.this.zzajs.zzapk.zza(zzdVar);
                    }
                } catch (RemoteException e) {
                    zzkd.zzd("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", e);
                }
            }
        });
    }

    private void zza(final com.google.android.gms.ads.internal.formats.zze zzeVar) {
        zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzq.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (zzq.this.zzajs.zzapl != null) {
                        zzq.this.zzajs.zzapl.zza(zzeVar);
                    }
                } catch (RemoteException e) {
                    zzkd.zzd("Could not call OnContentAdLoadedListener.onContentAdLoaded().", e);
                }
            }
        });
    }

    private void zza(final zzju zzjuVar, final String str) {
        zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzq.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    zzq.this.zzajs.zzapn.get(str).zza((com.google.android.gms.ads.internal.formats.zzf) zzjuVar.zzcim);
                } catch (RemoteException e) {
                    zzkd.zzd("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", e);
                }
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void pause() {
        throw new IllegalStateException("Native Ad DOES NOT support pause().");
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void resume() {
        throw new IllegalStateException("Native Ad DOES NOT support resume().");
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.client.zzu
    public void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
    }

    public void zza(SimpleArrayMap<String, zzee> simpleArrayMap) {
        zzab.zzhi("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        this.zzajs.zzapn = simpleArrayMap;
    }

    public void zza(com.google.android.gms.ads.internal.formats.zzh zzhVar) {
        if (this.zzajs.zzapb.zzcie != null) {
            zzu.zzft().zzsu().zza(this.zzajs.zzapa, this.zzajs.zzapb, zzhVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void zza(zzdo zzdoVar) {
        throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void zza(zzho zzhoVar) {
        throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
    }

    @Override // com.google.android.gms.ads.internal.zza
    public void zza(final zzju.zza zzaVar, zzdk zzdkVar) {
        if (zzaVar.zzapa != null) {
            this.zzajs.zzapa = zzaVar.zzapa;
        }
        if (zzaVar.errorCode != -2) {
            zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzq.1
                @Override // java.lang.Runnable
                public void run() {
                    zzq.this.zzb(new zzju(zzaVar, null, null, null, null, null, null, null));
                }
            });
            return;
        }
        this.zzajs.zzapw = 0;
        this.zzajs.zzaoz = zzu.zzfp().zza(this.zzajs.zzagf, this, zzaVar, this.zzajs.zzaov, null, this.zzajz, this, zzdkVar);
        String valueOf = String.valueOf(this.zzajs.zzaoz.getClass().getName());
        zzkd.zzcv(valueOf.length() != 0 ? "AdRenderer: ".concat(valueOf) : new String("AdRenderer: "));
    }

    @Override // com.google.android.gms.ads.internal.zzb
    protected boolean zza(AdRequestParcel adRequestParcel, zzju zzjuVar, boolean z) {
        return this.zzajr.zzfc();
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    protected boolean zza(zzju zzjuVar, zzju zzjuVar2) {
        zzb((List<String>) null);
        if (!this.zzajs.zzgp()) {
            throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
        }
        if (zzjuVar2.zzcby) {
            try {
                zzgn zzmo = zzjuVar2.zzboo != null ? zzjuVar2.zzboo.zzmo() : null;
                zzgo zzmp = zzjuVar2.zzboo != null ? zzjuVar2.zzboo.zzmp() : null;
                if (zzmo != null && this.zzajs.zzapk != null) {
                    com.google.android.gms.ads.internal.formats.zzd zza = zza(zzmo);
                    zza.zzb(new com.google.android.gms.ads.internal.formats.zzg(this.zzajs.zzagf, this, this.zzajs.zzaov, zzmo));
                    zza(zza);
                } else {
                    if (zzmp == null || this.zzajs.zzapl == null) {
                        zzkd.zzcx("No matching mapper/listener for retrieved native ad template.");
                        zzh(0);
                        return false;
                    }
                    com.google.android.gms.ads.internal.formats.zze zza2 = zza(zzmp);
                    zza2.zzb(new com.google.android.gms.ads.internal.formats.zzg(this.zzajs.zzagf, this, this.zzajs.zzaov, zzmp));
                    zza(zza2);
                }
            } catch (RemoteException e) {
                zzkd.zzd("Failed to get native ad mapper", e);
            }
        } else {
            zzh.zza zzaVar = zzjuVar2.zzcim;
            if ((zzaVar instanceof com.google.android.gms.ads.internal.formats.zze) && this.zzajs.zzapl != null) {
                zza((com.google.android.gms.ads.internal.formats.zze) zzjuVar2.zzcim);
            } else if ((zzaVar instanceof com.google.android.gms.ads.internal.formats.zzd) && this.zzajs.zzapk != null) {
                zza((com.google.android.gms.ads.internal.formats.zzd) zzjuVar2.zzcim);
            } else {
                if (!(zzaVar instanceof com.google.android.gms.ads.internal.formats.zzf) || this.zzajs.zzapn == null || this.zzajs.zzapn.get(((com.google.android.gms.ads.internal.formats.zzf) zzaVar).getCustomTemplateId()) == null) {
                    zzkd.zzcx("No matching listener for retrieved native ad template.");
                    zzh(0);
                    return false;
                }
                zza(zzjuVar2, ((com.google.android.gms.ads.internal.formats.zzf) zzaVar).getCustomTemplateId());
            }
        }
        return super.zza(zzjuVar, zzjuVar2);
    }

    public void zzb(SimpleArrayMap<String, zzed> simpleArrayMap) {
        zzab.zzhi("setOnCustomClickListener must be called on the main UI thread.");
        this.zzajs.zzapm = simpleArrayMap;
    }

    public void zzb(NativeAdOptionsParcel nativeAdOptionsParcel) {
        zzab.zzhi("setNativeAdOptions must be called on the main UI thread.");
        this.zzajs.zzapo = nativeAdOptionsParcel;
    }

    public void zzb(zzeb zzebVar) {
        zzab.zzhi("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
        this.zzajs.zzapk = zzebVar;
    }

    public void zzb(zzec zzecVar) {
        zzab.zzhi("setOnContentAdLoadedListener must be called on the main UI thread.");
        this.zzajs.zzapl = zzecVar;
    }

    public void zzb(@Nullable List<String> list) {
        zzab.zzhi("setNativeTemplates must be called on the main UI thread.");
        this.zzajs.zzaps = list;
    }

    public SimpleArrayMap<String, zzee> zzfb() {
        zzab.zzhi("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        return this.zzajs.zzapn;
    }

    @Nullable
    public zzed zzv(String str) {
        zzab.zzhi("getOnCustomClickListener must be called on the main UI thread.");
        return this.zzajs.zzapm.get(str);
    }
}
