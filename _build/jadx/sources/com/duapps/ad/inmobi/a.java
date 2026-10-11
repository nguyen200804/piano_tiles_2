package com.duapps.ad.inmobi;

import android.content.Context;
import android.text.TextUtils;
import com.duapps.ad.base.h;
import com.duapps.ad.base.n;
import com.duapps.ad.base.p;
import com.duapps.ad.base.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* compiled from: InMobiCacheManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> {

    /* renamed from: a, reason: collision with root package name */
    s<IMDataModel> f2164a;

    /* renamed from: b, reason: collision with root package name */
    private int f2165b;
    private final List<IMData> o;

    public a(Context context, int i, long j, int i2, String str) {
        super(context, i, j, str);
        this.o = Collections.synchronizedList(new LinkedList());
        this.f2164a = new s<IMDataModel>() { // from class: com.duapps.ad.inmobi.a.1
            @Override // com.duapps.ad.base.s
            public void a() {
                h.a("InMobiCacheManager", "start load cache data--");
                a.this.d = true;
                a.this.e = true;
            }

            @Override // com.duapps.ad.base.s
            public void a(int i3, IMDataModel iMDataModel) {
                a.this.d = false;
                if (i3 == 200 && iMDataModel != null) {
                    h.c("InMobiCacheManager", i3 + "");
                    List a2 = a.this.a(iMDataModel.f);
                    if (a2.size() <= 0) {
                        com.duapps.ad.stats.c.b(a.this.h, a.this.i);
                        return;
                    }
                    synchronized (a.this.o) {
                        a.this.o.addAll(a2);
                        h.a("InMobiCacheManager", "store data into cache list -- list.size = " + a.this.o.size());
                    }
                }
            }

            @Override // com.duapps.ad.base.s
            public void a(int i3, String str2) {
                h.a("InMobiCacheManager", "fail to get cache -" + str2);
                a.this.c = true;
                a.this.d = false;
                if (!a.this.l && a.this.n != null) {
                    a.this.n.a(new com.duapps.ad.a(i3, str2));
                }
            }
        };
        this.f2165b = i2;
    }

    @Override // com.duapps.ad.entity.a.b
    public void a(boolean z) {
        super.a(z);
        if (com.duapps.ad.c.b.c.a(this.h)) {
            if (this.f2165b == 0) {
                h.c("InMobiCacheManager", "cacheSize is zero");
                return;
            }
            String b2 = p.a(this.h).b();
            h.c("InMobiCacheManager", "ImCache inId = " + b2);
            int c = this.f2165b - c();
            if (c > 0 && !this.d) {
                this.d = true;
                this.e = true;
                a(b2, c);
            }
        }
    }

    @Override // com.duapps.ad.entity.a.b
    public int b() {
        return this.f2165b;
    }

    @Override // com.duapps.ad.entity.a.b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.duapps.ad.entity.a.a d() {
        IMData iMData;
        synchronized (this.o) {
            IMData iMData2 = null;
            while (this.o.size() > 0 && ((iMData2 = this.o.remove(0)) == null || !iMData2.a())) {
            }
            iMData = iMData2;
        }
        com.duapps.ad.stats.c.d(this.h, iMData == null ? "FAIL" : "OK", this.i);
        if (iMData == null) {
            return null;
        }
        return new e(this.h, iMData, this.n, this.k);
    }

    @Override // com.duapps.ad.entity.a.b
    public int c() {
        int i;
        int i2 = 0;
        synchronized (this.o) {
            Iterator<IMData> it = this.o.iterator();
            while (it.hasNext()) {
                IMData next = it.next();
                if (next == null) {
                    it.remove();
                } else {
                    if (next.a() && a(this.h, next.l)) {
                        i = i2 + 1;
                    } else {
                        it.remove();
                        i = i2;
                    }
                    i2 = i;
                }
            }
        }
        return i2;
    }

    private void a(String str, int i) {
        n.a(this.h).a(this.i, str, String.valueOf(i), this.f2164a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<IMData> a(List<IMData> list) {
        ArrayList arrayList = new ArrayList();
        for (IMData iMData : list) {
            if (a(this.h, iMData.l)) {
                arrayList.add(iMData);
            }
        }
        return arrayList;
    }

    private boolean a(Context context, String str) {
        return TextUtils.isEmpty(str) || !com.duapps.ad.c.b.c.a(context, str);
    }
}
