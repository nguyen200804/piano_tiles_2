package com.google.android.gms.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzko {
    private HandlerThread zzcmm = null;
    private Handler mHandler = null;
    private int zzcmn = 0;
    private final Object zzail = new Object();

    public Looper zztq() {
        Looper looper;
        synchronized (this.zzail) {
            if (this.zzcmn != 0) {
                com.google.android.gms.common.internal.zzab.zzb(this.zzcmm, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.zzcmm == null) {
                zzkd.v("Starting the looper thread.");
                this.zzcmm = new HandlerThread("LooperProvider");
                this.zzcmm.start();
                this.mHandler = new Handler(this.zzcmm.getLooper());
                zzkd.v("Looper thread started.");
            } else {
                zzkd.v("Resuming the looper thread");
                this.zzail.notifyAll();
            }
            this.zzcmn++;
            looper = this.zzcmm.getLooper();
        }
        return looper;
    }

    public void zztr() {
        synchronized (this.zzail) {
            com.google.android.gms.common.internal.zzab.zzb(this.zzcmn > 0, "Invalid state: release() called more times than expected.");
            int i = this.zzcmn - 1;
            this.zzcmn = i;
            if (i == 0) {
                this.mHandler.post(new Runnable() { // from class: com.google.android.gms.internal.zzko.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (zzko.this.zzail) {
                            zzkd.v("Suspending the looper thread");
                            while (zzko.this.zzcmn == 0) {
                                try {
                                    zzko.this.zzail.wait();
                                    zzkd.v("Looper thread resumed");
                                } catch (InterruptedException e) {
                                    zzkd.v("Looper thread interrupted.");
                                }
                            }
                        }
                    }
                });
            }
        }
    }
}
