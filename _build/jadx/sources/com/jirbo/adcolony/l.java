package com.jirbo.adcolony;

import com.mopub.common.AdType;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class l extends g {
    m x;
    boolean y;

    public l() {
        t.s = false;
        t.e();
        this.f = AdType.INTERSTITIAL;
        this.g = "fullscreen";
        this.y = false;
        this.h = u.a();
    }

    public l(String str) {
        this.f = AdType.INTERSTITIAL;
        this.g = "fullscreen";
        t.e();
        this.c = str;
        this.y = false;
        this.h = u.a();
    }

    @Override // com.jirbo.adcolony.g
    boolean e() {
        return false;
    }

    @Override // com.jirbo.adcolony.g
    boolean a(boolean z) {
        if (this.c == null) {
            this.c = t.c.e();
            if (this.c == null) {
                return false;
            }
        }
        return t.c.a(this.c, z, z ? false : true);
    }

    @Override // com.jirbo.adcolony.g
    public boolean c() {
        if (this.c == null) {
            this.c = t.c.e();
            if (this.c == null) {
                return false;
            }
        }
        if (f.b(this.c)) {
            t.aa = 12;
            return false;
        }
        return t.c.d(this.c);
    }

    @Override // com.jirbo.adcolony.g
    void d() {
        int i = 0;
        this.f = AdType.INTERSTITIAL;
        this.g = "fullscreen";
        if (this.t != null && !this.r) {
            this.t.a(this);
        } else if (this.x != null) {
            if (a()) {
                this.s.A = true;
            } else {
                this.s.A = false;
            }
            this.x.b(true, this.s);
        }
        System.gc();
        if (!t.s && !AdColonyBrowser.C) {
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
        this.r = true;
        t.I = null;
        t.t = true;
    }
}
