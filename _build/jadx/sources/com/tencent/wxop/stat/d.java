package com.tencent.wxop.stat;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum d {
    INSTANT(1),
    ONLY_WIFI(2),
    BATCH(3),
    APP_LAUNCH(4),
    DEVELOPER(5),
    PERIOD(6),
    ONLY_WIFI_NO_CACHE(7);

    int aI;

    d(int i) {
        this.aI = i;
    }

    public static d a(int i) {
        for (d dVar : values()) {
            if (i == dVar.aI) {
                return dVar;
            }
        }
        return null;
    }
}
