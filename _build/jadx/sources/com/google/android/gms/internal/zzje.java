package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.reward.client.RewardedVideoAdRequestParcel;
import com.google.android.gms.ads.internal.reward.client.zzb;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzje extends zzb.zza {
    private final Context mContext;
    private final Object zzail = new Object();
    private final VersionInfoParcel zzalo;
    private final zzjf zzchf;

    public zzje(Context context, com.google.android.gms.ads.internal.zzd zzdVar, zzgj zzgjVar, VersionInfoParcel versionInfoParcel) {
        this.mContext = context;
        this.zzalo = versionInfoParcel;
        this.zzchf = new zzjf(context, zzdVar, AdSizeParcel.zzii(), zzgjVar, versionInfoParcel);
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zzb
    public void destroy() {
        zzh(null);
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zzb
    public boolean isLoaded() {
        boolean isLoaded;
        synchronized (this.zzail) {
            isLoaded = this.zzchf.isLoaded();
        }
        return isLoaded;
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zzb
    public void pause() {
        zzf(null);
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zzb
    public void resume() {
        zzg(null);
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zzb
    public void setUserId(String str) {
        zzkd.zzcx("RewardedVideoAd.setUserId() is deprecated. Please do not call this method.");
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zzb
    public void show() {
        synchronized (this.zzail) {
            this.zzchf.zzrq();
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zzb
    public void zza(RewardedVideoAdRequestParcel rewardedVideoAdRequestParcel) {
        synchronized (this.zzail) {
            this.zzchf.zza(rewardedVideoAdRequestParcel);
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zzb
    public void zza(com.google.android.gms.ads.internal.reward.client.zzd zzdVar) {
        synchronized (this.zzail) {
            this.zzchf.zza(zzdVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zzb
    public void zzf(com.google.android.gms.dynamic.zzd zzdVar) {
        synchronized (this.zzail) {
            this.zzchf.pause();
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zzb
    public void zzg(com.google.android.gms.dynamic.zzd zzdVar) {
        Context context;
        synchronized (this.zzail) {
            if (zzdVar == null) {
                context = null;
            } else {
                try {
                    context = (Context) com.google.android.gms.dynamic.zze.zzad(zzdVar);
                } catch (Exception e) {
                    zzkd.zzd("Unable to extract updated context.", e);
                }
            }
            if (context != null) {
                this.zzchf.onContextChanged(context);
            }
            this.zzchf.resume();
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.client.zzb
    public void zzh(com.google.android.gms.dynamic.zzd zzdVar) {
        synchronized (this.zzail) {
            this.zzchf.destroy();
        }
    }
}
