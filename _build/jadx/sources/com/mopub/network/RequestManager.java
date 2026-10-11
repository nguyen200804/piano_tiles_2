package com.mopub.network;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.RequestManager.RequestFactory;
import com.mopub.volley.Request;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class RequestManager<T extends RequestFactory> {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    protected Request<?> f4736a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    protected T f4737b;

    @Nullable
    protected BackoffPolicy c;

    @NonNull
    protected Handler d;

    public interface RequestFactory {
    }

    @NonNull
    abstract Request<?> a();

    public RequestManager(@NonNull Looper looper) {
        this.d = new Handler(looper);
    }

    public boolean isAtCapacity() {
        return this.f4736a != null;
    }

    public void makeRequest(@NonNull T requestFactory, @NonNull BackoffPolicy backoffPolicy) {
        Preconditions.checkNotNull(requestFactory);
        Preconditions.checkNotNull(backoffPolicy);
        cancelRequest();
        this.f4737b = requestFactory;
        this.c = backoffPolicy;
        b();
    }

    public void cancelRequest() {
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue != null && this.f4736a != null) {
            requestQueue.cancel(this.f4736a);
        }
        c();
    }

    @VisibleForTesting
    void b() {
        this.f4736a = a();
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue == null) {
            MoPubLog.d("MoPubRequest queue is null. Clearing request.");
            c();
        } else if (this.c.getRetryCount() == 0) {
            requestQueue.add(this.f4736a);
        } else {
            requestQueue.addDelayedRequest(this.f4736a, this.c.getBackoffMs());
        }
    }

    @VisibleForTesting
    void c() {
        this.f4736a = null;
        this.f4737b = null;
        this.c = null;
    }
}
