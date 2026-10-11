package com.duapps.ad.offerwall;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.duapps.ad.base.h;
import com.duapps.ad.base.p;
import com.duapps.ad.f;
import com.duapps.ad.offerwall.a.b;
import com.duapps.ad.offerwall.ui.c;
import java.util.ArrayList;
import java.util.List;

/* compiled from: OfferWallPresenter2.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public int f2199a;

    /* renamed from: b, reason: collision with root package name */
    private Handler f2200b;
    private c c;
    private int d;
    private int e;
    private Context f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private b k;
    private boolean l;
    private boolean m;
    private f n;
    private com.duapps.ad.entity.a.a o;
    private long p;
    private com.duapps.ad.c q;
    private com.duapps.ad.offerwall.a.a r;

    public a(int i, c cVar, Context context) {
        this(i, -1, cVar, context);
    }

    public a(int i, int i2, c cVar, Context context) {
        this.m = true;
        this.q = new com.duapps.ad.c() { // from class: com.duapps.ad.offerwall.a.1
            @Override // com.duapps.ad.c
            public void a(f fVar, com.duapps.ad.a aVar) {
                h.c("OfferWallPresenter2", "offerwall native ad onError ErrorCode : " + aVar.a() + ", ErrorMessage : " + aVar.b());
                a.this.i = true;
                if (a.this.j) {
                    a.this.f2200b.removeMessages(1);
                    a.this.l = false;
                    a.this.b(3);
                }
            }

            @Override // com.duapps.ad.c
            public void a(f fVar) {
                a.this.o = fVar.m();
                h.c("OfferWallPresenter2", "offerwall native ad onAdLoaded isLoading : " + a.this.l + ", isDLError : " + a.this.j + ", getAdSource : " + a.this.o.l());
                if (!a.this.l) {
                    a.this.a(a.this.o);
                    return;
                }
                if (a.this.j) {
                    a.this.f2200b.removeMessages(1);
                    a.this.l = false;
                    a.this.a(a.this.o);
                    a.this.c.a(5, System.currentTimeMillis() - a.this.p);
                }
            }

            @Override // com.duapps.ad.c
            public void b(f fVar) {
                h.c("OfferWallPresenter2", "offerwall native ad onClick.");
            }
        };
        this.r = new com.duapps.ad.offerwall.a.a() { // from class: com.duapps.ad.offerwall.a.2
            @Override // com.duapps.ad.offerwall.a.a
            public void a() {
                h.c("OfferWallPresenter2", "offerwall adlist onAdsError isNativeError : " + a.this.i + ", isNativeNeedFill : " + a.this.h);
                a.this.j = true;
                if (a.this.i || !a.this.h) {
                    a.this.f2200b.removeMessages(1);
                    a.this.l = false;
                    a.this.b(4);
                }
                if (a.this.h && a.this.o != null) {
                    a.this.f2200b.removeMessages(1);
                    a.this.l = false;
                    a.this.a(a.this.o);
                    a.this.c.a(6, System.currentTimeMillis() - a.this.p);
                }
            }

            @Override // com.duapps.ad.offerwall.a.a
            public void b() {
                h.c("OfferWallPresenter2", "offerwall adlist onAdsArrival mDLAdsManager.getValidCount() : " + a.this.k.a());
                a.this.f2200b.removeMessages(1);
                a.this.l = false;
                if (a.this.k.a() > 0) {
                    a.this.g = true;
                    a.this.a(a.this.k.c());
                }
                a.this.a(a.this.o);
                a.this.g();
            }
        };
        this.d = i;
        this.e = i2;
        this.f = context;
        this.c = cVar;
        this.f2200b = new Handler(this);
        if (i2 > 0) {
            this.h = true;
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(p.a(context.getApplicationContext()).e(this.e));
            this.n = new f(context, this.e, arrayList, 1, "offerwall");
            this.n.a(this.q);
        }
    }

    public void a() {
        this.m = true;
        this.c.a(this.m);
        a(1);
        if (this.h) {
            this.i = false;
            this.n.c();
            this.f2200b.removeMessages(1);
            this.f2200b.sendEmptyMessageDelayed(1, 10000L);
        }
    }

    public void a(int i) {
        this.p = System.currentTimeMillis();
        if (!com.duapps.ad.c.b.c.a(this.f.getApplicationContext())) {
            this.f2200b.sendEmptyMessageDelayed(2, 1000L);
            return;
        }
        if (!this.l) {
            if (this.k == null) {
                this.k = new b(this.d, this.f, this.r);
            }
            if (!this.k.d() && i > 1) {
                f();
                return;
            }
            if (this.g && e()) {
                a(this.k.c());
                return;
            }
            this.c.a(this.m);
            d();
            this.f2199a = i;
            if (!this.k.b()) {
                this.j = false;
                this.k.a(i);
                this.f2200b.removeMessages(1);
                this.f2200b.sendEmptyMessageDelayed(1, 10000L);
            }
        }
    }

    public void b() {
        this.m = false;
    }

    private void d() {
        this.l = true;
    }

    private boolean e() {
        return this.k.a() > 0;
    }

    private void f() {
        this.c.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.c.a(this.m, System.currentTimeMillis() - this.p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        this.c.a(this.m, i, System.currentTimeMillis() - this.p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.duapps.ad.entity.a.a aVar) {
        if (b(aVar) && this.h) {
            this.h = false;
            this.f2200b.removeMessages(1);
            ArrayList arrayList = new ArrayList();
            arrayList.add(aVar);
            this.c.b(arrayList);
        }
    }

    private boolean b(com.duapps.ad.entity.a.a aVar) {
        return aVar != null && TextUtils.equals("fb", aVar.l());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<com.duapps.ad.entity.a.a> list) {
        this.g = false;
        this.c.a(list);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 1) {
            b(2);
            h.c("OfferWallPresenter2", "Poll data timeout.");
            return false;
        }
        if (message.what == 2) {
            b(1);
            return false;
        }
        return false;
    }

    public void c() {
        if (this.k != null) {
            this.k.e();
        }
        if (this.n != null) {
            this.n.d();
        }
        this.f2200b.removeMessages(1);
    }
}
