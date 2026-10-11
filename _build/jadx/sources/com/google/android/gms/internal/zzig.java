package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.internal.zzic;
import com.google.android.gms.internal.zzju;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzig extends zzkc {
    private final Object zzail;
    private final zzic.zza zzbxq;
    private final zzju.zza zzbxr;
    private final AdResponseParcel zzbxs;
    private final zzii zzbyq;
    private Future<zzju> zzbyr;

    public zzig(Context context, com.google.android.gms.ads.internal.zzq zzqVar, zzju.zza zzaVar, zzas zzasVar, zzic.zza zzaVar2) {
        this(zzaVar, zzaVar2, new zzii(context, zzqVar, new zzkn(context), zzasVar, zzaVar));
    }

    zzig(zzju.zza zzaVar, zzic.zza zzaVar2, zzii zziiVar) {
        this.zzail = new Object();
        this.zzbxr = zzaVar;
        this.zzbxs = zzaVar.zzciq;
        this.zzbxq = zzaVar2;
        this.zzbyq = zziiVar;
    }

    private zzju zzam(int i) {
        return new zzju(this.zzbxr.zzcip.zzcar, null, null, i, null, null, this.zzbxs.orientation, this.zzbxs.zzbns, this.zzbxr.zzcip.zzcau, false, null, null, null, null, null, this.zzbxs.zzcbz, this.zzbxr.zzapa, this.zzbxs.zzcbx, this.zzbxr.zzcik, this.zzbxs.zzccc, this.zzbxs.zzccd, this.zzbxr.zzcie, null, null, null, null, this.zzbxr.zzciq.zzccq, this.zzbxr.zzciq.zzccr, null, null);
    }

    @Override // com.google.android.gms.internal.zzkc
    public void onStop() {
        synchronized (this.zzail) {
            if (this.zzbyr != null) {
                this.zzbyr.cancel(true);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzkc
    public void zzew() {
        int i;
        final zzju zzjuVar;
        try {
            synchronized (this.zzail) {
                this.zzbyr = zzkg.zza(this.zzbyq);
            }
            zzjuVar = this.zzbyr.get(60000L, TimeUnit.MILLISECONDS);
            i = -2;
        } catch (InterruptedException e) {
            zzjuVar = null;
            i = 0;
        } catch (CancellationException e2) {
            zzjuVar = null;
            i = 0;
        } catch (ExecutionException e3) {
            zzjuVar = null;
            i = 0;
        } catch (TimeoutException e4) {
            zzkd.zzcx("Timed out waiting for native ad.");
            this.zzbyr.cancel(true);
            i = 2;
            zzjuVar = null;
        }
        if (zzjuVar == null) {
            zzjuVar = zzam(i);
        }
        zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.internal.zzig.1
            @Override // java.lang.Runnable
            public void run() {
                zzig.this.zzbxq.zzb(zzjuVar);
            }
        });
    }
}
