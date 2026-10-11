package com.google.android.gms.internal;

import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzhb {
    private final zzlh zzbgf;
    private final boolean zzbqs;
    private final String zzbqt;

    public zzhb(zzlh zzlhVar, Map<String, String> map) {
        this.zzbgf = zzlhVar;
        this.zzbqt = map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.zzbqs = Boolean.parseBoolean(map.get("allowOrientationChange"));
        } else {
            this.zzbqs = true;
        }
    }

    public void execute() {
        if (this.zzbgf == null) {
            zzkd.zzcx("AdWebView is null");
        } else {
            this.zzbgf.setRequestedOrientation("portrait".equalsIgnoreCase(this.zzbqt) ? com.google.android.gms.ads.internal.zzu.zzfs().zztk() : "landscape".equalsIgnoreCase(this.zzbqt) ? com.google.android.gms.ads.internal.zzu.zzfs().zztj() : this.zzbqs ? -1 : com.google.android.gms.ads.internal.zzu.zzfs().zztl());
        }
    }
}
