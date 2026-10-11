package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RelativeLayout;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.VideoStartReason;
import com.facebook.ads.internal.util.ad;
import com.facebook.ads.internal.util.af;
import com.facebook.ads.internal.util.ak;
import com.facebook.ads.internal.util.y;
import com.facebook.ads.internal.view.d.b.d;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i extends r implements af<Bundle> {
    static final /* synthetic */ boolean d;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    protected com.facebook.ads.internal.view.o f2602a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    protected JSONObject f2603b;

    @Nullable
    protected Context c;

    @Nullable
    private com.facebook.ads.a.a i;

    @Nullable
    private com.facebook.ads.internal.g.f j;

    @Nullable
    private String k;

    @Nullable
    private ak m;

    @Nullable
    private String n;
    private com.facebook.ads.internal.c.b p;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b> e = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b>() { // from class: com.facebook.ads.internal.adapters.i.1
        @Override // com.facebook.ads.internal.g.s
        public Class<com.facebook.ads.internal.view.d.a.b> a() {
            return com.facebook.ads.internal.view.d.a.b.class;
        }

        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.b bVar) {
            if (i.this.i == null) {
                return;
            }
            i.this.i.d(i.this);
        }
    };
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.l> f = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.l>() { // from class: com.facebook.ads.internal.adapters.i.2
        @Override // com.facebook.ads.internal.g.s
        public Class<com.facebook.ads.internal.view.d.a.l> a() {
            return com.facebook.ads.internal.view.d.a.l.class;
        }

        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.l lVar) {
            i.this.l = true;
            if (i.this.i != null) {
                i.this.i.a(i.this);
            }
        }
    };
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.d> g = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.d>() { // from class: com.facebook.ads.internal.adapters.i.3
        @Override // com.facebook.ads.internal.g.s
        public Class<com.facebook.ads.internal.view.d.a.d> a() {
            return com.facebook.ads.internal.view.d.a.d.class;
        }

        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.d dVar) {
            if (i.this.i == null) {
                return;
            }
            i.this.i.a(i.this, AdError.INTERNAL_ERROR);
        }
    };
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.a> h = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.a>() { // from class: com.facebook.ads.internal.adapters.i.4
        @Override // com.facebook.ads.internal.g.s
        public Class<com.facebook.ads.internal.view.d.a.a> a() {
            return com.facebook.ads.internal.view.d.a.a.class;
        }

        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.a aVar) {
            if (i.this.i != null) {
                i.this.i.b(i.this);
            }
        }
    };
    private boolean l = false;
    private boolean o = false;

    static {
        d = !i.class.desiredAssertionStatus();
    }

    private void a(Context context, com.facebook.ads.a.a aVar, JSONObject jSONObject, com.facebook.ads.internal.g.f fVar, @Nullable Bundle bundle, EnumSet<CacheFlag> enumSet) {
        this.c = context;
        this.i = aVar;
        this.j = fVar;
        this.f2603b = jSONObject;
        this.l = false;
        JSONObject jSONObject2 = jSONObject.getJSONObject("video");
        this.n = jSONObject.optString("ct");
        this.f2602a = new com.facebook.ads.internal.view.o(context);
        a();
        this.f2602a.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.e);
        this.f2602a.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f);
        this.f2602a.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.g);
        this.f2602a.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.h);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.facebook.ads.internal.b.b(1.0E-7d, -1.0d, 0.001d, false) { // from class: com.facebook.ads.internal.adapters.i.5
            @Override // com.facebook.ads.internal.b.b
            protected void a(boolean z, boolean z2, com.facebook.ads.internal.b.c cVar) {
                i.this.f();
            }
        });
        if (bundle != null) {
            this.m = new ad(context, fVar, this.f2602a, arrayList, this.n, bundle.getBundle("logger"));
        } else {
            this.m = new ad(context, fVar, this.f2602a, arrayList, this.n);
        }
        this.i.a(this, this.f2602a);
        if (com.facebook.ads.internal.util.y.c(context) == y.a.MOBILE_INTERNET && jSONObject2.has("videoHDURL") && !jSONObject2.isNull("videoHDURL")) {
            this.k = jSONObject2.getString("videoHDURL");
        } else {
            this.k = jSONObject2.getString(AudienceNetworkActivity.VIDEO_URL);
        }
        if (!enumSet.contains(CacheFlag.VIDEO)) {
            this.f2602a.setVideoURI(g());
            return;
        }
        this.p = new com.facebook.ads.internal.c.b(context);
        this.p.b(this.k);
        this.p.a(new com.facebook.ads.internal.c.a() { // from class: com.facebook.ads.internal.adapters.i.6
            @Override // com.facebook.ads.internal.c.a
            public void a() {
                i.this.f2602a.setVideoURI(i.this.g());
            }

            @Override // com.facebook.ads.internal.c.a
            public void b() {
                i.this.f2602a.setVideoURI(i.this.g());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String g() {
        String str = "";
        if (this.p != null && this.k != null) {
            str = this.p.c(this.k);
        }
        return TextUtils.isEmpty(str) ? this.k : str;
    }

    protected void a() {
        if (!d && this.c == null) {
            throw new AssertionError();
        }
        if (!d && this.f2603b == null) {
            throw new AssertionError();
        }
        JSONObject optJSONObject = this.f2603b.optJSONObject("text");
        if (optJSONObject == null) {
            optJSONObject = new JSONObject();
        }
        this.f2602a.a(new com.facebook.ads.internal.view.d.b.j(this.c));
        com.facebook.ads.internal.view.d.b.k kVar = new com.facebook.ads.internal.view.d.b.k(this.c);
        this.f2602a.a(kVar);
        this.f2602a.a(new com.facebook.ads.internal.view.d.b.d(kVar, d.a.INVSIBLE));
        this.f2602a.a(new com.facebook.ads.internal.view.d.b.b(this.c));
        String b2 = b();
        if (b2 != null) {
            com.facebook.ads.internal.view.d.b.c cVar = new com.facebook.ads.internal.view.d.b.c(this.c, b2);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(12);
            layoutParams.addRule(9);
            cVar.setLayoutParams(layoutParams);
            cVar.setCountdownTextColor(-1);
            this.f2602a.a(cVar);
        }
        if (this.f2603b.has("cta") && !this.f2603b.isNull("cta")) {
            JSONObject jSONObject = this.f2603b.getJSONObject("cta");
            com.facebook.ads.internal.view.d.b.e eVar = new com.facebook.ads.internal.view.d.b.e(this.c, jSONObject.getString("url"), this.n, jSONObject.getString("text"));
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(10);
            layoutParams2.addRule(11);
            eVar.setLayoutParams(layoutParams2);
            this.f2602a.a(eVar);
        }
        String d2 = d();
        if (!TextUtils.isEmpty(d2)) {
            this.f2602a.a(new com.facebook.ads.internal.view.d.b.a(this.c, d2, this.n, new float[]{0.0f, 0.0f, 8.0f, 0.0f}));
        }
        int c = c();
        if (c > 0) {
            com.facebook.ads.internal.view.d.b.h hVar = new com.facebook.ads.internal.view.d.b.h(this.c, c, optJSONObject.optString("skipAdIn", "Skip Ad in"), optJSONObject.optString("skipAd", "Skip Ad"));
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(12);
            layoutParams3.addRule(11);
            hVar.setLayoutParams(layoutParams3);
            hVar.setPadding(0, 0, 0, 30);
            this.f2602a.a(hVar);
        }
    }

    public final void a(Context context, com.facebook.ads.a.a aVar, com.facebook.ads.internal.g.f fVar, Bundle bundle, EnumSet<CacheFlag> enumSet) {
        try {
            a(context, aVar, new JSONObject(bundle.getString("ad_response")), fVar, bundle, enumSet);
        } catch (JSONException e) {
            aVar.a(this, AdError.INTERNAL_ERROR);
        }
    }

    @Override // com.facebook.ads.internal.adapters.r
    public final void a(Context context, com.facebook.ads.a.a aVar, Map<String, Object> map, com.facebook.ads.internal.g.f fVar, EnumSet<CacheFlag> enumSet) {
        try {
            a(context, aVar, (JSONObject) map.get("data"), fVar, null, enumSet);
        } catch (JSONException e) {
            aVar.a(this, AdError.INTERNAL_ERROR);
        }
    }

    protected String b() {
        if (!d && this.f2603b == null) {
            throw new AssertionError();
        }
        try {
            JSONObject jSONObject = this.f2603b.getJSONObject("capabilities");
            if (!jSONObject.has("countdown") || jSONObject.isNull("countdown")) {
                return null;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("countdown");
            if (jSONObject2.has("format")) {
                return jSONObject2.optString("format");
            }
            return null;
        } catch (Exception e) {
            Log.w(String.valueOf(i.class), "Invalid JSON", e);
            return null;
        }
    }

    protected int c() {
        if (!d && this.f2603b == null) {
            throw new AssertionError();
        }
        try {
            JSONObject jSONObject = this.f2603b.getJSONObject("capabilities");
            if (!jSONObject.has("skipButton") || jSONObject.isNull("skipButton")) {
                return -1;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("skipButton");
            if (jSONObject2.has("skippableSeconds")) {
                return jSONObject2.getInt("skippableSeconds");
            }
            return -1;
        } catch (Exception e) {
            Log.w(String.valueOf(i.class), "Invalid JSON", e);
            return -1;
        }
    }

    @Nullable
    protected String d() {
        if (!d && this.f2603b == null) {
            throw new AssertionError();
        }
        try {
            JSONObject jSONObject = this.f2603b.getJSONObject("capabilities");
            if (!jSONObject.has("adChoices") || jSONObject.isNull("adChoices")) {
                return null;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("adChoices");
            if (jSONObject2.has("url")) {
                return jSONObject2.getString("url");
            }
            return null;
        } catch (Exception e) {
            Log.w(String.valueOf(i.class), "Invalid JSON", e);
            return null;
        }
    }

    @Override // com.facebook.ads.internal.adapters.r
    public boolean e() {
        if (!this.l || this.f2602a == null) {
            return false;
        }
        if (this.m.k() > 0) {
            this.f2602a.a(this.m.k());
        }
        this.f2602a.a(VideoStartReason.AUTO_STARTED);
        return true;
    }

    protected void f() {
        if (this.j == null || this.o) {
            return;
        }
        this.o = true;
        this.j.a(this.n, new HashMap());
        if (this.i != null) {
            this.i.c(this);
        }
    }

    @Override // com.facebook.ads.internal.util.af
    public Bundle getSaveInstanceState() {
        if (this.m == null || this.f2603b == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("logger", this.m.getSaveInstanceState());
        bundle.putString("ad_response", this.f2603b.toString());
        return bundle;
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        if (this.f2602a != null) {
            this.f2602a.f();
            this.f2602a.h();
        }
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = false;
        this.n = null;
        this.f2602a = null;
        this.m = null;
        this.f2603b = null;
        this.c = null;
        this.o = false;
    }
}
