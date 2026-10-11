package com.android.volley;

import android.os.Handler;
import java.util.concurrent.Executor;

/* compiled from: ExecutorDelivery.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e implements o {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f236a;

    public e(final Handler handler) {
        this.f236a = new Executor() { // from class: com.android.volley.e.1
            @Override // java.util.concurrent.Executor
            public void execute(Runnable command) {
                handler.post(command);
            }
        };
    }

    @Override // com.android.volley.o
    public void a(l<?> lVar, n<?> nVar) {
        a(lVar, nVar, null);
    }

    @Override // com.android.volley.o
    public void a(l<?> lVar, n<?> nVar, Runnable runnable) {
        lVar.u();
        lVar.a("post-response");
        this.f236a.execute(new a(lVar, nVar, runnable));
    }

    @Override // com.android.volley.o
    public void a(l<?> lVar, s sVar) {
        lVar.a("post-error");
        this.f236a.execute(new a(lVar, n.a(sVar), null));
    }

    /* compiled from: ExecutorDelivery.java */
    private class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        private final l f240b;
        private final n c;
        private final Runnable d;

        public a(l lVar, n nVar, Runnable runnable) {
            this.f240b = lVar;
            this.c = nVar;
            this.d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f240b.g()) {
                this.f240b.b("canceled-at-delivery");
                return;
            }
            if (this.c.a()) {
                this.f240b.a((l) this.c.f253a);
            } else {
                this.f240b.b(this.c.c);
            }
            if (this.c.d) {
                this.f240b.a("intermediate-response");
            } else {
                this.f240b.b("done");
            }
            if (this.d != null) {
                this.d.run();
            }
        }
    }
}
