package com.google.android.gms.internal;

import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzey implements zzep {
    private final zza zzbiy;

    public interface zza {
        void zzb(RewardItemParcel rewardItemParcel);

        void zzev();
    }

    public zzey(zza zzaVar) {
        this.zzbiy = zzaVar;
    }

    public static void zza(zzlh zzlhVar, zza zzaVar) {
        zzlhVar.zzuj().zza("/reward", new zzey(zzaVar));
    }

    private void zze(Map<String, String> map) {
        RewardItemParcel rewardItemParcel;
        int parseInt;
        String str;
        try {
            parseInt = Integer.parseInt(map.get(AppLovinEventParameters.REVENUE_AMOUNT));
            str = map.get(VastExtensionXmlManager.TYPE);
        } catch (NumberFormatException e) {
            zzkd.zzd("Unable to parse reward amount.", e);
        }
        if (!TextUtils.isEmpty(str)) {
            rewardItemParcel = new RewardItemParcel(str, parseInt);
            this.zzbiy.zzb(rewardItemParcel);
        }
        rewardItemParcel = null;
        this.zzbiy.zzb(rewardItemParcel);
    }

    private void zzf(Map<String, String> map) {
        this.zzbiy.zzev();
    }

    @Override // com.google.android.gms.internal.zzep
    public void zza(zzlh zzlhVar, Map<String, String> map) {
        String str = map.get("action");
        if ("grant".equals(str)) {
            zze(map);
        } else if ("video_start".equals(str)) {
            zzf(map);
        }
    }
}
