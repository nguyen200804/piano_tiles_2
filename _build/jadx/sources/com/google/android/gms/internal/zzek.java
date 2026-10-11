package com.google.android.gms.internal;

import com.unity3d.ads.metadata.MediationMetaData;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzek implements zzep {
    private final zzel zzbhm;

    public zzek(zzel zzelVar) {
        this.zzbhm = zzelVar;
    }

    @Override // com.google.android.gms.internal.zzep
    public void zza(zzlh zzlhVar, Map<String, String> map) {
        String str = map.get(MediationMetaData.KEY_NAME);
        if (str == null) {
            zzkd.zzcx("App event with no name parameter.");
        } else {
            this.zzbhm.onAppEvent(str, map.get("info"));
        }
    }
}
