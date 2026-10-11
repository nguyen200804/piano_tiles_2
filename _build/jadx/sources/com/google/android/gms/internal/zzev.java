package com.google.android.gms.internal;

import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzev implements zzep {
    static final Map<String, Integer> zzbiv = com.google.android.gms.common.util.zzf.zza("resize", 1, "playVideo", 2, "storePicture", 3, "createCalendarEvent", 4, "setOrientationProperties", 5, "closeResizedAd", 6);
    private final com.google.android.gms.ads.internal.zze zzbit;
    private final zzha zzbiu;

    public zzev(com.google.android.gms.ads.internal.zze zzeVar, zzha zzhaVar) {
        this.zzbit = zzeVar;
        this.zzbiu = zzhaVar;
    }

    @Override // com.google.android.gms.internal.zzep
    public void zza(zzlh zzlhVar, Map<String, String> map) {
        int intValue = zzbiv.get(map.get("a")).intValue();
        if (intValue != 5 && this.zzbit != null && !this.zzbit.zzel()) {
            this.zzbit.zzt(null);
        }
        switch (intValue) {
            case 1:
                this.zzbiu.execute(map);
                break;
            case 2:
            default:
                zzkd.zzcw("Unknown MRAID command called.");
                break;
            case 3:
                new zzhc(zzlhVar, map).execute();
                break;
            case 4:
                new zzgz(zzlhVar, map).execute();
                break;
            case 5:
                new zzhb(zzlhVar, map).execute();
                break;
            case 6:
                this.zzbiu.zzs(true);
                break;
        }
    }
}
