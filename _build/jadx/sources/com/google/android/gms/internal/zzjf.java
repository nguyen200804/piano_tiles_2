package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.reward.client.RewardedVideoAdRequestParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzju;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzjf extends com.google.android.gms.ads.internal.zzb implements zzji {
    private static final zzgi zzchg = new zzgi();
    private final Map<String, zzjm> zzchh;
    private boolean zzchi;

    public zzjf(Context context, com.google.android.gms.ads.internal.zzd zzdVar, AdSizeParcel adSizeParcel, zzgj zzgjVar, VersionInfoParcel versionInfoParcel) {
        super(context, adSizeParcel, null, zzgjVar, versionInfoParcel, zzdVar);
        this.zzchh = new HashMap();
    }

    private zzju.zza zze(zzju.zza zzaVar) {
        zzkd.v("Creating mediation ad response for non-mediated rewarded ad.");
        try {
            String jSONObject = zziq.zzc(zzaVar.zzciq).toString();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, zzaVar.zzcip.zzaou);
            return new zzju.zza(zzaVar.zzcip, zzaVar.zzciq, new zzga(Arrays.asList(new zzfz(jSONObject, null, Arrays.asList("com.google.ads.mediation.admob.AdMobAdapter"), null, null, Collections.emptyList(), Collections.emptyList(), jSONObject2.toString(), null, Collections.emptyList(), Collections.emptyList(), null, null, null, null, null, Collections.emptyList())), -1L, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), false, "", -1L, 0, 1, null, 0, -1, -1L, false), zzaVar.zzapa, zzaVar.errorCode, zzaVar.zzcik, zzaVar.zzcil, zzaVar.zzcie);
        } catch (JSONException e) {
            zzkd.zzb("Unable to generate ad state for non-mediated rewarded video.", e);
            return zzf(zzaVar);
        }
    }

    private zzju.zza zzf(zzju.zza zzaVar) {
        return new zzju.zza(zzaVar.zzcip, zzaVar.zzciq, null, zzaVar.zzapa, 0, zzaVar.zzcik, zzaVar.zzcil, zzaVar.zzcie);
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void destroy() {
        com.google.android.gms.common.internal.zzab.zzhi("destroy must be called on the main UI thread.");
        for (String str : this.zzchh.keySet()) {
            try {
                zzjm zzjmVar = this.zzchh.get(str);
                if (zzjmVar != null && zzjmVar.zzru() != null) {
                    zzjmVar.zzru().destroy();
                }
            } catch (RemoteException e) {
                String valueOf = String.valueOf(str);
                zzkd.zzcx(valueOf.length() != 0 ? "Fail to destroy adapter: ".concat(valueOf) : new String("Fail to destroy adapter: "));
            }
        }
    }

    public boolean isLoaded() {
        com.google.android.gms.common.internal.zzab.zzhi("isLoaded must be called on the main UI thread.");
        return this.zzajs.zzaoy == null && this.zzajs.zzaoz == null && this.zzajs.zzapb != null && !this.zzchi;
    }

    public void onContextChanged(@NonNull Context context) {
        Iterator<zzjm> it = this.zzchh.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().zzru().zzj(com.google.android.gms.dynamic.zze.zzac(context));
            } catch (RemoteException e) {
                zzkd.zzb("Unable to call Adapter.onContextChanged.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzji
    public void onRewardedVideoAdClosed() {
        zzdr();
    }

    @Override // com.google.android.gms.internal.zzji
    public void onRewardedVideoAdLeftApplication() {
        zzds();
    }

    @Override // com.google.android.gms.internal.zzji
    public void onRewardedVideoAdOpened() {
        zza(this.zzajs.zzapb, false);
        zzdt();
    }

    @Override // com.google.android.gms.internal.zzji
    public void onRewardedVideoStarted() {
        if (this.zzajs.zzapb != null && this.zzajs.zzapb.zzbon != null) {
            com.google.android.gms.ads.internal.zzu.zzgf().zza(this.zzajs.zzagf, this.zzajs.zzaow.zzcs, this.zzajs.zzapb, this.zzajs.zzaou, false, this.zzajs.zzapb.zzbon.zzbnd);
        }
        zzdv();
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void pause() {
        com.google.android.gms.common.internal.zzab.zzhi("pause must be called on the main UI thread.");
        for (String str : this.zzchh.keySet()) {
            try {
                zzjm zzjmVar = this.zzchh.get(str);
                if (zzjmVar != null && zzjmVar.zzru() != null) {
                    zzjmVar.zzru().pause();
                }
            } catch (RemoteException e) {
                String valueOf = String.valueOf(str);
                zzkd.zzcx(valueOf.length() != 0 ? "Fail to pause adapter: ".concat(valueOf) : new String("Fail to pause adapter: "));
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void resume() {
        com.google.android.gms.common.internal.zzab.zzhi("resume must be called on the main UI thread.");
        for (String str : this.zzchh.keySet()) {
            try {
                zzjm zzjmVar = this.zzchh.get(str);
                if (zzjmVar != null && zzjmVar.zzru() != null) {
                    zzjmVar.zzru().resume();
                }
            } catch (RemoteException e) {
                String valueOf = String.valueOf(str);
                zzkd.zzcx(valueOf.length() != 0 ? "Fail to resume adapter: ".concat(valueOf) : new String("Fail to resume adapter: "));
            }
        }
    }

    public void zza(RewardedVideoAdRequestParcel rewardedVideoAdRequestParcel) {
        com.google.android.gms.common.internal.zzab.zzhi("loadAd must be called on the main UI thread.");
        if (TextUtils.isEmpty(rewardedVideoAdRequestParcel.zzaou)) {
            zzkd.zzcx("Invalid ad unit id. Aborting.");
            return;
        }
        this.zzchi = false;
        this.zzajs.zzaou = rewardedVideoAdRequestParcel.zzaou;
        super.zzb(rewardedVideoAdRequestParcel.zzcar);
    }

    @Override // com.google.android.gms.ads.internal.zza
    public void zza(final zzju.zza zzaVar, zzdk zzdkVar) {
        if (zzaVar.errorCode != -2) {
            zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.internal.zzjf.1
                @Override // java.lang.Runnable
                public void run() {
                    zzjf.this.zzb(new zzju(zzaVar, null, null, null, null, null, null, null));
                }
            });
            return;
        }
        this.zzajs.zzapc = zzaVar;
        if (zzaVar.zzcig == null) {
            this.zzajs.zzapc = zze(zzaVar);
        }
        this.zzajs.zzapw = 0;
        this.zzajs.zzaoz = com.google.android.gms.ads.internal.zzu.zzfp().zza(this.zzajs.zzagf, this.zzajs.zzapc, this);
    }

    @Override // com.google.android.gms.ads.internal.zzb
    protected boolean zza(AdRequestParcel adRequestParcel, zzju zzjuVar, boolean z) {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    public boolean zza(zzju zzjuVar, zzju zzjuVar2) {
        return true;
    }

    @Override // com.google.android.gms.internal.zzji
    public void zzc(@Nullable RewardItemParcel rewardItemParcel) {
        if (this.zzajs.zzapb != null && this.zzajs.zzapb.zzbon != null) {
            com.google.android.gms.ads.internal.zzu.zzgf().zza(this.zzajs.zzagf, this.zzajs.zzaow.zzcs, this.zzajs.zzapb, this.zzajs.zzaou, false, this.zzajs.zzapb.zzbon.zzbne);
        }
        if (this.zzajs.zzapb != null && this.zzajs.zzapb.zzcig != null && !TextUtils.isEmpty(this.zzajs.zzapb.zzcig.zzbnt)) {
            rewardItemParcel = new RewardItemParcel(this.zzajs.zzapb.zzcig.zzbnt, this.zzajs.zzapb.zzcig.zzbnu);
        }
        zza(rewardItemParcel);
    }

    @Nullable
    public zzjm zzcf(String str) {
        Exception exc;
        zzjm zzjmVar;
        zzjm zzjmVar2 = this.zzchh.get(str);
        if (zzjmVar2 != null) {
            return zzjmVar2;
        }
        try {
            zzjmVar = new zzjm(("com.google.ads.mediation.admob.AdMobAdapter".equals(str) ? zzchg : this.zzajz).zzbm(str), this);
        } catch (Exception e) {
            exc = e;
            zzjmVar = zzjmVar2;
        }
        try {
            this.zzchh.put(str, zzjmVar);
            return zzjmVar;
        } catch (Exception e2) {
            exc = e2;
            String valueOf = String.valueOf(str);
            zzkd.zzd(valueOf.length() != 0 ? "Fail to instantiate adapter ".concat(valueOf) : new String("Fail to instantiate adapter "), exc);
            return zzjmVar;
        }
    }

    public void zzrq() {
        com.google.android.gms.common.internal.zzab.zzhi("showAd must be called on the main UI thread.");
        if (!isLoaded()) {
            zzkd.zzcx("The reward video has not loaded.");
            return;
        }
        this.zzchi = true;
        zzjm zzcf = zzcf(this.zzajs.zzapb.zzbop);
        if (zzcf == null || zzcf.zzru() == null) {
            return;
        }
        try {
            zzcf.zzru().showVideo();
        } catch (RemoteException e) {
            zzkd.zzd("Could not call showVideo.", e);
        }
    }

    @Override // com.google.android.gms.internal.zzji
    public void zzrr() {
        onAdClicked();
    }
}
