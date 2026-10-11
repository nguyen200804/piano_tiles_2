package com.facebook.internal;

import java.util.concurrent.Executor;

/* compiled from: WorkQueue.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ad {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f3179a;

    /* renamed from: b, reason: collision with root package name */
    private final Object f3180b;
    private b c;
    private final int d;
    private final Executor e;
    private b f;
    private int g;

    /* compiled from: WorkQueue.java */
    public interface a {
        boolean a();

        void b();
    }

    static {
        f3179a = !ad.class.desiredAssertionStatus();
    }

    public ad() {
        this(8);
    }

    public ad(int i) {
        this(i, com.facebook.l.d());
    }

    public ad(int i, Executor executor) {
        this.f3180b = new Object();
        this.f = null;
        this.g = 0;
        this.d = i;
        this.e = executor;
    }

    public a a(Runnable runnable) {
        return a(runnable, true);
    }

    public a a(Runnable runnable, boolean z) {
        b bVar = new b(runnable);
        synchronized (this.f3180b) {
            this.c = bVar.a(this.c, z);
        }
        a();
        return bVar;
    }

    private void a() {
        a((b) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b bVar) {
        b bVar2 = null;
        synchronized (this.f3180b) {
            if (bVar != null) {
                this.f = bVar.a(this.f);
                this.g--;
            }
            if (this.g < this.d && (bVar2 = this.c) != null) {
                this.c = bVar2.a(this.c);
                this.f = bVar2.a(this.f, false);
                this.g++;
                bVar2.a(true);
            }
        }
        if (bVar2 != null) {
            b(bVar2);
        }
    }

    private void b(final b bVar) {
        this.e.execute(new Runnable() { // from class: com.facebook.internal.ad.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    bVar.d().run();
                } finally {
                    ad.this.a(bVar);
                }
            }
        });
    }

    /* compiled from: WorkQueue.java */
    private class b implements a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ boolean f3183a;
        private final Runnable c;
        private b d;
        private b e;
        private boolean f;

        static {
            f3183a = !ad.class.desiredAssertionStatus();
        }

        b(Runnable runnable) {
            this.c = runnable;
        }

        @Override // com.facebook.internal.ad.a
        public boolean a() {
            synchronized (ad.this.f3180b) {
                if (!c()) {
                    ad.this.c = a(ad.this.c);
                    return true;
                }
                return false;
            }
        }

        @Override // com.facebook.internal.ad.a
        public void b() {
            synchronized (ad.this.f3180b) {
                if (!c()) {
                    ad.this.c = a(ad.this.c);
                    ad.this.c = a(ad.this.c, true);
                }
            }
        }

        public boolean c() {
            return this.f;
        }

        Runnable d() {
            return this.c;
        }

        void a(boolean z) {
            this.f = z;
        }

        b a(b bVar, boolean z) {
            b bVar2;
            if (!f3183a && this.d != null) {
                throw new AssertionError();
            }
            if (!f3183a && this.e != null) {
                throw new AssertionError();
            }
            if (bVar == null) {
                this.e = this;
                this.d = this;
                bVar2 = this;
            } else {
                this.d = bVar;
                this.e = bVar.e;
                b bVar3 = this.d;
                this.e.d = this;
                bVar3.e = this;
                bVar2 = bVar;
            }
            return z ? this : bVar2;
        }

        b a(b bVar) {
            if (!f3183a && this.d == null) {
                throw new AssertionError();
            }
            if (!f3183a && this.e == null) {
                throw new AssertionError();
            }
            if (bVar == this) {
                bVar = this.d == this ? null : this.d;
            }
            this.d.e = this.e;
            this.e.d = this.d;
            this.e = null;
            this.d = null;
            return bVar;
        }
    }
}
