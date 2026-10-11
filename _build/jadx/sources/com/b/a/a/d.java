package com.b.a.a;

import android.content.Context;
import b.a.ap;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventTypes;
import com.b.a.a.c;
import com.b.a.f;
import com.b.a.g;
import com.b.a.i;
import com.b.a.j;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.HashMap;

/* compiled from: InternalGameAgent.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class d implements f {

    /* renamed from: a, reason: collision with root package name */
    private g f608a = com.b.a.b.a();

    /* renamed from: b, reason: collision with root package name */
    private c f609b = null;
    private final int c = 100;
    private final int d = 1;
    private final int e;
    private final int f;
    private final int g;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;
    private final String m;
    private final String n;
    private final String o;
    private final String p;
    private final String q;
    private final String r;
    private final String s;
    private final String t;
    private final String u;
    private final String v;
    private final String w;
    private Context x;

    public d() {
        this.f608a.a(1);
        this.e = 0;
        this.f = -1;
        this.g = 1;
        this.h = AppLovinEventTypes.USER_COMPLETED_LEVEL;
        this.i = "pay";
        this.j = "buy";
        this.k = "use";
        this.l = "bonus";
        this.m = "item";
        this.n = "cash";
        this.o = "coin";
        this.p = "source";
        this.q = AppLovinEventParameters.REVENUE_AMOUNT;
        this.r = "user_level";
        this.s = "bonus_source";
        this.t = AppLovinEventTypes.USER_COMPLETED_LEVEL;
        this.u = "status";
        this.v = VastIconXmlManager.DURATION;
        this.w = "UMGameAgent.init(Context) should be called before any game api";
        b.f603a = true;
    }

    void a(Context context) {
        if (context == null) {
            ap.b("MobclickAgent", "Context is null, can't init GameAgent");
            return;
        }
        this.x = context.getApplicationContext();
        this.f608a.a(this);
        this.f609b = new c(this.x);
    }

    void a(final String str) {
        if (this.x == null) {
            ap.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
        } else {
            this.f609b.f604a = str;
            i.a(new j() { // from class: com.b.a.a.d.1
                @Override // com.b.a.j
                public void a() {
                    d.this.f609b.a(str);
                    HashMap<String, Object> hashMap = new HashMap<>();
                    hashMap.put(AppLovinEventTypes.USER_COMPLETED_LEVEL, str);
                    hashMap.put("status", 0);
                    if (d.this.f609b.f605b != null) {
                        hashMap.put("user_level", d.this.f609b.f605b);
                    }
                    d.this.f608a.a(d.this.x, AppLovinEventTypes.USER_COMPLETED_LEVEL, hashMap);
                }
            });
        }
    }

    private void a(final String str, final int i) {
        if (this.x == null) {
            ap.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
        } else {
            i.a(new j() { // from class: com.b.a.a.d.2
                @Override // com.b.a.j
                public void a() {
                    c.a b2 = d.this.f609b.b(str);
                    if (b2 != null) {
                        long e = b2.e();
                        if (e <= 0) {
                            ap.c("MobclickAgent", "level duration is 0");
                            return;
                        }
                        HashMap<String, Object> hashMap = new HashMap<>();
                        hashMap.put(AppLovinEventTypes.USER_COMPLETED_LEVEL, str);
                        hashMap.put("status", Integer.valueOf(i));
                        hashMap.put(VastIconXmlManager.DURATION, Long.valueOf(e));
                        if (d.this.f609b.f605b != null) {
                            hashMap.put("user_level", d.this.f609b.f605b);
                        }
                        d.this.f608a.a(d.this.x, AppLovinEventTypes.USER_COMPLETED_LEVEL, hashMap);
                        return;
                    }
                    ap.d("MobclickAgent", String.format("finishLevel(or failLevel) called before startLevel", new Object[0]));
                }
            });
        }
    }

    void b(String str) {
        if (this.x == null) {
            ap.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
        } else {
            a(str, 1);
        }
    }

    @Override // com.b.a.f
    public void a() {
        ap.c("MobclickAgent", "App resume from background");
        if (this.x == null) {
            ap.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
        } else if (b.f603a) {
            this.f609b.b();
        }
    }

    @Override // com.b.a.f
    public void b() {
        if (this.x == null) {
            ap.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
        } else if (b.f603a) {
            this.f609b.a();
        }
    }
}
