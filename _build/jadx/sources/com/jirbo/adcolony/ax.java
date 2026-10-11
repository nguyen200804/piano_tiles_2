package com.jirbo.adcolony;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ax extends y {
    StringBuilder c = new StringBuilder();

    ax() {
    }

    void c() {
        this.c.setLength(0);
        this.f3879b = 0;
    }

    @Override // com.jirbo.adcolony.y
    void a(char c) {
        this.c.append(c);
    }

    public String toString() {
        return this.c.toString();
    }
}
