package com.duapps.ad.base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.entity.AdModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: ToolboxOLManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class q extends com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> {
    private static final String o = q.class.getSimpleName();

    /* renamed from: a, reason: collision with root package name */
    s<AdModel> f2081a;

    /* renamed from: b, reason: collision with root package name */
    BroadcastReceiver f2082b;
    private int p;
    private String q;
    private final List<AdData> r;

    public q(Context context, int i, long j, int i2, String str) {
        super(context, i, j, str);
        this.r = Collections.synchronizedList(new ArrayList());
        this.f2081a = new s<AdModel>() { // from class: com.duapps.ad.base.q.1
            @Override // com.duapps.ad.base.s
            public void a() {
                h.a(q.o, "start load cache data--");
                q.this.d = true;
                q.this.e = true;
            }

            @Override // com.duapps.ad.base.s
            public void a(int i3, AdModel adModel) {
                q.this.d = false;
                if (i3 == 200 && adModel != null) {
                    List a2 = k.a(q.this.h, q.this.a(adModel.h));
                    if (a2.size() <= 0) {
                        com.duapps.ad.stats.c.c(q.this.h, q.this.i);
                        return;
                    }
                    synchronized (q.this.r) {
                        q.this.r.addAll(a2);
                        h.a(q.o, "store data into cache list -- list.size = " + q.this.r.size());
                    }
                }
            }

            @Override // com.duapps.ad.base.s
            public void a(int i3, String str2) {
                h.a(q.o, "fail to get cache -" + str2);
                q.this.c = true;
                q.this.d = false;
                if (!q.this.l && q.this.n != null) {
                    q.this.n.a(new com.duapps.ad.a(i3, str2));
                }
            }
        };
        this.f2082b = new BroadcastReceiver() { // from class: com.duapps.ad.base.q.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("action_notify_preparse_cache_result".equals(intent.getAction())) {
                    long longExtra = intent.getLongExtra("ad_id", -1L);
                    int intExtra = intent.getIntExtra("parse_result_type", 0);
                    synchronized (q.this.r) {
                        if (q.this.r != null && q.this.r.size() > 0) {
                            Iterator it = q.this.r.iterator();
                            while (it.hasNext()) {
                                if (((AdData) it.next()).f2122b == longExtra && intExtra != 1) {
                                    it.remove();
                                }
                            }
                        }
                    }
                }
            }
        };
        this.q = str;
        this.p = i2;
        f();
    }

    @Override // com.duapps.ad.entity.a.b
    public void a(boolean z) {
        super.a(z);
        if (com.duapps.ad.c.b.c.a(this.h)) {
            if (this.d) {
                h.c(o, "isRefreshing ...");
                return;
            }
            int c = c();
            if (this.p - c <= 0) {
                h.c(o, "no need refresh");
            } else {
                n.a(this.h).a(Integer.valueOf(this.i).intValue(), 1, this.f2081a, this.p - c);
            }
        }
    }

    @Override // com.duapps.ad.entity.a.b
    public int c() {
        int i;
        int i2 = 0;
        synchronized (this.r) {
            Iterator<AdData> it = this.r.iterator();
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

    @Override // com.duapps.ad.entity.a.b
    public int b() {
        return this.p;
    }

    @Override // com.duapps.ad.entity.a.b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.duapps.ad.entity.c d() {
        AdData adData;
        synchronized (this.r) {
            AdData adData2 = null;
            while (this.r.size() > 0 && ((adData2 = this.r.remove(0)) == null || !adData2.a())) {
            }
            adData = adData2;
            h.c(o, "OL poll title-> " + (adData != null ? adData.c : "null"));
        }
        com.duapps.ad.stats.c.e(this.h, adData == null ? "FAIL" : "OK", this.i);
        if (adData == null) {
            return null;
        }
        if (adData.f2121a == 2) {
            l.a(this.h).a(adData);
        }
        return new com.duapps.ad.entity.c(this.h, adData, this.n, this.q);
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

    private void f() {
        try {
            LocalBroadcastManager.getInstance(this.h).registerReceiver(this.f2082b, new IntentFilter("action_notify_preparse_cache_result"));
        } catch (Exception e) {
        }
    }
}
