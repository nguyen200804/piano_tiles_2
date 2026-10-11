package com.google.android.gms.internal;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zztz {
    private static zztz OT;
    private final zztw OU = new zztw();
    private final zztx OV = new zztx();

    static {
        zza(new zztz());
    }

    private zztz() {
    }

    protected static void zza(zztz zztzVar) {
        synchronized (zztz.class) {
            OT = zztzVar;
        }
    }

    private static zztz zzbes() {
        zztz zztzVar;
        synchronized (zztz.class) {
            zztzVar = OT;
        }
        return zztzVar;
    }

    public static zztw zzbet() {
        return zzbes().OU;
    }

    public static zztx zzbeu() {
        return zzbes().OV;
    }
}
