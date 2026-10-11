package com.b.a;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: QueuedWork.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private static List<WeakReference<ScheduledFuture<?>>> f646a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    private static ExecutorService f647b = Executors.newSingleThreadExecutor();
    private static long c = 5;
    private static ScheduledExecutorService d = Executors.newSingleThreadScheduledExecutor();

    public static void a(Runnable runnable) {
        if (f647b.isShutdown()) {
            f647b = Executors.newSingleThreadExecutor();
        }
        f647b.execute(runnable);
    }

    public static void a() {
        try {
            Iterator<WeakReference<ScheduledFuture<?>>> it = f646a.iterator();
            while (it.hasNext()) {
                ScheduledFuture<?> scheduledFuture = it.next().get();
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
            }
            f646a.clear();
            if (!f647b.isShutdown()) {
                f647b.shutdown();
            }
            if (!d.isShutdown()) {
                d.shutdown();
            }
            f647b.awaitTermination(c, TimeUnit.SECONDS);
            d.awaitTermination(c, TimeUnit.SECONDS);
        } catch (Exception e) {
        }
    }

    public static synchronized void b(Runnable runnable) {
        synchronized (i.class) {
            if (d.isShutdown()) {
                d = Executors.newSingleThreadScheduledExecutor();
            }
            d.execute(runnable);
        }
    }

    public static synchronized void a(Runnable runnable, long j) {
        synchronized (i.class) {
            if (d.isShutdown()) {
                d = Executors.newSingleThreadScheduledExecutor();
            }
            f646a.add(new WeakReference<>(d.schedule(runnable, j, TimeUnit.MILLISECONDS)));
        }
    }
}
