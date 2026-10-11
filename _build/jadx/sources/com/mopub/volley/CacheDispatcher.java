package com.mopub.volley;

import android.os.Process;
import com.mopub.volley.Cache;
import java.util.concurrent.BlockingQueue;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CacheDispatcher extends Thread {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f4748a = VolleyLog.DEBUG;

    /* renamed from: b, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f4749b;
    private final BlockingQueue<Request<?>> c;
    private final Cache d;
    private final ResponseDelivery e;
    private volatile boolean f = false;

    public CacheDispatcher(BlockingQueue<Request<?>> cacheQueue, BlockingQueue<Request<?>> networkQueue, Cache cache, ResponseDelivery delivery) {
        this.f4749b = cacheQueue;
        this.c = networkQueue;
        this.d = cache;
        this.e = delivery;
    }

    public void quit() {
        this.f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f4748a) {
            VolleyLog.v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.d.initialize();
        while (true) {
            try {
                final Request<?> take = this.f4749b.take();
                take.addMarker("cache-queue-take");
                if (take.isCanceled()) {
                    take.b("cache-discard-canceled");
                } else {
                    Cache.Entry entry = this.d.get(take.getCacheKey());
                    if (entry == null) {
                        take.addMarker("cache-miss");
                        this.c.put(take);
                    } else if (entry.isExpired()) {
                        take.addMarker("cache-hit-expired");
                        take.setCacheEntry(entry);
                        this.c.put(take);
                    } else {
                        take.addMarker("cache-hit");
                        Response<?> a2 = take.a(new NetworkResponse(entry.data, entry.responseHeaders));
                        take.addMarker("cache-hit-parsed");
                        if (!entry.refreshNeeded()) {
                            this.e.postResponse(take, a2);
                        } else {
                            take.addMarker("cache-hit-refresh-needed");
                            take.setCacheEntry(entry);
                            a2.intermediate = true;
                            this.e.postResponse(take, a2, new Runnable() { // from class: com.mopub.volley.CacheDispatcher.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        CacheDispatcher.this.c.put(take);
                                    } catch (InterruptedException e) {
                                    }
                                }
                            });
                        }
                    }
                }
            } catch (InterruptedException e) {
                if (this.f) {
                    return;
                }
            }
        }
    }
}
