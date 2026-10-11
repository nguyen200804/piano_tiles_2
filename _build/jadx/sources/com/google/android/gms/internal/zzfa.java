package com.google.android.gms.internal;

import com.mopub.mobileads.VastIconXmlManager;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class zzfa implements zzep {
    zzfa() {
    }

    private int zzg(Map<String, String> map) throws NullPointerException, NumberFormatException {
        int parseInt = Integer.parseInt(map.get("playbackState"));
        if (parseInt < 0 || 3 < parseInt) {
            return 0;
        }
        return parseInt;
    }

    @Override // com.google.android.gms.internal.zzep
    public void zza(zzlh zzlhVar, Map<String, String> map) {
        zzlm zzlmVar;
        if (zzdc.zzbbb.get().booleanValue()) {
            zzlm zzut = zzlhVar.zzut();
            if (zzut == null) {
                try {
                    zzlm zzlmVar2 = new zzlm(zzlhVar, Float.parseFloat(map.get(VastIconXmlManager.DURATION)));
                    zzlhVar.zza(zzlmVar2);
                    zzlmVar = zzlmVar2;
                } catch (NullPointerException | NumberFormatException e) {
                    zzkd.zzb("Unable to parse videoMeta message.", e);
                    com.google.android.gms.ads.internal.zzu.zzft().zzb(e, true);
                    return;
                }
            } else {
                zzlmVar = zzut;
            }
            zzlmVar.zza(Float.parseFloat(map.get("currentTime")), zzg(map), "1".equals(map.get("muted")));
        }
    }
}
