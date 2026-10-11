package com.duapps.ad.base;

import android.content.Context;
import com.duapps.ad.base.i;
import com.duapps.ad.entity.AdData;
import java.util.Iterator;
import java.util.List;

/* compiled from: PreClickParser.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    static final String f2045a = k.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static k f2046b;
    private Context c;
    private i d;
    private i.a e = new a();

    public static k a(Context context) {
        synchronized (k.class) {
            if (f2046b == null) {
                f2046b = new k(context.getApplicationContext());
            }
        }
        return f2046b;
    }

    private k(Context context) {
        this.c = context;
        this.d = i.a(this.c);
    }

    public boolean a(List<AdData> list) {
        for (AdData adData : list) {
            if (!com.duapps.ad.c.b.c.a(this.c, adData.d) && AdData.a(this.c, adData)) {
                this.d.a(adData, adData.i, this.e);
            }
        }
        return true;
    }

    public static <T extends AdData> List<T> a(Context context, List<T> list) {
        com.duapps.ad.stats.i a2 = com.duapps.ad.stats.i.a(context);
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            T next = it.next();
            if (AdData.a(context, next) && a2.b(next.i) == 2) {
                it.remove();
            }
        }
        return list;
    }

    public j a(String str) {
        return com.duapps.ad.stats.i.a(this.c).a(str);
    }

    /* compiled from: PreClickParser.java */
    private class a implements i.a {
        private a() {
        }

        @Override // com.duapps.ad.base.i.a
        public void a(AdData adData, int i, int i2, long j) {
            com.duapps.ad.stats.h.a(k.this.c, adData, i, i2, j);
        }

        @Override // com.duapps.ad.base.i.a
        public void a(AdData adData, j jVar) {
            com.duapps.ad.stats.i.a(k.this.c).a(jVar);
        }

        @Override // com.duapps.ad.base.i.a
        public void b(AdData adData, j jVar) {
        }
    }
}
