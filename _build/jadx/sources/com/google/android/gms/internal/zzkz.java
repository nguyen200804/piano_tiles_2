package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class zzkz {
    private final Object zzcnx = new Object();
    private final List<Runnable> zzcny = new ArrayList();
    private final List<Runnable> zzcnz = new ArrayList();
    private boolean zzcoa = false;

    private void zze(Runnable runnable) {
        zzkg.zza(runnable);
    }

    private void zzf(Runnable runnable) {
        com.google.android.gms.ads.internal.util.client.zza.zzcnb.post(runnable);
    }

    public void zzc(Runnable runnable) {
        synchronized (this.zzcnx) {
            if (this.zzcoa) {
                zze(runnable);
            } else {
                this.zzcny.add(runnable);
            }
        }
    }

    public void zzd(Runnable runnable) {
        synchronized (this.zzcnx) {
            if (this.zzcoa) {
                zzf(runnable);
            } else {
                this.zzcnz.add(runnable);
            }
        }
    }

    public void zztz() {
        synchronized (this.zzcnx) {
            if (this.zzcoa) {
                return;
            }
            Iterator<Runnable> it = this.zzcny.iterator();
            while (it.hasNext()) {
                zze(it.next());
            }
            Iterator<Runnable> it2 = this.zzcnz.iterator();
            while (it2.hasNext()) {
                zzf(it2.next());
            }
            this.zzcny.clear();
            this.zzcnz.clear();
            this.zzcoa = true;
        }
    }
}
