package com.jirbo.adcolony;

import android.app.Activity;
import android.os.Looper;
import com.jirbo.adcolony.a;
import com.jirbo.adcolony.an;
import com.jirbo.adcolony.b;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ad implements b.a {

    /* renamed from: a, reason: collision with root package name */
    af f3697a;

    /* renamed from: b, reason: collision with root package name */
    boolean f3698b;
    boolean c;
    boolean d;
    double h;
    boolean e = true;
    boolean f = false;
    boolean g = true;
    an.l i = new an.l();

    ad(af afVar) {
        this.f3697a = afVar;
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
    }

    void a() {
    }

    void b() {
        boolean z;
        al.f3722b.b((Object) "Attempting to load backup manifest from file.");
        ag agVar = new ag("manifest.txt");
        a.g b2 = ak.b(agVar);
        if (b2 != null) {
            a.c b3 = b2.a("app").b("zones");
            if (b3 != null) {
                for (int i = 0; i < b3.f_(); i++) {
                    a.g a2 = b3.a(i);
                    boolean z2 = false;
                    for (int i2 = 0; i2 < t.c.f3701a.k.length; i2++) {
                        if (a2.d("uuid").equals(t.c.f3701a.k[i2])) {
                            z2 = true;
                        }
                    }
                    if (!z2) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            t.r = true;
            if (z && a(b2)) {
                this.f3698b = true;
                this.i.a();
                t.r = false;
            } else {
                al.f3722b.b((Object) "Invalid manifest loaded.");
                agVar.c();
                t.r = false;
                this.f3698b = false;
            }
        }
    }

    String c() {
        if (!this.f3698b) {
            return null;
        }
        String str = null;
        for (int i = 0; i < this.i.n.b(); i++) {
            an.e a2 = this.i.n.a(i);
            if (a2.e()) {
                str = a2.f3749a;
                if (a2.c()) {
                    return a2.f3749a;
                }
            }
        }
        return str;
    }

    String d() {
        if (!this.f3698b) {
            return null;
        }
        String str = null;
        for (int i = 0; i < this.i.n.b(); i++) {
            an.e a2 = this.i.n.a(i);
            if (a2.g()) {
                str = a2.f3749a;
                if (a2.c()) {
                    return a2.f3749a;
                }
            }
        }
        return str;
    }

    boolean a(String str, boolean z) {
        for (int i = 0; i < this.i.n.b(); i++) {
            an.e a2 = this.i.n.a(i);
            if (a2.c(z) && a2.f3749a.equals(str)) {
                return true;
            }
        }
        return false;
    }

    boolean b(String str, boolean z) {
        return z ? c(str, z) : !this.f3698b ? al.c.b("Ads are not ready to be played, as they are still downloading.") : z ? this.i.a(str, true, false) : this.i.a(str, false, true);
    }

    boolean c(String str, boolean z) {
        if (this.f3698b) {
            return z ? this.i.a(str, true, false) : this.i.a(str, false, true);
        }
        return false;
    }

    void e() {
        this.c = true;
        if (this.c) {
            this.c = false;
            if (ah.c() >= 32) {
                this.h = u.b() + 600.0d;
                f();
            }
        }
        if (!aq.c()) {
            if (t.A) {
                t.f();
            }
            t.A = false;
        } else {
            if (!t.A) {
                t.f();
            }
            t.A = true;
        }
    }

    void f() {
        a((Activity) null);
    }

    void a(Activity activity) {
        t.o = true;
        if (!this.d) {
            this.d = true;
            if (!this.f3698b) {
                b();
            }
        }
        if (activity != null) {
            t.I = null;
        }
        a.g gVar = this.f3697a.f3701a.i;
        gVar.b("app_id", this.f3697a.f3701a.j);
        a.c cVar = new a.c();
        if (this.f3697a.f3701a.k != null) {
            for (String str : this.f3697a.f3701a.k) {
                an.e f = t.c.f(str);
                if (f == null || (f != null && (f.a() || System.currentTimeMillis() - f.q > f.o))) {
                    cVar.a(str);
                }
            }
        }
        if (cVar.f_() != 0) {
            gVar.a("zones", (a.i) cVar);
            a.g gVar2 = new a.g();
            a.g gVar3 = new a.g();
            a.g gVar4 = new a.g();
            if (this.f3697a.f3701a.k != null) {
                for (String str2 : this.f3697a.f3701a.k) {
                    an.e f2 = t.c.f(str2);
                    a.c cVar2 = new a.c();
                    a.c cVar3 = new a.c();
                    if (f2 != null && f2.m != null && f2.m.f3759a != null) {
                        Iterator<an.a> it = f2.m.f3759a.iterator();
                        while (it.hasNext()) {
                            an.a next = it.next();
                            if (!next.b()) {
                                cVar2.a(next.f3727a);
                            }
                            if (next.c()) {
                                cVar3.a(next.f3727a);
                            }
                        }
                    }
                    if (cVar2.f_() > 0) {
                        gVar2.a(str2, (a.i) cVar2);
                    }
                    if (cVar3.f_() > 0) {
                        gVar3.a(str2, (a.i) cVar3);
                    }
                    if (f2 != null && f2.j.f_() > 0) {
                        gVar4.a(str2, (a.i) f2.j);
                    }
                }
            }
            gVar.a("ad_queue", (a.i) gVar2);
            gVar.a("ad_playing", (a.i) gVar3);
            gVar.a("ad_history", (a.i) gVar4);
            String str3 = t.c.e.k == null ? "" : t.c.e.k;
            int i = t.c.e.j;
            gVar.b("carrier", this.f3697a.f3701a.w);
            if (aq.a()) {
                gVar.b("network_type", "wifi");
            } else if (aq.b()) {
                gVar.b("network_type", "cell");
            } else {
                gVar.b("network_type", "none");
            }
            gVar.b("custom_id", this.f3697a.f3701a.x);
            gVar.b("sid", str3);
            gVar.b("s_imp_count", i);
            if (!t.g) {
                al a2 = al.f3722b.a("Downloading ad manifest from ");
                ae aeVar = this.f3697a.f3701a;
                a2.a(ae.c).b((Object) " with the following post content: ");
                al.f3722b.b((Object) gVar.toString());
                t.g = true;
                af afVar = this.f3697a;
                ae aeVar2 = this.f3697a.f3701a;
                new b(afVar, ae.c, this).a("application/json", gVar.o()).a();
            }
        }
    }

    @Override // com.jirbo.adcolony.b.a
    public void a(b bVar) {
        boolean z;
        t.o = true;
        if (bVar.i) {
            al.c.b((Object) "Received ad server response from:");
            al.c.b((Object) bVar.c);
            a.g b2 = ak.b(bVar.m);
            if (b2 == null) {
                al.f3721a.b((Object) "Invalid JSON in manifest.  Raw data:");
                al.f3721a.b((Object) bVar.m);
                return;
            }
            if (a(b2)) {
                al.f3722b.b((Object) "Ad manifest updated.");
                a.c c = ak.c(b2.a("app").b("zones").toString());
                for (int i = 0; i < this.i.n.b(); i++) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= c.f_()) {
                            z = false;
                            break;
                        } else {
                            if (this.i.n.f3754a.get(i).f3749a.equals(c.a(i2).d("uuid"))) {
                                z = true;
                                break;
                            }
                            i2++;
                        }
                    }
                    if (!z) {
                        c.a(this.i.n.a(i).f3750b);
                    }
                }
                b2.a("app").b("zones").j();
                for (int i3 = 0; i3 < c.f_(); i3++) {
                    boolean z2 = false;
                    for (int i4 = 0; i4 < t.c.f3701a.k.length; i4++) {
                        if (t.c.f3701a.k[i4].equals(c.a(i3).d("uuid"))) {
                            z2 = true;
                        }
                    }
                    if (z2) {
                        c.a(i3).b("last_config_ms", new Long(System.currentTimeMillis()).toString());
                        b2.a("app").b("zones").a(c.a(i3));
                    }
                }
                new ag("manifest.txt").a(b2.toString());
                this.f3698b = true;
                this.i.a();
                if (this.i.i == null || this.i.i.equals("")) {
                    this.i.i = "all";
                }
                if (this.i.j == null || this.i.j.equals("")) {
                    this.i.j = "all";
                }
                t.f();
                return;
            }
            al.f3722b.b((Object) "Invalid manifest.");
            return;
        }
        al.c.b((Object) "Error retrieving ad server response from:");
        al.c.b((Object) bVar.c);
    }

    boolean a(a.g gVar) {
        if (gVar == null || !gVar.d("status").equals("success") || !this.i.a(gVar.a("app"))) {
            return false;
        }
        al.f3721a.b((Object) "Finished parsing manifest");
        t.f();
        if (!this.i.h.equalsIgnoreCase("none")) {
            al.c.b((Object) "Enabling debug logging.");
            t.a(1);
        } else {
            t.a(2);
        }
        return true;
    }
}
