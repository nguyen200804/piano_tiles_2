package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.internal.zzic;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzli;
import java.util.concurrent.atomic.AtomicBoolean;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzhy implements zzkj<Void>, zzli.zza {
    protected final Context mContext;
    protected final zzlh zzbgf;
    protected final zzic.zza zzbxq;
    protected final zzju.zza zzbxr;
    protected AdResponseParcel zzbxs;
    private Runnable zzbxt;
    protected final Object zzbxu = new Object();
    private AtomicBoolean zzbxv = new AtomicBoolean(true);

    protected zzhy(Context context, zzju.zza zzaVar, zzlh zzlhVar, zzic.zza zzaVar2) {
        this.mContext = context;
        this.zzbxr = zzaVar;
        this.zzbxs = this.zzbxr.zzciq;
        this.zzbgf = zzlhVar;
        this.zzbxq = zzaVar2;
    }

    private zzju zzak(int i) {
        AdRequestInfoParcel adRequestInfoParcel = this.zzbxr.zzcip;
        return new zzju(adRequestInfoParcel.zzcar, this.zzbgf, this.zzbxs.zzbnm, i, this.zzbxs.zzbnn, this.zzbxs.zzcca, this.zzbxs.orientation, this.zzbxs.zzbns, adRequestInfoParcel.zzcau, this.zzbxs.zzcby, null, null, null, null, null, this.zzbxs.zzcbz, this.zzbxr.zzapa, this.zzbxs.zzcbx, this.zzbxr.zzcik, this.zzbxs.zzccc, this.zzbxs.zzccd, this.zzbxr.zzcie, null, this.zzbxs.zzccn, this.zzbxs.zzcco, this.zzbxs.zzccp, this.zzbxs.zzccq, this.zzbxs.zzccr, null, this.zzbxs.zzbnp);
    }

    @Override // com.google.android.gms.internal.zzkj
    public void cancel() {
        if (this.zzbxv.getAndSet(false)) {
            this.zzbgf.stopLoading();
            com.google.android.gms.ads.internal.zzu.zzfs().zzi(this.zzbgf);
            zzaj(-1);
            zzkh.zzclc.removeCallbacks(this.zzbxt);
        }
    }

    @Override // com.google.android.gms.internal.zzli.zza
    public void zza(zzlh zzlhVar, boolean z) {
        zzkd.zzcv("WebView finished loading.");
        if (this.zzbxv.getAndSet(false)) {
            zzaj(z ? zzpx() : 0);
            zzkh.zzclc.removeCallbacks(this.zzbxt);
        }
    }

    protected void zzaj(int i) {
        if (i != -2) {
            this.zzbxs = new AdResponseParcel(i, this.zzbxs.zzbns);
        }
        this.zzbgf.zzud();
        this.zzbxq.zzb(zzak(i));
    }

    @Override // com.google.android.gms.internal.zzkj
    /* renamed from: zzpv, reason: merged with bridge method [inline-methods] */
    public final Void zzpy() {
        com.google.android.gms.common.internal.zzab.zzhi("Webview render task needs to be called on UI thread.");
        this.zzbxt = new Runnable() { // from class: com.google.android.gms.internal.zzhy.1
            @Override // java.lang.Runnable
            public void run() {
                if (zzhy.this.zzbxv.get()) {
                    zzkd.e("Timed out waiting for WebView to finish loading.");
                    zzhy.this.cancel();
                }
            }
        };
        zzkh.zzclc.postDelayed(this.zzbxt, zzdc.zzbbh.get().longValue());
        zzpw();
        return null;
    }

    protected abstract void zzpw();

    protected int zzpx() {
        return -2;
    }
}
