package com.google.android.gms.internal;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzfb extends zzkc {
    final zzlh zzbgf;
    final zzfd zzbjb;
    private final String zzbjc;

    zzfb(zzlh zzlhVar, zzfd zzfdVar, String str) {
        this.zzbgf = zzlhVar;
        this.zzbjb = zzfdVar;
        this.zzbjc = str;
        com.google.android.gms.ads.internal.zzu.zzgj().zza(this);
    }

    @Override // com.google.android.gms.internal.zzkc
    public void onStop() {
        this.zzbjb.abort();
    }

    @Override // com.google.android.gms.internal.zzkc
    public void zzew() {
        try {
            this.zzbjb.zzaz(this.zzbjc);
        } finally {
            zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.internal.zzfb.1
                @Override // java.lang.Runnable
                public void run() {
                    com.google.android.gms.ads.internal.zzu.zzgj().zzb(zzfb.this);
                }
            });
        }
    }
}
