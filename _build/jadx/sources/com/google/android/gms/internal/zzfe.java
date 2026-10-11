package com.google.android.gms.internal;

import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzfe implements zzep {
    @Override // com.google.android.gms.internal.zzep
    public void zza(zzlh zzlhVar, Map<String, String> map) {
        int i;
        zzfc zzgj = com.google.android.gms.ads.internal.zzu.zzgj();
        if (map.containsKey("abort")) {
            if (zzgj.zzd(zzlhVar)) {
                return;
            }
            zzkd.zzcx("Precache abort but no preload task running.");
            return;
        }
        String str = map.get("src");
        if (str == null) {
            zzkd.zzcx("Precache video action is missing the src parameter.");
            return;
        }
        try {
            i = Integer.parseInt(map.get("player"));
        } catch (NumberFormatException e) {
            i = 0;
        }
        String str2 = map.containsKey("mimetype") ? map.get("mimetype") : "";
        if (zzgj.zze(zzlhVar)) {
            zzkd.zzcx("Precache task already running.");
        } else {
            com.google.android.gms.common.internal.zzb.zzu(zzlhVar.zzug());
        }
    }
}
