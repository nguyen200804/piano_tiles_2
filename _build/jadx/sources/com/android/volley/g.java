package com.android.volley;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* compiled from: NetworkDispatcher.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g extends Thread {

    /* renamed from: a, reason: collision with root package name */
    private final BlockingQueue<l<?>> f241a;

    /* renamed from: b, reason: collision with root package name */
    private final f f242b;
    private final b c;
    private final o d;
    private volatile boolean e = false;

    public g(BlockingQueue<l<?>> blockingQueue, f fVar, b bVar, o oVar) {
        this.f241a = blockingQueue;
        this.f242b = fVar;
        this.c = bVar;
        this.d = oVar;
    }

    public void a() {
        this.e = true;
        interrupt();
    }

    @TargetApi(14)
    private void a(l<?> lVar) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(lVar.b());
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                l<?> take = this.f241a.take();
                try {
                    take.a("network-queue-take");
                    if (take.g()) {
                        take.b("network-discard-cancelled");
                    } else {
                        a(take);
                        i a2 = this.f242b.a(take);
                        take.a("network-http-complete");
                        if (a2.d && take.v()) {
                            take.b("not-modified");
                        } else {
                            n<?> a3 = take.a(a2);
                            take.a("network-parse-complete");
                            if (take.q() && a3.f254b != null) {
                                this.c.a(take.d(), a3.f254b);
                                take.a("network-cache-written");
                            }
                            take.u();
                            this.d.a(take, a3);
                        }
                    }
                } catch (s e) {
                    e.a(SystemClock.elapsedRealtime() - elapsedRealtime);
                    a(take, e);
                } catch (Exception e2) {
                    t.a(e2, "Unhandled exception %s", e2.toString());
                    s sVar = new s(e2);
                    sVar.a(SystemClock.elapsedRealtime() - elapsedRealtime);
                    this.d.a(take, sVar);
                }
            } catch (InterruptedException e3) {
                if (this.e) {
                    return;
                }
            }
        }
    }

    private void a(l<?> lVar, s sVar) {
        this.d.a(lVar, lVar.a(sVar));
    }
}
