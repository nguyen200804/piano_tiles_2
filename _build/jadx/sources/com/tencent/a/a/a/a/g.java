package com.tencent.a.a.a.a;

import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class g {
    private static g i = null;
    private Map<Integer, f> f;
    private int g = 0;
    private Context h;

    private g(Context context) {
        this.f = null;
        this.h = null;
        this.h = context.getApplicationContext();
        this.f = new HashMap(3);
        this.f.put(1, new e(context));
        this.f.put(2, new b(context));
        this.f.put(4, new d(context));
    }

    private c a(List<Integer> list) {
        c e;
        if (list != null && list.size() >= 0) {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                f fVar = this.f.get(it.next());
                if (fVar != null && (e = fVar.e()) != null && h.e(e.c)) {
                    return e;
                }
            }
        }
        return new c();
    }

    public static synchronized g a(Context context) {
        g gVar;
        synchronized (g.class) {
            if (i == null) {
                i = new g(context);
            }
            gVar = i;
        }
        return gVar;
    }

    public final void b(String str) {
        c f = f();
        f.c = str;
        if (!h.d(f.f4814a)) {
            f.f4814a = h.b(this.h);
        }
        if (!h.d(f.f4815b)) {
            f.f4815b = h.c(this.h);
        }
        f.d = System.currentTimeMillis();
        Iterator<Map.Entry<Integer, f>> it = this.f.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().a(f);
        }
    }

    public final c f() {
        return a(new ArrayList(Arrays.asList(1, 2, 4)));
    }
}
