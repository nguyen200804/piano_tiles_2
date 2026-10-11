package com.google.android.gms.internal;

import android.os.Process;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class zzrn implements Runnable {
    private final int mPriority;
    private final Runnable zzw;

    public zzrn(Runnable runnable, int i) {
        this.zzw = runnable;
        this.mPriority = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(this.mPriority);
        this.zzw.run();
    }
}
