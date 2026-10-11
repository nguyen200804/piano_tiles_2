package com.facebook.internal;

import android.app.Activity;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

/* compiled from: FacebookDialogBase.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class h<CONTENT, RESULT> {

    /* renamed from: a, reason: collision with root package name */
    protected static final Object f3198a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private final Activity f3199b;
    private final l c;
    private List<h<CONTENT, RESULT>.a> d;
    private int e;

    protected abstract void a(e eVar, com.facebook.g<RESULT> gVar);

    protected abstract List<h<CONTENT, RESULT>.a> c();

    protected abstract com.facebook.internal.a d();

    protected h(Activity activity, int i) {
        ab.a(activity, "activity");
        this.f3199b = activity;
        this.c = null;
        this.e = i;
    }

    protected h(l lVar, int i) {
        ab.a(lVar, "fragmentWrapper");
        this.c = lVar;
        this.f3199b = null;
        this.e = i;
        if (lVar.c() == null) {
            throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity");
        }
    }

    public final void a(com.facebook.e eVar, com.facebook.g<RESULT> gVar) {
        if (!(eVar instanceof e)) {
            throw new com.facebook.i("Unexpected CallbackManager, please use the provided Factory.");
        }
        a((e) eVar, (com.facebook.g) gVar);
    }

    public int a() {
        return this.e;
    }

    public boolean a(CONTENT content) {
        return a((h<CONTENT, RESULT>) content, f3198a);
    }

    protected boolean a(CONTENT content, Object obj) {
        boolean z = obj == f3198a;
        for (h<CONTENT, RESULT>.a aVar : e()) {
            if (z || aa.a(aVar.a(), obj)) {
                if (aVar.a(content)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void b(CONTENT content) {
        b(content, f3198a);
    }

    protected void b(CONTENT content, Object obj) {
        com.facebook.internal.a c = c(content, obj);
        if (c != null) {
            if (this.c != null) {
                g.a(c, this.c);
                return;
            } else {
                g.a(c, this.f3199b);
                return;
            }
        }
        Log.e("FacebookDialog", "No code path should ever result in a null appCall");
        if (com.facebook.l.b()) {
            throw new IllegalStateException("No code path should ever result in a null appCall");
        }
    }

    protected Activity b() {
        if (this.f3199b != null) {
            return this.f3199b;
        }
        if (this.c != null) {
            return this.c.c();
        }
        return null;
    }

    private com.facebook.internal.a c(CONTENT content, Object obj) {
        com.facebook.internal.a aVar;
        boolean z = obj == f3198a;
        Iterator<h<CONTENT, RESULT>.a> it = e().iterator();
        while (true) {
            if (!it.hasNext()) {
                aVar = null;
                break;
            }
            h<CONTENT, RESULT>.a next = it.next();
            if (z || aa.a(next.a(), obj)) {
                if (next.a(content)) {
                    try {
                        aVar = next.b(content);
                        break;
                    } catch (com.facebook.i e) {
                        aVar = d();
                        g.a(aVar, e);
                    }
                }
            }
        }
        if (aVar == null) {
            com.facebook.internal.a d = d();
            g.a(d);
            return d;
        }
        return aVar;
    }

    private List<h<CONTENT, RESULT>.a> e() {
        if (this.d == null) {
            this.d = c();
        }
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: FacebookDialogBase.java */
    public abstract class a {
        public abstract boolean a(CONTENT content);

        public abstract com.facebook.internal.a b(CONTENT content);

        protected a() {
        }

        public Object a() {
            return h.f3198a;
        }
    }
}
