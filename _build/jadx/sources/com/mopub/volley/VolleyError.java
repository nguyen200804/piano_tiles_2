package com.mopub.volley;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VolleyError extends Exception {

    /* renamed from: a, reason: collision with root package name */
    private long f4770a;
    public final NetworkResponse networkResponse;

    public VolleyError() {
        this.networkResponse = null;
    }

    public VolleyError(NetworkResponse response) {
        this.networkResponse = response;
    }

    public VolleyError(String exceptionMessage) {
        super(exceptionMessage);
        this.networkResponse = null;
    }

    public VolleyError(String exceptionMessage, Throwable reason) {
        super(exceptionMessage, reason);
        this.networkResponse = null;
    }

    public VolleyError(Throwable cause) {
        super(cause);
        this.networkResponse = null;
    }

    void a(long j) {
        this.f4770a = j;
    }

    public long getNetworkTimeMs() {
        return this.f4770a;
    }
}
