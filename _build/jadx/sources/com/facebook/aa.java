package com.facebook;

import android.os.Handler;
import com.facebook.GraphRequest;

/* compiled from: RequestProgress.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class aa {

    /* renamed from: a, reason: collision with root package name */
    private final GraphRequest f2428a;

    /* renamed from: b, reason: collision with root package name */
    private final Handler f2429b;
    private final long c = l.h();
    private long d;
    private long e;
    private long f;

    aa(Handler handler, GraphRequest graphRequest) {
        this.f2428a = graphRequest;
        this.f2429b = handler;
    }

    void a(long j) {
        this.d += j;
        if (this.d >= this.e + this.c || this.d >= this.f) {
            a();
        }
    }

    void b(long j) {
        this.f += j;
    }

    void a() {
        if (this.d > this.e) {
            GraphRequest.b g = this.f2428a.g();
            if (this.f > 0 && (g instanceof GraphRequest.e)) {
                final long j = this.d;
                final long j2 = this.f;
                final GraphRequest.e eVar = (GraphRequest.e) g;
                if (this.f2429b == null) {
                    eVar.a(j, j2);
                } else {
                    this.f2429b.post(new Runnable() { // from class: com.facebook.aa.1
                        @Override // java.lang.Runnable
                        public void run() {
                            eVar.a(j, j2);
                        }
                    });
                }
                this.e = this.d;
            }
        }
    }
}
