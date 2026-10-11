package com.google.android.gms.internal;

import com.google.android.gms.clearcut.zzb;
import com.google.android.gms.internal.zzad;
import java.io.IOException;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzam {
    protected static volatile com.google.android.gms.clearcut.zzb zzaez = null;
    private static volatile Random zzafb = null;
    private static final Object zzafc = new Object();
    private zzax zzaey;
    protected boolean zzafa;

    public zzam(zzax zzaxVar) {
        this.zzafa = false;
        this.zzaey = zzaxVar;
        zzdc.initialize(zzaxVar.getContext());
        this.zzafa = zzdc.zzbbi.get().booleanValue();
        if (this.zzafa && zzaez == null) {
            synchronized (zzafc) {
                if (zzaez == null) {
                    zzaez = new com.google.android.gms.clearcut.zzb(zzaxVar.getContext(), "ADSHIELD", (String) null);
                }
            }
        }
    }

    private static Random zzau() {
        if (zzafb == null) {
            synchronized (zzafc) {
                if (zzafb == null) {
                    zzafb = new Random();
                }
            }
        }
        return zzafb;
    }

    public void zza(int i, int i2, long j) throws IOException {
        try {
            if (this.zzafa && zzaez != null && this.zzaey.zzcj()) {
                zzad.zza zzaVar = new zzad.zza();
                zzaVar.zzck = this.zzaey.getContext().getPackageName();
                zzaVar.zzcl = Long.valueOf(j);
                zzb.zza zzl = zzaez.zzl(zzapv.zzf(zzaVar));
                zzl.zzez(i2);
                zzl.zzey(i);
                zzl.zze(this.zzaey.zzch());
            }
        } catch (Exception e) {
        }
    }

    public int zzat() {
        try {
            return ThreadLocalRandom.current().nextInt();
        } catch (NoClassDefFoundError e) {
            return zzau().nextInt();
        } catch (RuntimeException e2) {
            return zzau().nextInt();
        }
    }
}
