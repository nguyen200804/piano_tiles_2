package com.mopub.network;

import android.os.Handler;
import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.volley.Cache;
import com.mopub.volley.Network;
import com.mopub.volley.Request;
import com.mopub.volley.RequestQueue;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MoPubRequestQueue extends RequestQueue {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Map<Request<?>, a> f4722a;

    MoPubRequestQueue(Cache cache, Network network) {
        super(cache, network);
        this.f4722a = new HashMap(10);
    }

    public void addDelayedRequest(@NonNull Request<?> request, int delayMs) {
        Preconditions.checkNotNull(request);
        a(request, new a(this, request, delayMs));
    }

    @VisibleForTesting
    void a(@NonNull Request<?> request, @NonNull a aVar) {
        Preconditions.checkNotNull(aVar);
        if (this.f4722a.containsKey(request)) {
            cancel(request);
        }
        aVar.a();
        this.f4722a.put(request, aVar);
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(@NonNull RequestQueue.RequestFilter filter) {
        Preconditions.checkNotNull(filter);
        super.cancelAll(filter);
        Iterator<Map.Entry<Request<?>, a>> it = this.f4722a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Request<?>, a> next = it.next();
            if (filter.apply(next.getKey())) {
                next.getKey().cancel();
                next.getValue().b();
                it.remove();
            }
        }
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(@NonNull final Object tag) {
        Preconditions.checkNotNull(tag);
        super.cancelAll(tag);
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.mopub.network.MoPubRequestQueue.1
            @Override // com.mopub.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request) {
                return request.getTag() == tag;
            }
        });
    }

    public void cancel(@NonNull final Request<?> request) {
        Preconditions.checkNotNull(request);
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.mopub.network.MoPubRequestQueue.2
            @Override // com.mopub.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> _request) {
                return request == _request;
            }
        });
    }

    class a {

        /* renamed from: a, reason: collision with root package name */
        final int f4727a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        final Handler f4728b;

        @NonNull
        final Runnable c;

        a(MoPubRequestQueue moPubRequestQueue, @NonNull Request<?> request, int i) {
            this(request, i, new Handler());
        }

        @VisibleForTesting
        a(final Request<?> request, @NonNull int i, Handler handler) {
            this.f4727a = i;
            this.f4728b = handler;
            this.c = new Runnable() { // from class: com.mopub.network.MoPubRequestQueue.a.1
                @Override // java.lang.Runnable
                public void run() {
                    MoPubRequestQueue.this.f4722a.remove(request);
                    MoPubRequestQueue.this.add(request);
                }
            };
        }

        void a() {
            this.f4728b.postDelayed(this.c, this.f4727a);
        }

        void b() {
            this.f4728b.removeCallbacks(this.c);
        }
    }
}
