package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.zza;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzjj extends zza.AbstractBinderC0121zza {
    private zzjk zzchn;
    private zzjh zzchu;
    private zzji zzchv;

    public zzjj(zzji zzjiVar) {
        this.zzchv = zzjiVar;
    }

    @Override // com.google.android.gms.ads.internal.reward.mediation.client.zza
    public void zza(com.google.android.gms.dynamic.zzd zzdVar, RewardItemParcel rewardItemParcel) {
        if (this.zzchv != null) {
            this.zzchv.zzc(rewardItemParcel);
        }
    }

    public void zza(zzjh zzjhVar) {
        this.zzchu = zzjhVar;
    }

    public void zza(zzjk zzjkVar) {
        this.zzchn = zzjkVar;
    }

    @Override // com.google.android.gms.ads.internal.reward.mediation.client.zza
    public void zzb(com.google.android.gms.dynamic.zzd zzdVar, int i) {
        if (this.zzchu != null) {
            this.zzchu.zzaw(i);
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.mediation.client.zza
    public void zzc(com.google.android.gms.dynamic.zzd zzdVar, int i) {
        if (this.zzchn != null) {
            this.zzchn.zza(com.google.android.gms.dynamic.zze.zzad(zzdVar).getClass().getName(), i);
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.mediation.client.zza
    public void zzp(com.google.android.gms.dynamic.zzd zzdVar) {
        if (this.zzchu != null) {
            this.zzchu.zzrs();
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.mediation.client.zza
    public void zzq(com.google.android.gms.dynamic.zzd zzdVar) {
        if (this.zzchn != null) {
            this.zzchn.zzcg(com.google.android.gms.dynamic.zze.zzad(zzdVar).getClass().getName());
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.mediation.client.zza
    public void zzr(com.google.android.gms.dynamic.zzd zzdVar) {
        if (this.zzchv != null) {
            this.zzchv.onRewardedVideoAdOpened();
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.mediation.client.zza
    public void zzs(com.google.android.gms.dynamic.zzd zzdVar) {
        if (this.zzchv != null) {
            this.zzchv.onRewardedVideoStarted();
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.mediation.client.zza
    public void zzt(com.google.android.gms.dynamic.zzd zzdVar) {
        if (this.zzchv != null) {
            this.zzchv.onRewardedVideoAdClosed();
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.mediation.client.zza
    public void zzu(com.google.android.gms.dynamic.zzd zzdVar) {
        if (this.zzchv != null) {
            this.zzchv.zzrr();
        }
    }

    @Override // com.google.android.gms.ads.internal.reward.mediation.client.zza
    public void zzv(com.google.android.gms.dynamic.zzd zzdVar) {
        if (this.zzchv != null) {
            this.zzchv.onRewardedVideoAdLeftApplication();
        }
    }
}
