package com.mopub.volley;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DefaultRetryPolicy implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_TIMEOUT_MS = 2500;

    /* renamed from: a, reason: collision with root package name */
    private int f4752a;

    /* renamed from: b, reason: collision with root package name */
    private int f4753b;
    private final int c;
    private final float d;

    public DefaultRetryPolicy() {
        this(DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    public DefaultRetryPolicy(int initialTimeoutMs, int maxNumRetries, float backoffMultiplier) {
        this.f4752a = initialTimeoutMs;
        this.c = maxNumRetries;
        this.d = backoffMultiplier;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentTimeout() {
        return this.f4752a;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentRetryCount() {
        return this.f4753b;
    }

    public float getBackoffMultiplier() {
        return this.d;
    }

    @Override // com.mopub.volley.RetryPolicy
    public void retry(VolleyError error) throws VolleyError {
        this.f4753b++;
        this.f4752a = (int) (this.f4752a + (this.f4752a * this.d));
        if (!a()) {
            throw error;
        }
    }

    protected boolean a() {
        return this.f4753b <= this.c;
    }
}
