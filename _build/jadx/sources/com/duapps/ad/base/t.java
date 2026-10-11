package com.duapps.ad.base;

import android.support.v7.widget.helper.ItemTouchHelper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ToolboxThreadPool.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    private static final ThreadFactory f2089a = new ThreadFactory() { // from class: com.duapps.ad.base.t.1

        /* renamed from: a, reason: collision with root package name */
        private final AtomicInteger f2091a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "TooboxThread #" + this.f2091a.getAndIncrement());
        }
    };

    /* renamed from: b, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f2090b = new LinkedBlockingQueue(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
    private static t c;
    private ThreadPoolExecutor d = new ThreadPoolExecutor(5, 50, 1, TimeUnit.SECONDS, f2090b, f2089a);

    private t() {
    }

    public static synchronized t a() {
        t tVar;
        synchronized (t.class) {
            if (c == null) {
                c = new t();
            }
            tVar = c;
        }
        return tVar;
    }

    public void a(Runnable runnable) {
        this.d.execute(runnable);
    }

    public static void b(Runnable runnable) {
        a().a(runnable);
    }
}
