package com.mopub.network;

import com.mopub.volley.VolleyError;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class BackoffPolicy {

    /* renamed from: a, reason: collision with root package name */
    protected int f4715a;

    /* renamed from: b, reason: collision with root package name */
    protected int f4716b;
    protected int c;
    protected int d;
    protected int e;

    public abstract void backoff(VolleyError volleyError) throws VolleyError;

    public int getBackoffMs() {
        return this.f4715a;
    }

    public int getRetryCount() {
        return this.d;
    }

    public boolean hasAttemptRemaining() {
        return this.d < this.e;
    }
}
