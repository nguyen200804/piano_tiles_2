package com.jirbo.adcolony;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class p extends g {
    boolean x = false;
    boolean y = false;
    boolean z;

    public p() {
        t.s = false;
        t.e();
        this.f = "v4vc";
        this.z = false;
        this.g = "fullscreen";
        this.h = u.a();
    }

    public p a(i iVar) {
        this.t = iVar;
        return this;
    }

    @Override // com.jirbo.adcolony.g
    boolean e() {
        return true;
    }

    @Override // com.jirbo.adcolony.g
    boolean a(boolean z) {
        return false;
    }

    @Override // com.jirbo.adcolony.g
    public boolean c() {
        if (this.c == null) {
            this.c = t.c.f();
            if (this.c == null) {
                return false;
            }
        }
        return t.c.e(this.c);
    }

    public String g() {
        return !f() ? "" : this.d.n.d;
    }

    public int h() {
        if (f()) {
            return this.d.n.c;
        }
        return 0;
    }

    public int i() {
        if (f()) {
            return this.d.n.f;
        }
        return 0;
    }

    public int j() {
        if (f()) {
            return this.d.n.f - this.d.s;
        }
        return 0;
    }

    public void k() {
        if (this.z) {
            al.d.b((Object) "Show attempt on out of date ad object. Please instantiate a new ad object for each ad attempt.");
            return;
        }
        t.aa = 0;
        if (!c()) {
            this.f3834b = t.aa;
            new aj(t.c) { // from class: com.jirbo.adcolony.p.1
                @Override // com.jirbo.adcolony.aj
                void b() {
                    if (p.this.c != null) {
                        this.n.d.a(p.this.c, p.this);
                    }
                }
            };
            this.f3833a = 2;
            if (this.t != null) {
                this.t.a(this);
            }
            this.z = true;
            return;
        }
        this.f3834b = t.aa;
        if (t.t) {
            new aj(t.c) { // from class: com.jirbo.adcolony.p.2
                @Override // com.jirbo.adcolony.aj
                void b() {
                    this.n.d.a(p.this.c, p.this);
                }
            };
            t.t = false;
            f();
            t.H = this;
            t.c.a(this);
            if (!this.x) {
                this.z = true;
                c(true);
            } else {
                a("Confirmation");
            }
        }
    }

    void c(boolean z) {
        if (z) {
            if (t.c.b(this)) {
                t.f = false;
                if (this.t != null) {
                    this.t.b(this);
                }
                this.f3833a = 4;
            } else {
                this.f3833a = 3;
            }
        } else {
            this.f3833a = 1;
        }
        if (this.f3833a != 4) {
            t.t = true;
            if (this.t != null) {
                this.t.a(this);
            }
        }
    }

    @Override // com.jirbo.adcolony.g
    void d() {
        if (this.f3833a == 4 && this.y) {
            a("Result");
        }
        if (this.t != null && !this.r) {
            this.t.a(this);
        }
        if (!t.s && !AdColonyBrowser.C) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= t.ab.size()) {
                    break;
                }
                t.ab.get(i2).recycle();
                i = i2 + 1;
            }
            t.ab.clear();
        }
        t.I = null;
        this.r = true;
        if (!this.y) {
            t.t = true;
        }
        System.gc();
    }

    void a(String str) {
        String str2 = ("" + h()) + " " + g();
        if (!str.equals("Confirmation")) {
            t.G = new w(str2, this);
        } else {
            t.G = new v(str2, this);
        }
    }
}
