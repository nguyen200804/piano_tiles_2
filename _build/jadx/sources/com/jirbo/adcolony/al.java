package com.jirbo.adcolony;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class al {

    /* renamed from: a, reason: collision with root package name */
    static al f3721a = new al(0, false);

    /* renamed from: b, reason: collision with root package name */
    static al f3722b = new al(1, false);
    static al c = new al(2, true);
    static al d = new al(3, true);
    int e;
    boolean f;
    StringBuilder g = new StringBuilder();

    al(int i, boolean z) {
        this.e = i;
        this.f = z;
    }

    synchronized al a(char c2) {
        al alVar;
        if (this.f) {
            this.g.append(c2);
            if (c2 == '\n') {
                t.a(this.e, this.g.toString());
                this.g.setLength(0);
            }
            alVar = this;
        } else {
            alVar = this;
        }
        return alVar;
    }

    synchronized al a(String str) {
        al alVar;
        if (this.f) {
            if (str == null) {
                this.g.append("null");
            } else {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    a(str.charAt(i));
                }
            }
            alVar = this;
        } else {
            alVar = this;
        }
        return alVar;
    }

    synchronized al a(Object obj) {
        if (this.f) {
            if (obj == null) {
                a("null");
            } else {
                a(obj.toString());
            }
        }
        return this;
    }

    synchronized al a(double d2) {
        al alVar;
        if (this.f) {
            u.a(d2, 2, this.g);
            alVar = this;
        } else {
            alVar = this;
        }
        return alVar;
    }

    synchronized al a(int i) {
        al alVar;
        if (this.f) {
            this.g.append(i);
            alVar = this;
        } else {
            alVar = this;
        }
        return alVar;
    }

    synchronized al a(boolean z) {
        al alVar;
        if (this.f) {
            this.g.append(z);
            alVar = this;
        } else {
            alVar = this;
        }
        return alVar;
    }

    synchronized al b(Object obj) {
        a(obj);
        return a('\n');
    }

    synchronized al b(double d2) {
        a(d2);
        return a('\n');
    }

    synchronized al b(int i) {
        a(i);
        return a('\n');
    }

    synchronized al b(boolean z) {
        a(z);
        return a('\n');
    }

    boolean b(String str) {
        a(str + '\n');
        return false;
    }
}
