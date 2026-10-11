package com.mopub.dg.c;

import android.content.Context;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    private static m f4275a = null;

    /* renamed from: b, reason: collision with root package name */
    private Context f4276b;
    private com.mopub.dg.d.b.b c;

    private m(Context context) {
        this.f4276b = context;
        this.c = com.mopub.dg.d.b.b.a(context, "dgta_preferences");
    }

    public static synchronized m a(Context context) {
        m mVar;
        synchronized (m.class) {
            if (f4275a == null) {
                f4275a = new m(context);
            }
            mVar = f4275a;
        }
        return mVar;
    }

    public final void a() {
        com.mopub.dg.d.b.b a2 = com.mopub.dg.d.b.b.a(this.f4276b);
        String b2 = a2.b(g.x);
        String b3 = a2.b(g.y);
        com.mopub.dg.b.d dVar = com.mopub.dg.b.d.PBNATIVE;
        Set a3 = this.c.a();
        if (a3 == null) {
            a3 = new HashSet();
        }
        Iterator it = a3.iterator();
        while (it.hasNext()) {
            a((String) it.next(), b2, b3, dVar);
        }
    }

    public final void a(String str, String str2, String str3, com.mopub.dg.b.d dVar) {
        try {
            if (!com.mopub.dg.d.a.b(this.f4276b)) {
                this.c.a(str);
                return;
            }
            h hVar = new h();
            Context context = this.f4276b;
            try {
                com.mopub.dg.e.a.a.l.a(context, str2, str3);
            } catch (Exception e) {
                com.mopub.dg.d.n.a(e);
            }
            if (context == null) {
                throw new Exception("error:context is null");
            }
            hVar.f4269a = a.a(context, dVar, str2, str3, str);
            n nVar = new n(this, str);
            if (hVar.f4269a != null) {
                hVar.f4269a.a(nVar, false, false);
            }
            this.c.d(str);
        } catch (Exception e2) {
            com.mopub.dg.d.n.a(e2);
        }
    }
}
