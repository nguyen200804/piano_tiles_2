package com.tencent.a.a.a.a;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class f {
    protected Context e;

    protected f(Context context) {
        this.e = null;
        this.e = context;
    }

    public final void a(c cVar) {
        if (cVar == null) {
            return;
        }
        String cVar2 = cVar.toString();
        if (a()) {
            b(h.g(cVar2));
        }
    }

    protected abstract boolean a();

    protected abstract String b();

    protected abstract void b(String str);

    public final c e() {
        String f = a() ? h.f(b()) : null;
        if (f != null) {
            return c.c(f);
        }
        return null;
    }
}
