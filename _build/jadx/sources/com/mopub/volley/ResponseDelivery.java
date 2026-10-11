package com.mopub.volley;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface ResponseDelivery {
    void postError(Request<?> request, VolleyError volleyError);

    void postResponse(Request<?> request, Response<?> response);

    void postResponse(Request<?> request, Response<?> response, Runnable runnable);
}
