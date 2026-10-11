package com.facebook.ads.internal.e;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.AsyncTask;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.facebook.ads.internal.e.f;
import com.facebook.ads.internal.util.o;
import com.mopub.common.Constants;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2686a = "SELECT tokens." + h.f2697a.f2683b + ", tokens." + h.f2698b.f2683b + ", " + Constants.VIDEO_TRACKING_EVENTS_KEY + "." + c.f2684a.f2683b + ", " + Constants.VIDEO_TRACKING_EVENTS_KEY + "." + c.c.f2683b + ", " + Constants.VIDEO_TRACKING_EVENTS_KEY + "." + c.d.f2683b + ", " + Constants.VIDEO_TRACKING_EVENTS_KEY + "." + c.e.f2683b + ", " + Constants.VIDEO_TRACKING_EVENTS_KEY + "." + c.f.f2683b + ", " + Constants.VIDEO_TRACKING_EVENTS_KEY + "." + c.g.f2683b + ", " + Constants.VIDEO_TRACKING_EVENTS_KEY + "." + c.h.f2683b + " FROM " + Constants.VIDEO_TRACKING_EVENTS_KEY + " JOIN tokens ON " + Constants.VIDEO_TRACKING_EVENTS_KEY + "." + c.f2685b.f2683b + " = tokens." + h.f2697a.f2683b + " ORDER BY " + Constants.VIDEO_TRACKING_EVENTS_KEY + "." + c.e.f2683b + " ASC";

    /* renamed from: b, reason: collision with root package name */
    private static final int f2687b = Runtime.getRuntime().availableProcessors();
    private static final int c = Math.max(2, Math.min(f2687b - 1, 4));
    private static final int d = (f2687b * 2) + 1;
    private static final ThreadFactory e = new ThreadFactory() { // from class: com.facebook.ads.internal.e.d.1

        /* renamed from: a, reason: collision with root package name */
        private final AtomicInteger f2688a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "DatabaseTask #" + this.f2688a.getAndIncrement());
        }
    };
    private static final BlockingQueue<Runnable> f = new LinkedBlockingQueue(128);
    private static final Executor g;
    private final Context h;
    private SQLiteOpenHelper n;
    private final ReentrantReadWriteLock k = new ReentrantReadWriteLock();
    private final Lock l = this.k.readLock();
    private final Lock m = this.k.writeLock();
    private final h i = new h(this);
    private final c j = new c(this);

    private static class a<T> extends AsyncTask<Void, Void, T> {

        /* renamed from: a, reason: collision with root package name */
        private final f<T> f2691a;

        /* renamed from: b, reason: collision with root package name */
        private final com.facebook.ads.internal.e.a<T> f2692b;
        private f.a c;

        a(f<T> fVar, com.facebook.ads.internal.e.a<T> aVar) {
            this.f2691a = fVar;
            this.f2692b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public T doInBackground(Void... voidArr) {
            T t = null;
            try {
                t = this.f2691a.b();
                this.c = this.f2691a.c();
                return t;
            } catch (SQLiteException e) {
                this.c = f.a.UNKNOWN;
                return t;
            }
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(T t) {
            if (this.c == null) {
                this.f2692b.a(t);
            } else {
                this.f2692b.a(this.c.a(), this.c.b());
            }
            this.f2692b.a();
        }
    }

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(c, d, 30L, TimeUnit.SECONDS, f, e);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        g = threadPoolExecutor;
    }

    public d(Context context) {
        this.h = context;
    }

    private synchronized SQLiteDatabase h() {
        if (this.n == null) {
            this.n = new e(this.h, this);
        }
        return this.n.getWritableDatabase();
    }

    @WorkerThread
    public Cursor a(int i) {
        this.l.lock();
        try {
            return a().rawQuery(f2686a + " LIMIT " + String.valueOf(i), null);
        } finally {
            this.l.unlock();
        }
    }

    public SQLiteDatabase a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot call getDatabase from the UI thread!");
        }
        return h();
    }

    public <T> AsyncTask a(f<T> fVar, com.facebook.ads.internal.e.a<T> aVar) {
        return com.facebook.ads.internal.util.g.a(g, new a(fVar, aVar), new Void[0]);
    }

    public AsyncTask a(final com.facebook.ads.internal.g.d dVar, com.facebook.ads.internal.e.a<String> aVar) {
        return a(new i<String>() { // from class: com.facebook.ads.internal.e.d.2
            @Override // com.facebook.ads.internal.e.f
            @Nullable
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b() {
                SQLiteDatabase sQLiteDatabase;
                SQLiteDatabase sQLiteDatabase2;
                if (TextUtils.isEmpty(dVar.d())) {
                    return null;
                }
                d.this.m.lock();
                try {
                    sQLiteDatabase = d.this.a();
                    try {
                        sQLiteDatabase.beginTransaction();
                        String a2 = d.this.j.a(d.this.i.a(dVar.d()), dVar.a().c, dVar.b(), dVar.e(), dVar.f(), dVar.g(), dVar.h());
                        sQLiteDatabase.setTransactionSuccessful();
                        if (sQLiteDatabase != null && sQLiteDatabase.inTransaction()) {
                            try {
                                sQLiteDatabase.endTransaction();
                            } catch (Exception e2) {
                                o.a(e2, d.this.h);
                            }
                        }
                        d.this.m.unlock();
                        return a2;
                    } catch (Exception e3) {
                        e = e3;
                        sQLiteDatabase2 = sQLiteDatabase;
                        try {
                            a(f.a.DATABASE_INSERT);
                            o.a(e, d.this.h);
                            if (sQLiteDatabase2 != null && sQLiteDatabase2.inTransaction()) {
                                try {
                                    sQLiteDatabase2.endTransaction();
                                } catch (Exception e4) {
                                    o.a(e4, d.this.h);
                                }
                            }
                            d.this.m.unlock();
                            return null;
                        } catch (Throwable th) {
                            th = th;
                            sQLiteDatabase = sQLiteDatabase2;
                            if (sQLiteDatabase != null && sQLiteDatabase.inTransaction()) {
                                try {
                                    sQLiteDatabase.endTransaction();
                                } catch (Exception e5) {
                                    o.a(e5, d.this.h);
                                }
                            }
                            d.this.m.unlock();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (sQLiteDatabase != null) {
                            sQLiteDatabase.endTransaction();
                        }
                        d.this.m.unlock();
                        throw th;
                    }
                } catch (Exception e6) {
                    e = e6;
                    sQLiteDatabase2 = null;
                } catch (Throwable th3) {
                    th = th3;
                    sQLiteDatabase = null;
                }
            }
        }, aVar);
    }

    @WorkerThread
    public boolean a(String str) {
        this.m.lock();
        try {
            return this.j.a(str);
        } finally {
            this.m.unlock();
        }
    }

    public synchronized void b() {
        for (g gVar : c()) {
            gVar.e();
        }
        if (this.n != null) {
            this.n.close();
            this.n = null;
        }
    }

    public g[] c() {
        return new g[]{this.i, this.j};
    }

    public Cursor d() {
        this.l.lock();
        try {
            return this.j.c();
        } finally {
            this.l.unlock();
        }
    }

    @WorkerThread
    public Cursor e() {
        this.l.lock();
        try {
            return this.j.d();
        } finally {
            this.l.unlock();
        }
    }

    @WorkerThread
    public Cursor f() {
        this.l.lock();
        try {
            return this.i.c();
        } finally {
            this.l.unlock();
        }
    }

    @WorkerThread
    public void g() {
        this.m.lock();
        try {
            this.i.d();
        } finally {
            this.m.unlock();
        }
    }
}
