package com.mopub.mobileads;

import android.os.Handler;
import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class RepeatingHandlerRunnable implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    protected final Handler f4397a;

    /* renamed from: b, reason: collision with root package name */
    protected volatile long f4398b;
    private volatile boolean c;

    public abstract void doWork();

    public RepeatingHandlerRunnable(@NonNull Handler handler) {
        Preconditions.checkNotNull(handler);
        this.f4397a = handler;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.c) {
            doWork();
            this.f4397a.postDelayed(this, this.f4398b);
        }
    }

    public void startRepeating(long intervalMillis) {
        Preconditions.checkArgument(intervalMillis > 0, "intervalMillis must be greater than 0. Saw: %d", Long.valueOf(intervalMillis));
        this.f4398b = intervalMillis;
        if (!this.c) {
            this.c = true;
            this.f4397a.post(this);
        }
    }

    public void stop() {
        this.c = false;
    }

    @VisibleForTesting
    @Deprecated
    public boolean isRunning() {
        return this.c;
    }
}
