package com.jirbo.adcolony;

import android.content.Intent;
import com.jirbo.adcolony.a;
import com.jirbo.adcolony.an;
import com.jirbo.adcolony.u;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class af {
    volatile boolean j;
    boolean k;

    /* renamed from: a, reason: collision with root package name */
    ae f3701a = new ae(this);

    /* renamed from: b, reason: collision with root package name */
    ad f3702b = new ad(this);
    ao c = new ao(this);
    as d = new as(this);
    at e = new at(this);
    d f = new d(this);
    aa g = new aa(this);
    ArrayList<aj> h = new ArrayList<>();
    ArrayList<aj> i = new ArrayList<>();
    u.a l = new u.a();

    af() {
    }

    void a(final aj ajVar) {
        new Thread(new Runnable() { // from class: com.jirbo.adcolony.af.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (af.this.h) {
                    if (t.d()) {
                        af.this.h.add(ajVar);
                        if (!af.this.j) {
                            af.this.g();
                        }
                    }
                }
            }
        }).start();
    }

    void a() {
        if (!this.k && t.d()) {
            while (true) {
                try {
                    if (!this.k || (!this.j && this.h.size() > 0)) {
                        this.k = true;
                        this.i.addAll(this.h);
                        this.h.clear();
                        for (int i = 0; i < this.i.size(); i++) {
                            if (this.i.get(i) != null) {
                                this.i.get(i).b();
                            }
                        }
                        this.i.clear();
                    }
                } catch (RuntimeException e) {
                    this.k = false;
                    this.i.clear();
                    this.h.clear();
                    t.a(e);
                    return;
                }
            }
            this.k = false;
        }
    }

    void b() {
        this.j = true;
        new aj(this) { // from class: com.jirbo.adcolony.af.2
            @Override // com.jirbo.adcolony.aj
            void b() {
                this.n.e.c();
            }
        };
    }

    void c() {
        this.j = false;
        new aj(this) { // from class: com.jirbo.adcolony.af.3
            @Override // com.jirbo.adcolony.aj
            void b() {
                this.n.e.d();
            }
        };
    }

    void d() {
        new aj(this) { // from class: com.jirbo.adcolony.af.4
            @Override // com.jirbo.adcolony.aj
            void b() {
                this.n.e.e();
            }
        };
    }

    synchronized void a(final g gVar) {
        this.f3701a.n = 0.0d;
        al.f3721a.b((Object) "Tracking ad event - start");
        gVar.d.r.d++;
        if (!gVar.e()) {
            gVar.d.k();
        }
        new aj(this) { // from class: com.jirbo.adcolony.af.5
            @Override // com.jirbo.adcolony.aj
            void b() {
                if (f.a(gVar.c) || gVar.e.z == null || !gVar.e.z.f3781a || (gVar.e.z.f3781a && gVar.p && gVar.g.equals("fullscreen"))) {
                    af.this.a("start", "{\"ad_slot\":" + (t.c.e.j + 1) + ", \"replay\":" + gVar.p + "}", gVar);
                    gVar.e.p = true;
                    gVar.e.q = true;
                    t.f();
                    gVar.d.j.a(gVar.e.f3727a);
                }
            }
        };
    }

    void a(final double d, final g gVar) {
        new aj(this) { // from class: com.jirbo.adcolony.af.6
            @Override // com.jirbo.adcolony.aj
            void b() {
                if (!t.f && gVar.e.v != null && gVar.e.v.f3757a && d > 0.9d) {
                    al.c.b((Object) "V4VC validated.");
                    t.f = true;
                }
                this.n.d.a(d, gVar);
            }
        };
    }

    synchronized void a(boolean z, String str, int i) {
        t.L.a(z, str, i);
    }

    synchronized void a(boolean z, final g gVar) {
        synchronized (this) {
            if (gVar != null) {
                a(1.0d, gVar);
                if (!z && gVar.e()) {
                    gVar.d.k();
                    gVar.d.s++;
                    p pVar = (p) t.H;
                    final String g = pVar.g();
                    final int h = pVar.h();
                    if (gVar.d.b()) {
                        if (pVar.d.n.e && t.f) {
                            a(true, g, h);
                        }
                        new aj(this) { // from class: com.jirbo.adcolony.af.7
                            @Override // com.jirbo.adcolony.aj
                            void b() {
                                a.g gVar2 = new a.g();
                                gVar2.b("v4vc_name", g);
                                gVar2.b("v4vc_amount", h);
                                this.n.d.a("reward_v4vc", gVar2, gVar);
                            }
                        };
                    }
                }
            }
        }
    }

    void a(final String str, final String str2, final g gVar) {
        new aj(this) { // from class: com.jirbo.adcolony.af.8
            @Override // com.jirbo.adcolony.aj
            void b() {
                this.n.d.a(str, ak.b(str2), gVar);
            }
        };
    }

    synchronized int a(String str) {
        int i;
        try {
            i = this.f3701a.h.f(str);
        } catch (RuntimeException e) {
            t.a(e);
            i = 0;
        }
        return i;
    }

    synchronized boolean b(String str) {
        boolean z;
        try {
            z = this.f3701a.h.g(str);
        } catch (RuntimeException e) {
            t.a(e);
            z = false;
        }
        return z;
    }

    synchronized String c(String str) {
        String str2;
        try {
            str2 = this.f3701a.h.d(str);
        } catch (RuntimeException e) {
            t.a(e);
            str2 = null;
        }
        return str2;
    }

    synchronized String e() {
        return this.f3702b.c();
    }

    synchronized String f() {
        return this.f3702b.d();
    }

    synchronized boolean d(String str) {
        return a(str, false, true);
    }

    synchronized boolean a(String str, boolean z, boolean z2) {
        boolean z3 = false;
        synchronized (this) {
            try {
                if (t.d() && this.f3702b.b(str, z)) {
                    z3 = this.f3702b.i.n.a(str).b(z2);
                }
            } catch (RuntimeException e) {
                t.a(e);
            }
        }
        return z3;
    }

    synchronized boolean e(String str) {
        return b(str, false, true);
    }

    synchronized boolean b(String str, boolean z, boolean z2) {
        boolean z3 = false;
        synchronized (this) {
            try {
                if (t.d() && this.f3702b.b(str, z)) {
                    z3 = this.f3702b.i.n.a(str).c(z2);
                }
            } catch (RuntimeException e) {
                t.a(e);
            }
        }
        return z3;
    }

    synchronized an.e f(String str) {
        return this.f3702b.i.n.a(str);
    }

    synchronized void a(p pVar) {
        this.f3701a.c(pVar.c);
    }

    synchronized boolean b(p pVar) {
        boolean z = false;
        synchronized (this) {
            try {
                t.H = pVar;
                String str = pVar.c;
                if (e(str)) {
                    al.f3721a.a("Showing v4vc for zone ").b((Object) str);
                    a(pVar);
                    z = b((g) pVar);
                }
            } catch (RuntimeException e) {
                t.a(e);
            }
        }
        return z;
    }

    synchronized boolean b(g gVar) {
        boolean z;
        if (this.f3701a.l.d()) {
            t.H.f3833a = 3;
            z = false;
        } else {
            ADCVideo.a();
            if (t.d) {
                al.f3721a.b((Object) "Launching AdColonyOverlay");
                t.b().startActivity(new Intent(t.b(), (Class<?>) AdColonyOverlay.class));
            } else {
                al.f3721a.b((Object) "Launching AdColonyFullscreen");
                t.b().startActivity(new Intent(t.b(), (Class<?>) AdColonyFullscreen.class));
            }
            z = true;
        }
        return z;
    }

    synchronized void a(String str, String str2, String[] strArr) {
        try {
            a(t.e);
            al.c.a("==== Configuring AdColony ").a(this.f3701a.f3700b).b((Object) " with app/zone ids: ====");
            al.c.b((Object) str2);
            for (String str3 : strArr) {
                al.c.b((Object) str3);
            }
            al.f3721a.a("package name: ").b((Object) u.e());
            this.f3701a.j = str2;
            this.f3701a.k = strArr;
            this.f3701a.a(str);
            this.l.a();
        } catch (RuntimeException e) {
            t.a(e);
        }
    }

    synchronized void g() {
        if (!t.c()) {
            try {
                a();
                if (!t.m) {
                    if (ah.m() != null || this.l.b() > 5.0d) {
                        this.f3701a.a();
                        t.m = true;
                    }
                    t.o = true;
                    this.f3702b.e();
                }
                this.c.e();
                this.e.b();
                this.d.d();
                this.g.c();
            } catch (RuntimeException e) {
                t.a(e);
            }
        }
    }

    void a(int i) {
        t.a(i);
    }
}
