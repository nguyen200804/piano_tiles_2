package com.facebook.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;

/* compiled from: LockOnGetVariable.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class r<T> {

    /* renamed from: a, reason: collision with root package name */
    private T f3246a;

    /* renamed from: b, reason: collision with root package name */
    private CountDownLatch f3247b = new CountDownLatch(1);

    public r(final Callable<T> callable) {
        com.facebook.l.d().execute(new FutureTask(new Callable<Void>() { // from class: com.facebook.internal.r.1
            @Override // java.util.concurrent.Callable
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void call() throws Exception {
                try {
                    r.this.f3246a = callable.call();
                    r.this.f3247b.countDown();
                    return null;
                } catch (Throwable th) {
                    r.this.f3247b.countDown();
                    throw th;
                }
            }
        }));
    }

    public T a() {
        b();
        return this.f3246a;
    }

    private void b() {
        if (this.f3247b != null) {
            try {
                this.f3247b.await();
            } catch (InterruptedException e) {
            }
        }
    }
}
