package com.google.android.gms.ads.internal.client;

import com.google.android.gms.internal.zzef;
import com.google.android.gms.internal.zzhh;
import com.google.android.gms.internal.zzhu;
import com.google.android.gms.internal.zzin;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzm {
    private static final Object zzamr = new Object();
    private static zzm zzavm;
    private final com.google.android.gms.ads.internal.util.client.zza zzavn = new com.google.android.gms.ads.internal.util.client.zza();
    private final zzl zzavo = new zzl(new zze(), new zzd(), new zzai(), new zzef(), new com.google.android.gms.ads.internal.reward.client.zzf(), new zzhu(), new zzhh());

    static {
        zza(new zzm());
    }

    protected zzm() {
    }

    protected static void zza(zzm zzmVar) {
        synchronized (zzamr) {
            zzavm = zzmVar;
        }
    }

    private static zzm zziv() {
        zzm zzmVar;
        synchronized (zzamr) {
            zzmVar = zzavm;
        }
        return zzmVar;
    }

    public static com.google.android.gms.ads.internal.util.client.zza zziw() {
        return zziv().zzavn;
    }

    public static zzl zzix() {
        return zziv().zzavo;
    }
}
