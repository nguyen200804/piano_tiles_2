package com.mopub.common.util;

import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Timer {

    /* renamed from: a, reason: collision with root package name */
    private long f4242a;

    /* renamed from: b, reason: collision with root package name */
    private long f4243b;
    private a c = a.STOPPED;

    private enum a {
        STARTED,
        STOPPED
    }

    public void start() {
        this.f4243b = System.nanoTime();
        this.c = a.STARTED;
    }

    public void stop() {
        if (this.c != a.STARTED) {
            throw new IllegalStateException("EventTimer was not started.");
        }
        this.c = a.STOPPED;
        this.f4242a = System.nanoTime();
    }

    public long getTime() {
        long j;
        if (this.c == a.STARTED) {
            j = System.nanoTime();
        } else {
            j = this.f4242a;
        }
        return TimeUnit.MILLISECONDS.convert(j - this.f4243b, TimeUnit.NANOSECONDS);
    }
}
