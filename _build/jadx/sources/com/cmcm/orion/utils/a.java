package com.cmcm.orion.utils;

import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;

/* compiled from: BackgroundThread.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Handler f1056a = null;

    /* renamed from: b, reason: collision with root package name */
    private static HandlerThread f1057b;

    private static void a() {
        try {
            if (f1057b == null || !f1057b.isAlive()) {
                HandlerThread handlerThread = new HandlerThread("IOThread");
                f1057b = handlerThread;
                handlerThread.start();
                f1056a = new Handler(f1057b.getLooper());
            }
            if (f1056a == null) {
                f1056a = new Handler(f1057b.getLooper());
            }
        } catch (Throwable th) {
            f1056a = null;
            new StringBuilder("ensureIOThread: ").append(th.getMessage());
        }
    }

    /* compiled from: BackgroundThread.java */
    /* renamed from: com.cmcm.orion.utils.a$a, reason: collision with other inner class name */
    static class RunnableC0025a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private Runnable f1060a;

        public RunnableC0025a(Runnable runnable) {
            this.f1060a = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f1060a != null) {
                System.currentTimeMillis();
                this.f1060a.run();
                System.currentTimeMillis();
            }
        }
    }

    public static void a(Runnable runnable) {
        if (runnable != null) {
            synchronized (a.class) {
                a();
                if (f1056a != null) {
                    f1056a.post(new RunnableC0025a(runnable));
                }
            }
        }
    }

    public static void a(Runnable runnable, long j) {
        synchronized (a.class) {
            a();
            if (f1056a != null) {
                f1056a.postDelayed(new RunnableC0025a(runnable), j);
            }
        }
    }

    public static void b(Runnable runnable) {
        synchronized (a.class) {
            a();
            f1056a.post(new RunnableC0025a(runnable));
        }
    }

    public static <T> void a(final AsyncTask<T, ?, ?> asyncTask, final T... tArr) {
        e.a(new Runnable() { // from class: com.cmcm.orion.utils.a.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (Build.VERSION.SDK_INT >= 11) {
                        asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, tArr);
                    } else {
                        asyncTask.execute(tArr);
                    }
                } catch (Throwable th) {
                }
            }
        });
    }

    private a() {
    }
}
