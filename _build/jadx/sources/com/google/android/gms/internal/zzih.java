package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzfs;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzla;
import com.mopub.common.Constants;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzih {
    private final Context mContext;
    private final com.google.android.gms.ads.internal.zzq zzbfx;
    private final zzas zzbgd;
    private final zzju.zza zzbxr;
    private zzfq zzbyw;
    private zzfs.zze zzbyx;
    private zzfp zzbyy;
    private boolean zzbyz;
    private static final long zzbyt = TimeUnit.SECONDS.toMillis(60);
    private static final Object zzamr = new Object();
    private static boolean zzbyu = false;
    private static zzfs zzbyv = null;

    public static abstract class zza {
        public abstract void zze(zzft zzftVar);

        public void zzqq() {
        }
    }

    public zzih(Context context, zzju.zza zzaVar, com.google.android.gms.ads.internal.zzq zzqVar, zzas zzasVar) {
        this.zzbyz = false;
        this.mContext = context;
        this.zzbxr = zzaVar;
        this.zzbfx = zzqVar;
        this.zzbgd = zzasVar;
        this.zzbyz = zzdc.zzbcf.get().booleanValue();
    }

    private String zzd(zzju.zza zzaVar) {
        String str = zzdc.zzbac.get();
        String valueOf = String.valueOf(zzaVar.zzciq.zzbto.indexOf(Constants.HTTPS) == 0 ? "https:" : "http:");
        String valueOf2 = String.valueOf(str);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    private void zzqi() {
        synchronized (zzamr) {
            if (!zzbyu) {
                zzbyv = new zzfs(this.mContext.getApplicationContext() != null ? this.mContext.getApplicationContext() : this.mContext, this.zzbxr.zzcip.zzaow, zzd(this.zzbxr), new zzkl<zzfp>() { // from class: com.google.android.gms.internal.zzih.3
                    @Override // com.google.android.gms.internal.zzkl
                    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
                    public void zzd(zzfp zzfpVar) {
                        zzfpVar.zza(zzih.this.zzbfx, zzih.this.zzbfx, zzih.this.zzbfx, zzih.this.zzbfx, false, null, null, null, null);
                    }
                }, new zzfs.zzb());
                zzbyu = true;
            }
        }
    }

    private void zzqj() {
        this.zzbyx = new zzfs.zze(zzqo().zzc(this.zzbgd));
    }

    private void zzqk() {
        this.zzbyw = new zzfq();
    }

    private void zzql() throws CancellationException, ExecutionException, InterruptedException, TimeoutException {
        this.zzbyy = zzqm().zza(this.mContext, this.zzbxr.zzcip.zzaow, zzd(this.zzbxr), this.zzbgd).get(zzbyt, TimeUnit.MILLISECONDS);
        this.zzbyy.zza(this.zzbfx, this.zzbfx, this.zzbfx, this.zzbfx, false, null, null, null, null);
    }

    public void zza(final zza zzaVar) {
        if (this.zzbyz) {
            zzfs.zze zzqp = zzqp();
            if (zzqp == null) {
                zzkd.zzcx("SharedJavascriptEngine not initialized");
                return;
            } else {
                zzqp.zza(new zzla.zzc<zzft>() { // from class: com.google.android.gms.internal.zzih.1
                    @Override // com.google.android.gms.internal.zzla.zzc
                    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
                    public void zzd(zzft zzftVar) {
                        zzaVar.zze(zzftVar);
                    }
                }, new zzla.zza() { // from class: com.google.android.gms.internal.zzih.2
                    @Override // com.google.android.gms.internal.zzla.zza
                    public void run() {
                        zzaVar.zzqq();
                    }
                });
                return;
            }
        }
        zzfp zzqn = zzqn();
        if (zzqn == null) {
            zzkd.zzcx("JavascriptEngine not initialized");
        } else {
            zzaVar.zze(zzqn);
        }
    }

    public void zzqg() {
        if (this.zzbyz) {
            zzqi();
        } else {
            zzqk();
        }
    }

    public void zzqh() throws CancellationException, ExecutionException, InterruptedException, TimeoutException {
        if (this.zzbyz) {
            zzqj();
        } else {
            zzql();
        }
    }

    protected zzfq zzqm() {
        return this.zzbyw;
    }

    protected zzfp zzqn() {
        return this.zzbyy;
    }

    protected zzfs zzqo() {
        return zzbyv;
    }

    protected zzfs.zze zzqp() {
        return this.zzbyx;
    }
}
