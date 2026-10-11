package com.duapps.ad;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.duapps.ad.base.m;
import com.duapps.ad.base.p;
import com.mopub.common.AdType;
import java.util.List;

/* compiled from: DuNativeAd.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    k f2144a;

    /* renamed from: b, reason: collision with root package name */
    private Context f2145b;
    private com.duapps.ad.entity.a.a c;
    private c d;
    private int e;
    private View f;
    private e g;
    private String h;
    private boolean i;
    private b j;

    public f(Context context, int i, int i2, String str) {
        this(context, i, null, i2, str);
    }

    public f(Context context, int i, List<String> list, int i2, String str) {
        this.j = new b() { // from class: com.duapps.ad.f.1
            @Override // com.duapps.ad.b
            public void a(com.duapps.ad.entity.a.a aVar) {
                f.this.c = aVar;
                c cVar = f.this.d;
                if (cVar != null) {
                    cVar.a(f.this);
                }
                if (f.this.g != null) {
                    f.this.c.a(f.this.g);
                }
            }

            @Override // com.duapps.ad.b
            public void a(a aVar) {
                c cVar = f.this.d;
                if (cVar != null) {
                    cVar.a(f.this, aVar);
                }
            }

            @Override // com.duapps.ad.b
            public void a() {
                c cVar = f.this.d;
                if (cVar != null) {
                    cVar.b(f.this);
                }
            }
        };
        this.f2145b = context;
        this.e = i;
        this.h = str;
        this.f2144a = (k) j.a(context.getApplicationContext()).a(this.e, i2, str);
        if (list != null && list.size() > 0) {
            this.f2144a.a(list);
        }
        this.i = p.a(context).a(i);
        if (!this.i) {
            Log.e("DAP", "DAP Pid:" + this.e + "cannot found in native configuration json file");
        }
    }

    public void a(c cVar) {
        this.d = cVar;
    }

    public void a(View view) {
        if (a()) {
            if (this.f != null) {
                b();
            }
            this.f = view;
            this.c.a(n());
            this.c.a(view);
        }
    }

    public boolean a() {
        return this.c != null;
    }

    public void b() {
        if (a()) {
            this.c.b();
        }
    }

    public void c() {
        if (!this.i) {
            Log.e("DAP", "DAP Pid:" + this.e + "cannot found in native configuration json file");
            return;
        }
        if (!m.g(this.f2145b)) {
            this.j.a(a.c);
            return;
        }
        this.f2144a.a((b) null);
        this.f2144a.a(this.j);
        this.f2144a.a();
        m.h(this.f2145b);
    }

    public void d() {
        if (a()) {
            this.c.c();
        }
        this.f2144a.a((b) null);
        this.f2144a.b();
    }

    public String e() {
        if (a()) {
            return this.c.h();
        }
        return null;
    }

    public String f() {
        if (a()) {
            return this.c.g();
        }
        return null;
    }

    public String g() {
        if (a()) {
            return this.c.e();
        }
        return null;
    }

    public String h() {
        if (a()) {
            return this.c.d();
        }
        return null;
    }

    public float i() {
        if (a()) {
            return this.c.i();
        }
        return 4.5f;
    }

    public String j() {
        if (a()) {
            return this.c.f();
        }
        return null;
    }

    public int k() {
        if (a()) {
            return this.c.j();
        }
        return -1;
    }

    public Object l() {
        if (a()) {
            return this.c.k();
        }
        return null;
    }

    public com.duapps.ad.entity.a.a m() {
        if (a()) {
            return this.c;
        }
        return null;
    }

    public String n() {
        if (TextUtils.equals(this.h, AdType.INTERSTITIAL)) {
            return AdType.INTERSTITIAL;
        }
        if (TextUtils.equals(this.h, "interstitial_screen")) {
            return "interstitial_screen";
        }
        if (TextUtils.equals(this.h, "offerwall")) {
            return "offerwall";
        }
        if (TextUtils.equals(this.h, "native")) {
            return "native";
        }
        return "";
    }
}
