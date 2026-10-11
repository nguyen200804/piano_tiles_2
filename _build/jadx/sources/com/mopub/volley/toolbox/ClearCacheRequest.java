package com.mopub.volley.toolbox;

import android.os.Handler;
import android.os.Looper;
import com.mopub.volley.Cache;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ClearCacheRequest extends Request<Object> {

    /* renamed from: a, reason: collision with root package name */
    private final Cache f4779a;

    /* renamed from: b, reason: collision with root package name */
    private final Runnable f4780b;

    public ClearCacheRequest(Cache cache, Runnable callback) {
        super(0, null, null);
        this.f4779a = cache;
        this.f4780b = callback;
    }

    @Override // com.mopub.volley.Request
    public boolean isCanceled() {
        this.f4779a.clear();
        if (this.f4780b != null) {
            new Handler(Looper.getMainLooper()).postAtFrontOfQueue(this.f4780b);
            return true;
        }
        return true;
    }

    @Override // com.mopub.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.IMMEDIATE;
    }

    @Override // com.mopub.volley.Request
    protected Response<Object> a(NetworkResponse networkResponse) {
        return null;
    }

    @Override // com.mopub.volley.Request
    protected void deliverResponse(Object response) {
    }
}
