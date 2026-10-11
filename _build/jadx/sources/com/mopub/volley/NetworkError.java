package com.mopub.volley;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NetworkError extends VolleyError {
    public NetworkError() {
    }

    public NetworkError(Throwable cause) {
        super(cause);
    }

    public NetworkError(NetworkResponse networkResponse) {
        super(networkResponse);
    }
}
