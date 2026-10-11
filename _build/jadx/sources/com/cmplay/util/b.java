package com.cmplay.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: AsyncTaskEx.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class b<Params, Progress, Result> {
    private static final ThreadFactory e = new ThreadFactory() { // from class: com.cmplay.util.b.1

        /* renamed from: a, reason: collision with root package name */
        private final AtomicInteger f1709a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r) {
            return new Thread(r, "AsyncTask #" + this.f1709a.getAndIncrement());
        }
    };
    private static final BlockingQueue<Runnable> f = new LinkedBlockingQueue(10);

    /* renamed from: a, reason: collision with root package name */
    public static final Executor f1707a = new ThreadPoolExecutor(3, 128, 1, TimeUnit.SECONDS, f, e);

    /* renamed from: b, reason: collision with root package name */
    public static final Executor f1708b = new ThreadPoolExecutor(3, 128, 1, TimeUnit.SECONDS, f, e);
    public static final Executor c = new ThreadPoolExecutor(3, 128, 1, TimeUnit.SECONDS, f, e);
    public static final Executor d = new ThreadPoolExecutor(3, 128, 1, TimeUnit.SECONDS, f, e, new ThreadPoolExecutor.DiscardPolicy());
    private static final HandlerC0051b g = new HandlerC0051b(Looper.getMainLooper());
    private static volatile Executor h = f1707a;
    private volatile c k = c.PENDING;
    private final AtomicBoolean l = new AtomicBoolean();
    private final d<Params, Result> i = new d<Params, Result>() { // from class: com.cmplay.util.b.2
        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            b.this.l.set(true);
            Process.setThreadPriority(10);
            return (Result) b.this.d(b.this.a((Object[]) this.f1720b));
        }
    };
    private final FutureTask<Result> j = new FutureTask<Result>(this.i) { // from class: com.cmplay.util.b.3
        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                b.this.c((b) get());
            } catch (InterruptedException e2) {
                Log.w("AsyncTask", e2);
            } catch (CancellationException e3) {
                b.this.c((b) null);
            } catch (ExecutionException e4) {
                throw new RuntimeException("An error occured while executing doInBackground()", e4.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occured while executing doInBackground()", th);
            }
        }
    };

    /* compiled from: AsyncTaskEx.java */
    public enum c {
        PENDING,
        RUNNING,
        FINISHED
    }

    protected abstract Result a(Params... paramsArr);

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Result result) {
        if (!this.l.get()) {
            d(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Result d(Result result) {
        g.obtainMessage(1, new a(this, result)).sendToTarget();
        return result;
    }

    protected void a() {
    }

    protected void a(Result result) {
    }

    protected void b(Progress... progressArr) {
    }

    protected void b(Result result) {
        b();
    }

    protected void b() {
    }

    public final boolean c() {
        return this.j.isCancelled();
    }

    public final b<Params, Progress, Result> c(Params... paramsArr) {
        return a(h, paramsArr);
    }

    public final b<Params, Progress, Result> a(Executor executor, Params... paramsArr) {
        if (this.k != c.PENDING) {
            switch (this.k) {
                case RUNNING:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case FINISHED:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.k = c.RUNNING;
        a();
        this.i.f1720b = paramsArr;
        executor.execute(this.j);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Result result) {
        if (c()) {
            b((b<Params, Progress, Result>) result);
        } else {
            a((b<Params, Progress, Result>) result);
        }
        this.k = c.FINISHED;
    }

    /* compiled from: AsyncTaskEx.java */
    /* renamed from: com.cmplay.util.b$b, reason: collision with other inner class name */
    private static class HandlerC0051b extends Handler {
        public HandlerC0051b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            a aVar = (a) msg.obj;
            switch (msg.what) {
                case 1:
                    aVar.f1713a.e(aVar.f1714b[0]);
                    break;
                case 2:
                    aVar.f1713a.b((Object[]) aVar.f1714b);
                    break;
            }
        }
    }

    /* compiled from: AsyncTaskEx.java */
    private static abstract class d<Params, Result> implements Callable<Result> {

        /* renamed from: b, reason: collision with root package name */
        Params[] f1720b;

        private d() {
        }
    }

    /* compiled from: AsyncTaskEx.java */
    private static class a<Data> {

        /* renamed from: a, reason: collision with root package name */
        final b f1713a;

        /* renamed from: b, reason: collision with root package name */
        final Data[] f1714b;

        a(b bVar, Data... dataArr) {
            this.f1713a = bVar;
            this.f1714b = dataArr;
        }
    }
}
