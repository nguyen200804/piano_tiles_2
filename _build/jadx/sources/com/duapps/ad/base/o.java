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
import java.util.LinkedList;
import java.util.List;

/* compiled from: ToolboxDLManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class o extends com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> {
    private static final String o = o.class.getSimpleName();

    /* renamed from: a, reason: collision with root package name */
    s<AdModel> f2075a;

    /* renamed from: b, reason: collision with root package name */
    BroadcastReceiver f2076b;
    private final List<AdData> p;
    private String q;

    public o(Context context, int i, long j, String str) {
        super(context, i, j, str);
        this.p = Collections.synchronizedList(new LinkedList());
        this.f2075a = new s<AdModel>() { // from class: com.duapps.ad.base.o.1
            @Override // com.duapps.ad.base.s
            public void a() {
                h.a(o.o, "start load cache data--");
                o.this.d = true;
                o.this.e = true;
            }

            @Override // com.duapps.ad.base.s
            public void a(int i2, AdModel adModel) {
                o.this.d = false;
                if (i2 == 200 && adModel != null) {
                    List a2 = k.a(o.this.h, o.this.a(adModel.h));
                    k.a(o.this.h, a2);
                    int size = a2.size();
                    int i3 = 5 > size ? size : 5;
                    if (size <= 0) {
                        com.duapps.ad.stats.c.a(o.this.h, o.this.i);
                        return;
                    }
                    synchronized (o.this.p) {
                        o.this.p.clear();
                        for (int i4 = 0; i4 < i3; i4++) {
                            o.this.p.add(a2.get(i4));
                        }
                        h.a(o.o, "store data into cache list -- list.size = " + o.this.p.size());
                    }
                }
            }

            @Override // com.duapps.ad.base.s
            public void a(int i2, String str2) {
                h.a(o.o, "fail to get cache -" + str2);
                o.this.c = true;
                o.this.d = false;
                if (o.this.m == 0 && !o.this.l && o.this.n != null) {
                    o.this.n.a(new com.duapps.ad.a(i2, str2));
                }
            }
        };
        this.f2076b = new BroadcastReceiver() { // from class: com.duapps.ad.base.o.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("action_notify_preparse_cache_result".equals(intent.getAction())) {
                    long longExtra = intent.getLongExtra("ad_id", -1L);
                    int intExtra = intent.getIntExtra("parse_result_type", 0);
                    synchronized (o.this.p) {
                        if (o.this.p != null && o.this.p.size() > 0) {
                            Iterator it = o.this.p.iterator();
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
        f();
    }

    @Override // com.duapps.ad.entity.a.b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.duapps.ad.entity.c d() {
        AdData adData;
        synchronized (this.p) {
            AdData adData2 = null;
            while (this.p.size() > 0 && ((adData2 = this.p.remove(0)) == null || !adData2.a())) {
            }
            adData = adData2;
            h.c(o, "DL poll title-> " + (adData != null ? adData.c : "null") + ", pkg : " + (adData != null ? adData.d : "null") + ", pp : " + (adData != null ? Integer.valueOf(adData.H) : "null"));
        }
        com.duapps.ad.stats.c.b(this.h, adData == null ? "FAIL" : "OK", this.i);
        if (adData == null) {
            return null;
        }
        if (adData.f2121a == 2) {
            l.a(this.h).a(adData);
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
            h.c(o, "network error && sid = " + this.i);
            return;
        }
        if (this.d) {
            h.c(o, "DL already refreshing && sid = " + this.i);
        } else if (c() > 0) {
            h.c(o, "no need refresh");
        } else {
            n.a(this.h).a(Integer.valueOf(this.i).intValue(), 1, this.f2075a);
        }
    }

    @Override // com.duapps.ad.entity.a.b
    public int c() {
        int i;
        int i2 = 0;
        synchronized (this.p) {
            Iterator<AdData> it = this.p.iterator();
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

    private void f() {
        try {
            LocalBroadcastManager.getInstance(this.h).registerReceiver(this.f2076b, new IntentFilter("action_notify_preparse_cache_result"));
        } catch (Exception e) {
        }
    }
}
