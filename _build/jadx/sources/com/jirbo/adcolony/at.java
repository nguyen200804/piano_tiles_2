package com.jirbo.adcolony;

import com.jirbo.adcolony.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class at {

    /* renamed from: a, reason: collision with root package name */
    af f3803a;

    /* renamed from: b, reason: collision with root package name */
    boolean f3804b;
    boolean c;
    boolean d = false;
    boolean e = false;
    boolean f = true;
    double g;
    double h;
    double i;
    int j;
    String k;

    at(af afVar) {
        this.k = "uuid";
        this.f3803a = afVar;
        this.k = u.a();
    }

    void a() {
    }

    void b() {
        if (this.f3803a.f3702b.f3698b) {
            if (this.d) {
                this.d = false;
                this.f3803a.d.a("install", (a.g) null);
            }
            if (this.e) {
                this.e = false;
                this.f3803a.d.a("session_start", (a.g) null);
            }
        }
    }

    void c() {
        al.f3722b.b((Object) "AdColony resuming");
        t.o = true;
        if (this.f3804b) {
            al.d.b((Object) "AdColony.onResume() called multiple times in succession.");
        }
        this.f3804b = true;
        g();
        double b2 = u.b();
        if (this.c) {
            if (b2 - this.h > this.f3803a.f3701a.d) {
                a(this.i);
                this.g = b2;
                h();
            }
            this.c = false;
            f();
        } else {
            this.g = b2;
            h();
        }
        t.f();
    }

    void d() {
        al.f3722b.b((Object) "AdColony suspending");
        t.o = true;
        if (!this.f3804b) {
            al.d.b((Object) "AdColony.onPause() called without initial call to onResume().");
        }
        this.f3804b = false;
        this.c = true;
        this.h = u.b();
        f();
    }

    void e() {
        al.f3722b.b((Object) "AdColony terminating");
        t.o = true;
        a(this.i);
        this.c = false;
        f();
    }

    void f() {
        a.g gVar = new a.g();
        gVar.b("allow_resume", this.c);
        gVar.b("start_time", this.g);
        gVar.b("finish_time", this.h);
        gVar.b("session_time", this.i);
        ak.a(new ag("session_info.txt"), gVar);
    }

    void g() {
        a.g b2 = ak.b(new ag("session_info.txt"));
        if (b2 != null) {
            this.c = b2.g("allow_resume");
            this.g = b2.e("start_time");
            this.h = b2.e("finish_time");
            this.i = b2.e("session_time");
            return;
        }
        this.d = true;
    }

    void h() {
        this.e = true;
        if (!this.f) {
            this.k = u.a();
        }
        this.f = false;
        this.i = 0.0d;
        this.j = 0;
        if (t.c != null && t.c.f3702b != null && t.c.f3702b.i != null && t.c.f3702b.i.n != null) {
            for (int i = 0; i < t.c.f3702b.i.n.b(); i++) {
                if (t.c.f3702b.i.n.a(i).r != null) {
                    t.c.f3702b.i.n.a(i).r.d = 0;
                }
                if (t.c.f3702b.i.n.a(i) != null) {
                    t.c.f3702b.i.n.a(i).j = new a.c();
                }
            }
        }
    }

    void a(double d) {
        al.f3721a.a("Submitting session duration ").b(d);
        a.g gVar = new a.g();
        gVar.b("session_length", (int) d);
        this.f3803a.d.a("session_end", gVar);
    }
}
