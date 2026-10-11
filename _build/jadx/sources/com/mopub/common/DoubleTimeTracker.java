package com.mopub.common;

import android.os.SystemClock;
import android.support.annotation.NonNull;
import com.mopub.common.logging.MoPubLog;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DoubleTimeTracker {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private volatile a f4145a;

    /* renamed from: b, reason: collision with root package name */
    private long f4146b;
    private long c;

    @NonNull
    private final Clock d;

    public interface Clock {
        long elapsedRealTime();
    }

    private enum a {
        STARTED,
        PAUSED
    }

    public DoubleTimeTracker() {
        this(new b());
    }

    @VisibleForTesting
    public DoubleTimeTracker(@NonNull Clock clock) {
        this.d = clock;
        this.f4145a = a.PAUSED;
    }

    public synchronized void start() {
        if (this.f4145a == a.STARTED) {
            MoPubLog.v("DoubleTimeTracker already started.");
        } else {
            this.f4145a = a.STARTED;
            this.f4146b = this.d.elapsedRealTime();
        }
    }

    public synchronized void pause() {
        if (this.f4145a == a.PAUSED) {
            MoPubLog.v("DoubleTimeTracker already paused.");
        } else {
            this.c += a();
            this.f4146b = 0L;
            this.f4145a = a.PAUSED;
        }
    }

    public synchronized double getInterval() {
        return this.c + a();
    }

    private synchronized long a() {
        return this.f4145a == a.PAUSED ? 0L : this.d.elapsedRealTime() - this.f4146b;
    }

    private static class b implements Clock {
        private b() {
        }

        @Override // com.mopub.common.DoubleTimeTracker.Clock
        public long elapsedRealTime() {
            return SystemClock.elapsedRealtime();
        }
    }
}
