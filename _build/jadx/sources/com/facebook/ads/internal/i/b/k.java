package com.facebook.ads.internal.i.b;

import android.util.Log;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class k {

    /* renamed from: a, reason: collision with root package name */
    private final n f2797a;

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.ads.internal.i.b.a f2798b;
    private volatile Thread f;
    private volatile boolean g;
    private final Object c = new Object();
    private final Object d = new Object();
    private volatile int h = -1;
    private final AtomicInteger e = new AtomicInteger();

    private class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k.this.e();
        }
    }

    public k(n nVar, com.facebook.ads.internal.i.b.a aVar) {
        this.f2797a = (n) j.a(nVar);
        this.f2798b = (com.facebook.ads.internal.i.b.a) j.a(aVar);
    }

    private void b() {
        int i = this.e.get();
        if (i >= 1) {
            this.e.set(0);
            throw new l("Error reading source " + i + " times");
        }
    }

    private void b(long j, long j2) {
        a(j, j2);
        synchronized (this.c) {
            this.c.notifyAll();
        }
    }

    private synchronized void c() {
        boolean z = (this.f == null || this.f.getState() == Thread.State.TERMINATED) ? false : true;
        if (!this.g && !this.f2798b.d() && !z) {
            this.f = new Thread(new a(), "Source reader for " + this.f2797a);
            this.f.start();
        }
    }

    private void d() {
        synchronized (this.c) {
            try {
                this.c.wait(1000L);
            } catch (InterruptedException e) {
                throw new l("Waiting source data is interrupted!", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        int i;
        int i2 = 0;
        try {
            try {
                i2 = this.f2798b.a();
                this.f2797a.a(i2);
                i = this.f2797a.a();
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int a2 = this.f2797a.a(bArr);
                        if (a2 == -1) {
                            f();
                            h();
                            b(i2, i);
                            return;
                        }
                        synchronized (this.d) {
                            if (g()) {
                                h();
                                b(i2, i);
                                return;
                            }
                            this.f2798b.a(bArr, a2);
                        }
                        i2 += a2;
                        b(i2, i);
                    }
                } catch (Throwable th) {
                    th = th;
                    this.e.incrementAndGet();
                    a(th);
                    h();
                    b(i2, i);
                }
            } catch (Throwable th2) {
                th = th2;
                h();
                b(i2, -1);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            h();
            b(i2, -1);
            throw th;
        }
    }

    private void f() {
        synchronized (this.d) {
            if (!g() && this.f2798b.a() == this.f2797a.a()) {
                this.f2798b.c();
            }
        }
    }

    private boolean g() {
        return Thread.currentThread().isInterrupted() || this.g;
    }

    private void h() {
        try {
            this.f2797a.b();
        } catch (l e) {
            a(new l("Error closing source " + this.f2797a, e));
        }
    }

    public int a(byte[] bArr, long j, int i) {
        m.a(bArr, j, i);
        while (!this.f2798b.d() && this.f2798b.a() < i + j && !this.g) {
            c();
            d();
            b();
        }
        int a2 = this.f2798b.a(bArr, j, i);
        if (this.f2798b.d() && this.h != 100) {
            this.h = 100;
            a(100);
        }
        return a2;
    }

    public void a() {
        synchronized (this.d) {
            Log.d("ProxyCache", "Shutdown proxy for " + this.f2797a);
            try {
                this.g = true;
                if (this.f != null) {
                    this.f.interrupt();
                }
                this.f2798b.b();
            } catch (l e) {
                a(e);
            }
        }
    }

    protected void a(int i) {
    }

    protected void a(long j, long j2) {
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1)) == 0 ? 100 : (int) ((100 * j) / j2);
        boolean z = i != this.h;
        if ((j2 >= 0) && z) {
            a(i);
        }
        this.h = i;
    }

    protected final void a(Throwable th) {
        if (th instanceof i) {
            Log.d("ProxyCache", "ProxyCache is interrupted");
        } else {
            Log.e("ProxyCache", "ProxyCache error", th);
        }
    }
}
