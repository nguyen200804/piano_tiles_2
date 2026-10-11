package com.mopub.network;

import com.mopub.common.VisibleForTesting;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.NoConnectionError;
import com.mopub.volley.VolleyError;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ScribeBackoffPolicy extends BackoffPolicy {
    public ScribeBackoffPolicy() {
        this(60000, 5, 2);
    }

    @VisibleForTesting
    ScribeBackoffPolicy(int defaultBackoffTimeMs, int maxRetries, int backoffMultiplier) {
        this.c = defaultBackoffTimeMs;
        this.e = maxRetries;
        this.f4716b = backoffMultiplier;
    }

    @Override // com.mopub.network.BackoffPolicy
    public void backoff(VolleyError volleyError) throws VolleyError {
        if (!hasAttemptRemaining()) {
            throw volleyError;
        }
        if (volleyError instanceof NoConnectionError) {
            a();
            return;
        }
        NetworkResponse networkResponse = volleyError.networkResponse;
        if (networkResponse == null) {
            throw volleyError;
        }
        if (networkResponse.statusCode == 503 || networkResponse.statusCode == 504) {
            a();
            return;
        }
        throw volleyError;
    }

    private void a() {
        this.f4715a = (int) (Math.pow(this.f4716b, this.d) * this.c);
        this.d++;
    }
}
