package com.google.android.gms.internal;

import com.google.android.gms.internal.zzae;
import java.util.concurrent.Callable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzbi implements Callable {
    private final zzax zzaey;
    private final zzae.zza zzaha;

    public zzbi(zzax zzaxVar, zzae.zza zzaVar) {
        this.zzaey = zzaxVar;
        this.zzaha = zzaVar;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: zzcx, reason: merged with bridge method [inline-methods] */
    public Void call() throws Exception {
        if (this.zzaey.zzcm() != null) {
            this.zzaey.zzcm().get();
        }
        zzae.zza zzcl = this.zzaey.zzcl();
        if (zzcl == null) {
            return null;
        }
        try {
            synchronized (this.zzaha) {
                zzapv.zza(this.zzaha, zzapv.zzf(zzcl));
            }
            return null;
        } catch (zzapu e) {
            return null;
        }
    }
}
