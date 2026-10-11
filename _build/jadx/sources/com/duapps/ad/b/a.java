package com.duapps.ad.b;

import android.content.Context;
import com.duapps.ad.base.h;
import com.duapps.ad.base.k;
import com.duapps.ad.base.n;
import com.duapps.ad.base.s;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.entity.AdModel;
import com.duapps.ad.entity.a.b;
import com.duapps.ad.stats.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* compiled from: DLHighCacheManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends b<com.duapps.ad.entity.a.a> {

    /* renamed from: b, reason: collision with root package name */
    private static final String f1996b = a.class.getSimpleName();

    /* renamed from: a, reason: collision with root package name */
    s<AdModel> f1997a;
    private final List<AdData> o;

    public a(Context context, int i, long j, String str) {
        super(context, i, j, str);
        this.o = Collections.synchronizedList(new LinkedList());
        this.f1997a = new s<AdModel>() { // from class: com.duapps.ad.b.a.1
            @Override // com.duapps.ad.base.s
            public void a() {
                h.a(a.f1996b, "start load cache data--");
                a.this.d = true;
                a.this.e = true;
            }

            @Override // com.duapps.ad.base.s
            public void a(int i2, AdModel adModel) {
                if (i2 == 200 && adModel != null) {
                    a.this.d = false;
                    List a2 = k.a(a.this.h, a.this.a(adModel.h));
                    if (a2.size() <= 0) {
                        c.d(a.this.h, a.this.i);
                        return;
                    }
                    synchronized (a.this.o) {
                        a.this.o.clear();
                        for (int i3 = 0; i3 < a2.size() && i3 < 5; i3++) {
                            a.this.o.add(a2.get(i3));
                        }
                        h.a(a.f1996b, "store data into cache list -- list.size = " + a.this.o.size());
                    }
                }
            }

            @Override // com.duapps.ad.base.s
            public void a(int i2, String str2) {
                h.a(a.f1996b, "fail to get cache -" + str2);
                a.this.c = true;
                a.this.d = false;
                if (!a.this.l && a.this.n != null) {
                    a.this.n.a(new com.duapps.ad.a(i2, str2));
                }
            }
        };
    }

    @Override // com.duapps.ad.entity.a.b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.duapps.ad.entity.c d() {
        AdData adData;
        synchronized (this.o) {
            AdData adData2 = null;
            while (this.o.size() > 0 && ((adData2 = this.o.remove(0)) == null || !adData2.a())) {
            }
            adData = adData2;
            h.c(f1996b, "DLH poll title-> " + (adData != null ? adData.c : "null"));
        }
        c.f(this.h, adData == null ? "FAIL" : "OK", this.i);
        if (adData == null) {
            return null;
        }
        return new com.duapps.ad.entity.c(this.h, adData, this.n, this.k);
    }

    @Override // com.duapps.ad.entity.a.b
    public int b() {
        return 1;
    }

    @Override // com.duapps.ad.entity.a.b
    public void a(boolean z) {
        super.a(z);
        if (!com.duapps.ad.c.b.c.a(this.h)) {
            h.c(f1996b, "no net");
            return;
        }
        if (c() > 0) {
            h.c(f1996b, "DLH validAdCount is" + c());
        } else if (this.d) {
            h.c(f1996b, "DLH is refreshing!");
        } else {
            n.a(this.h).b(Integer.valueOf(this.i).intValue(), 1, this.f1997a);
        }
    }

    @Override // com.duapps.ad.entity.a.b
    public int c() {
        int i;
        int i2 = 0;
        synchronized (this.o) {
            Iterator<AdData> it = this.o.iterator();
            while (it.hasNext()) {
                AdData next = it.next();
                if (next == null) {
                    it.remove();
                } else {
                    if (com.duapps.ad.c.b.c.a(this.h, next.d) || !next.a()) {
                        it.remove();
                        i = i2;
                    } else {
                        i = i2 + 1;
                    }
                    i2 = i;
                }
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<AdData> a(List<AdData> list) {
        ArrayList arrayList = new ArrayList();
        for (AdData adData : list) {
            if (!com.duapps.ad.c.b.c.a(this.h, adData.d)) {
                arrayList.add(adData);
            }
        }
        return arrayList;
    }
}
