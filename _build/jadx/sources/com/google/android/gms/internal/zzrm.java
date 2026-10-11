package com.google.android.gms.internal;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzrm implements ThreadFactory {
    private final String Br;
    private final AtomicInteger Bs;
    private final ThreadFactory Bt;
    private final int mPriority;

    public zzrm(String str) {
        this(str, 0);
    }

    public zzrm(String str, int i) {
        this.Bs = new AtomicInteger();
        this.Bt = Executors.defaultThreadFactory();
        this.Br = (String) com.google.android.gms.common.internal.zzab.zzb(str, "Name must not be null");
        this.mPriority = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.Bt.newThread(new zzrn(runnable, this.mPriority));
        String str = this.Br;
        newThread.setName(new StringBuilder(String.valueOf(str).length() + 13).append(str).append("[").append(this.Bs.getAndIncrement()).append("]").toString());
        return newThread;
    }
}
