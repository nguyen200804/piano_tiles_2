package com.google.android.gms.internal;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzkr {
    private long zzcms;
    private long zzcmt = Long.MIN_VALUE;
    private Object zzail = new Object();

    public zzkr(long j) {
        this.zzcms = j;
    }

    public boolean tryAcquire() {
        boolean z;
        synchronized (this.zzail) {
            long elapsedRealtime = com.google.android.gms.ads.internal.zzu.zzfu().elapsedRealtime();
            if (this.zzcmt + this.zzcms > elapsedRealtime) {
                z = false;
            } else {
                this.zzcmt = elapsedRealtime;
                z = true;
            }
        }
        return z;
    }
}
