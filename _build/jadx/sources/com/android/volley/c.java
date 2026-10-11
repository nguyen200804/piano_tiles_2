package com.android.volley;

import android.os.Process;
import com.android.volley.b;
import java.util.concurrent.BlockingQueue;

/* compiled from: CacheDispatcher.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends Thread {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f230a = t.f258b;

    /* renamed from: b, reason: collision with root package name */
    private final BlockingQueue<l<?>> f231b;
    private final BlockingQueue<l<?>> c;
    private final b d;
    private final o e;
    private volatile boolean f = false;

    public c(BlockingQueue<l<?>> blockingQueue, BlockingQueue<l<?>> blockingQueue2, b bVar, o oVar) {
        this.f231b = blockingQueue;
        this.c = blockingQueue2;
        this.d = bVar;
        this.e = oVar;
    }

    public void a() {
        this.f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f230a) {
            t.a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.d.a();
        while (true) {
            try {
                final l<?> take = this.f231b.take();
                take.a("cache-queue-take");
                if (take.g()) {
                    take.b("cache-discard-canceled");
                } else {
                    b.a a2 = this.d.a(take.d());
                    if (a2 == null) {
                        take.a("cache-miss");
                        this.c.put(take);
                    } else if (a2.a()) {
                        take.a("cache-hit-expired");
                        take.a(a2);
                        this.c.put(take);
                    } else {
                        take.a("cache-hit");
                        n<?> a3 = take.a(new i(a2.f228a, a2.g));
                        take.a("cache-hit-parsed");
                        if (!a2.b()) {
                            this.e.a(take, a3);
                        } else {
                            take.a("cache-hit-refresh-needed");
                            take.a(a2);
                            a3.d = true;
                            this.e.a(take, a3, new Runnable() { // from class: com.android.volley.c.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        c.this.c.put(take);
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
