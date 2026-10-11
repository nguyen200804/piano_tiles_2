package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.internal.zzju;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzjg extends zzkc implements zzjh, zzjk {
    private final Context mContext;
    private final String zzboc;
    private final zzju.zza zzbxr;
    private final zzjm zzchm;
    private final zzjk zzchn;
    private final String zzcho;
    private final String zzchp;
    private int zzchq = 0;
    private int zzbyi = 3;
    private final Object zzail = new Object();

    public zzjg(Context context, String str, String str2, String str3, zzju.zza zzaVar, zzjm zzjmVar, zzjk zzjkVar) {
        this.mContext = context;
        this.zzboc = str;
        this.zzcho = str2;
        this.zzchp = str3;
        this.zzbxr = zzaVar;
        this.zzchm = zzjmVar;
        this.zzchn = zzjkVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(AdRequestParcel adRequestParcel, zzgk zzgkVar) {
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzboc)) {
                zzgkVar.zza(adRequestParcel, this.zzcho, this.zzchp);
            } else {
                zzgkVar.zzc(adRequestParcel, this.zzcho);
            }
        } catch (RemoteException e) {
            zzkd.zzd("Fail to load ad from adapter.", e);
            zza(this.zzboc, 0);
        }
    }

    private void zzk(long j) {
        while (true) {
            synchronized (this.zzail) {
                if (this.zzchq != 0) {
                    return;
                }
                if (!zzf(j)) {
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzkc
    public void onStop() {
    }

    @Override // com.google.android.gms.internal.zzjk
    public void zza(String str, int i) {
        synchronized (this.zzail) {
            this.zzchq = 2;
            this.zzbyi = i;
            this.zzail.notify();
        }
    }

    @Override // com.google.android.gms.internal.zzjh
    public void zzaw(int i) {
        zza(this.zzboc, 0);
    }

    @Override // com.google.android.gms.internal.zzjk
    public void zzcg(String str) {
        synchronized (this.zzail) {
            this.zzchq = 1;
            this.zzail.notify();
        }
    }

    @Override // com.google.android.gms.internal.zzkc
    public void zzew() {
        if (this.zzchm == null || this.zzchm.zzrv() == null || this.zzchm.zzru() == null) {
            return;
        }
        final zzjj zzrv = this.zzchm.zzrv();
        zzrv.zza((zzjk) this);
        zzrv.zza((zzjh) this);
        final AdRequestParcel adRequestParcel = this.zzbxr.zzcip.zzcar;
        final zzgk zzru = this.zzchm.zzru();
        try {
            if (zzru.isInitialized()) {
                com.google.android.gms.ads.internal.util.client.zza.zzcnb.post(new Runnable() { // from class: com.google.android.gms.internal.zzjg.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zzjg.this.zza(adRequestParcel, zzru);
                    }
                });
            } else {
                com.google.android.gms.ads.internal.util.client.zza.zzcnb.post(new Runnable() { // from class: com.google.android.gms.internal.zzjg.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            zzru.zza(com.google.android.gms.dynamic.zze.zzac(zzjg.this.mContext), adRequestParcel, (String) null, zzrv, zzjg.this.zzcho);
                        } catch (RemoteException e) {
                            String valueOf = String.valueOf(zzjg.this.zzboc);
                            zzkd.zzd(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "), e);
                            zzjg.this.zza(zzjg.this.zzboc, 0);
                        }
                    }
                });
            }
        } catch (RemoteException e) {
            zzkd.zzd("Fail to check if adapter is initialized.", e);
            zza(this.zzboc, 0);
        }
        zzk(com.google.android.gms.ads.internal.zzu.zzfu().elapsedRealtime());
        zzrv.zza((zzjk) null);
        zzrv.zza((zzjh) null);
        if (this.zzchq == 1) {
            this.zzchn.zzcg(this.zzboc);
        } else {
            this.zzchn.zza(this.zzboc, this.zzbyi);
        }
    }

    protected boolean zzf(long j) {
        long elapsedRealtime = 20000 - (com.google.android.gms.ads.internal.zzu.zzfu().elapsedRealtime() - j);
        if (elapsedRealtime <= 0) {
            return false;
        }
        try {
            this.zzail.wait(elapsedRealtime);
            return true;
        } catch (InterruptedException e) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.zzjh
    public void zzrs() {
        zza(this.zzbxr.zzcip.zzcar, this.zzchm.zzru());
    }
}
