package com.mopub.volley;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface RetryPolicy {
    int getCurrentRetryCount();

    int getCurrentTimeout();

    void retry(VolleyError volleyError) throws VolleyError;
}
