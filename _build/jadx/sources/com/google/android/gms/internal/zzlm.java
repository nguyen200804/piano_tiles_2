package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzab;
import java.util.HashMap;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzlm extends zzab.zza {
    private final Object zzail = new Object();
    private boolean zzaio = true;
    private final zzlh zzbgf;
    private final float zzcpy;
    private int zzcpz;
    private com.google.android.gms.ads.internal.client.zzac zzcqa;
    private boolean zzcqb;
    private boolean zzcqc;
    private float zzcqd;

    public zzlm(zzlh zzlhVar, float f) {
        this.zzbgf = zzlhVar;
        this.zzcpy = f;
    }

    private void zzd(String str, @Nullable Map<String, String> map) {
        final HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        com.google.android.gms.ads.internal.zzu.zzfq().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzlm.1
            @Override // java.lang.Runnable
            public void run() {
                zzlm.this.zzbgf.zza("pubVideoCmd", hashMap);
            }
        });
    }

    private void zzdd(String str) {
        zzd(str, null);
    }

    private void zzi(final int i, final int i2) {
        com.google.android.gms.ads.internal.zzu.zzfq().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzlm.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (zzlm.this.zzail) {
                    boolean z = i != i2;
                    boolean z2 = !zzlm.this.zzcqb && i2 == 1;
                    boolean z3 = z && i2 == 1;
                    boolean z4 = z && i2 == 2;
                    boolean z5 = z && i2 == 3;
                    zzlm.this.zzcqb = zzlm.this.zzcqb || z2;
                    if (zzlm.this.zzcqa == null) {
                        return;
                    }
                    if (z2) {
                        try {
                            zzlm.this.zzcqa.zzjb();
                        } catch (RemoteException e) {
                            zzkd.zzd("Unable to call onVideoStart()", e);
                        }
                    }
                    if (z3) {
                        try {
                            zzlm.this.zzcqa.zzjc();
                        } catch (RemoteException e2) {
                            zzkd.zzd("Unable to call onVideoPlay()", e2);
                        }
                    }
                    if (z4) {
                        try {
                            zzlm.this.zzcqa.zzjd();
                        } catch (RemoteException e3) {
                            zzkd.zzd("Unable to call onVideoPause()", e3);
                        }
                    }
                    if (z5) {
                        try {
                            zzlm.this.zzcqa.onVideoEnd();
                        } catch (RemoteException e4) {
                            zzkd.zzd("Unable to call onVideoEnd()", e4);
                        }
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public int getPlaybackState() {
        int i;
        synchronized (this.zzail) {
            i = this.zzcpz;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public boolean isMuted() {
        boolean z;
        synchronized (this.zzail) {
            z = this.zzcqc;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public void pause() {
        zzdd("pause");
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public void play() {
        zzdd("play");
    }

    public void zza(float f, int i, boolean z) {
        int i2;
        synchronized (this.zzail) {
            this.zzcqd = f;
            this.zzcqc = z;
            i2 = this.zzcpz;
            this.zzcpz = i;
        }
        zzi(i2, i);
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public void zza(com.google.android.gms.ads.internal.client.zzac zzacVar) {
        synchronized (this.zzail) {
            this.zzcqa = zzacVar;
        }
    }

    public void zzam(boolean z) {
        synchronized (this.zzail) {
            this.zzaio = z;
        }
        zzd("initialState", com.google.android.gms.common.util.zzf.zze("muteStart", z ? "1" : "0"));
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public float zziz() {
        return this.zzcpy;
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public float zzja() {
        float f;
        synchronized (this.zzail) {
            f = this.zzcqd;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public void zzm(boolean z) {
        zzdd(z ? "mute" : "unmute");
    }
}
