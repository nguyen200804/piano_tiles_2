package com.duapps.ad.offerwall.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import com.duapps.ad.base.h;
import com.duapps.ad.base.k;
import com.duapps.ad.base.l;
import com.duapps.ad.base.n;
import com.duapps.ad.base.s;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.entity.AdModel;
import com.duapps.ad.stats.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: DownloadAdsManager2.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    s<AdModel> f2203a;

    /* renamed from: b, reason: collision with root package name */
    private int f2204b;
    private Context c;
    private a d;
    private boolean e;
    private boolean f;
    private List<com.duapps.ad.entity.a.a> g;
    private Handler h;
    private AdModel i;
    private BroadcastReceiver j;

    public b(int i, Context context, a aVar) {
        this(i, context, aVar, 20);
    }

    public b(int i, Context context, a aVar, int i2) {
        this.g = new ArrayList();
        this.f2203a = new s<AdModel>() { // from class: com.duapps.ad.offerwall.a.b.1
            @Override // com.duapps.ad.base.s
            public void a() {
                b.this.e = true;
            }

            @Override // com.duapps.ad.base.s
            public void a(int i3, AdModel adModel) {
                b.this.f = true;
                b.this.e = false;
                if (i3 == 200 && adModel != null) {
                    b.this.i = adModel;
                    List a2 = k.a(b.this.c, b.this.a(adModel.h));
                    synchronized (b.this.g) {
                        if (a2.size() <= 0) {
                            c.a(b.this.c, b.this.f2204b);
                            b.this.h.post(new Runnable() { // from class: com.duapps.ad.offerwall.a.b.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (b.this.d != null) {
                                        b.this.d.a();
                                    }
                                }
                            });
                            return;
                        }
                        b.this.g.clear();
                        Iterator it = a2.iterator();
                        while (it.hasNext()) {
                            b.this.g.add(new com.duapps.ad.entity.c(b.this.c, (AdData) it.next(), null, "offerwall"));
                        }
                        b.this.h.post(new Runnable() { // from class: com.duapps.ad.offerwall.a.b.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (b.this.d != null) {
                                    h.c("DownloadAdsManager2", "Download ads poll data... , size:" + b.this.a());
                                    b.this.d.b();
                                }
                            }
                        });
                    }
                }
            }

            @Override // com.duapps.ad.base.s
            public void a(int i3, String str) {
                b.this.e = false;
                b.this.h.post(new Runnable() { // from class: com.duapps.ad.offerwall.a.b.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (b.this.d != null) {
                            b.this.d.a();
                        }
                    }
                });
            }
        };
        this.j = new BroadcastReceiver() { // from class: com.duapps.ad.offerwall.a.b.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("action_notify_preparse_cache_result".equals(intent.getAction())) {
                    long longExtra = intent.getLongExtra("ad_id", -1L);
                    int intExtra = intent.getIntExtra("parse_result_type", 0);
                    synchronized (b.this.g) {
                        if (b.this.g != null && b.this.g.size() > 0) {
                            Iterator it = b.this.g.iterator();
                            while (it.hasNext()) {
                                if (((AdData) ((com.duapps.ad.entity.a.a) it.next()).m()).f2122b == longExtra && intExtra != 1) {
                                    it.remove();
                                }
                            }
                        }
                    }
                }
            }
        };
        this.f2204b = i;
        this.c = context;
        this.d = aVar;
        this.h = new Handler(Looper.getMainLooper());
        f();
    }

    public void a(int i) {
        this.f = false;
        this.g.clear();
        n.a(this.c.getApplicationContext()).b(this.f2204b, i, this.f2203a, 20);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<AdData> a(List<AdData> list) {
        ArrayList arrayList = new ArrayList();
        for (AdData adData : list) {
            if (!com.duapps.ad.c.b.c.a(this.c, adData.d)) {
                arrayList.add(adData);
            }
        }
        return arrayList;
    }

    public int a() {
        int i;
        synchronized (this.g) {
            Iterator<com.duapps.ad.entity.a.a> it = this.g.iterator();
            i = 0;
            while (it.hasNext()) {
                if (!com.duapps.ad.c.b.c.a(this.c, ((com.duapps.ad.entity.c) it.next()).a().d)) {
                    i++;
                }
            }
        }
        return i;
    }

    public boolean b() {
        return this.e;
    }

    public List<com.duapps.ad.entity.a.a> c() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.g) {
            ArrayList arrayList2 = new ArrayList();
            for (com.duapps.ad.entity.a.a aVar : this.g) {
                AdData adData = (AdData) aVar.m();
                if (adData != null && adData.f2121a == 2) {
                    arrayList2.add(adData);
                }
                if (adData != null) {
                    arrayList.add(aVar);
                }
            }
            if (arrayList2.size() > 0) {
                l.a(this.c).a(arrayList2);
            }
        }
        return arrayList;
    }

    public boolean d() {
        if (this.i == null) {
            return true;
        }
        int i = this.i.g <= 0 ? 1 : this.i.g;
        int i2 = this.i.f == 0 ? 1 : this.i.f;
        int i3 = i / i2;
        return this.i.e + 1 <= (i % i2 == 0 ? i3 : i3 + 1);
    }

    private void f() {
        try {
            LocalBroadcastManager.getInstance(this.c).registerReceiver(this.j, new IntentFilter("action_notify_preparse_cache_result"));
        } catch (Exception e) {
        }
    }

    private void g() {
        try {
            LocalBroadcastManager.getInstance(this.c).unregisterReceiver(this.j);
        } catch (Exception e) {
        }
    }

    public void e() {
        this.d = null;
        this.g.clear();
        g();
    }
}
