package com.mopub.volley;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NetworkDispatcher extends Thread {

    /* renamed from: a, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f4759a;

    /* renamed from: b, reason: collision with root package name */
    private final Network f4760b;
    private final Cache c;
    private final ResponseDelivery d;
    private volatile boolean e = false;

    public NetworkDispatcher(BlockingQueue<Request<?>> queue, Network network, Cache cache, ResponseDelivery delivery) {
        this.f4759a = queue;
        this.f4760b = network;
        this.c = cache;
        this.d = delivery;
    }

    public void quit() {
        this.e = true;
        interrupt();
    }

    @TargetApi(14)
    private void a(Request<?> request) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(request.getTrafficStatsTag());
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                Request<?> take = this.f4759a.take();
                try {
                    take.addMarker("network-queue-take");
                    if (take.isCanceled()) {
                        take.b("network-discard-cancelled");
                    } else {
                        a(take);
                        NetworkResponse performRequest = this.f4760b.performRequest(take);
                        take.addMarker("network-http-complete");
                        if (performRequest.notModified && take.hasHadResponseDelivered()) {
                            take.b("not-modified");
                        } else {
                            Response<?> a2 = take.a(performRequest);
                            take.addMarker("network-parse-complete");
                            if (take.shouldCache() && a2.cacheEntry != null) {
                                this.c.put(take.getCacheKey(), a2.cacheEntry);
                                take.addMarker("network-cache-written");
                            }
                            take.markDelivered();
                            this.d.postResponse(take, a2);
                        }
                    }
                } catch (VolleyError e) {
                    e.a(SystemClock.elapsedRealtime() - elapsedRealtime);
                    a(take, e);
                } catch (Exception e2) {
                    VolleyLog.e(e2, "Unhandled exception %s", e2.toString());
                    VolleyError volleyError = new VolleyError(e2);
                    volleyError.a(SystemClock.elapsedRealtime() - elapsedRealtime);
                    this.d.postError(take, volleyError);
                }
            } catch (InterruptedException e3) {
                if (this.e) {
                    return;
                }
            }
        }
    }

    private void a(Request<?> request, VolleyError volleyError) {
        this.d.postError(request, request.a(volleyError));
    }
}
