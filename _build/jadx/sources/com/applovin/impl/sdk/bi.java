package com.applovin.impl.sdk;

import android.graphics.Point;
import com.applovin.adview.AppLovinInterstitialActivity;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mopub.common.AdType;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bi extends au implements dg {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinAdSize f451a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinAdType f452b;
    private final AppLovinAdLoadListener c;
    private boolean d;

    bi(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, AppLovinAdLoadListener appLovinAdLoadListener, AppLovinSdkImpl appLovinSdkImpl) {
        super("FetchNextAd", appLovinSdkImpl);
        this.d = false;
        this.f451a = appLovinAdSize;
        this.f452b = appLovinAdType;
        this.c = appLovinAdLoadListener;
    }

    private void a(bc bcVar) {
        if (System.currentTimeMillis() - bcVar.b("ad_session_start") > ((Integer) this.f.a(av.x)).intValue() * 60000) {
            bcVar.b("ad_session_start", System.currentTimeMillis());
            bcVar.c("ad_imp_session");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        this.g.e(this.e, "Unable to fetch " + this.f451a + " ad: server returned " + i);
        try {
            a(i);
        } catch (Throwable th) {
            this.g.userError(this.e, "Unable process a failure to recieve an ad", th);
        }
        cx.b(i, this.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject) {
        this.f.a().a(a(jSONObject), bp.MAIN);
        cx.a(jSONObject, this.f);
    }

    private void d(Map map) {
        map.put("api_did", this.f.a(av.c));
        map.put("sdk_key", this.f.getSdkKey());
        map.put("sdk_version", AppLovinSdk.VERSION);
        String str = (String) this.f.a(av.F);
        if (str != null && str.length() > 0) {
            map.put("plugin_version", str);
        }
        map.put("accept", g());
        map.put("v1", Boolean.toString(n.a("android.permission.WRITE_EXTERNAL_STORAGE", this.h)));
        map.put("v2", Boolean.toString(n.a(AppLovinInterstitialActivity.class, this.h)));
        map.put("preloading", String.valueOf(this.d));
        map.put("size", this.f451a.getLabel());
        map.put("format", AdType.STATIC_NATIVE);
        map.put("ia", Long.toString(this.f.getDataCollector().b().d));
    }

    private void e(Map map) {
        if (((Boolean) this.f.a(av.N)).booleanValue()) {
            bc b2 = this.f.b();
            map.put("li", String.valueOf(b2.b("ad_imp")));
            map.put("si", String.valueOf(b2.b("ad_imp_session")));
        }
    }

    private void f(Map map) {
        Map a2;
        if (!((Boolean) this.f.a(av.N)).booleanValue() || (a2 = ((cu) this.f.getTargetingData()).a()) == null || a2.isEmpty()) {
            return;
        }
        map.putAll(a2);
    }

    private String g() {
        return (n.b() && n.a(AppLovinInterstitialActivity.class, this.h)) ? "custom_size,launch_app,video" : "custom_size,launch_app";
    }

    private void g(Map map) {
        Map a2 = a.a(this.f);
        if (a2.isEmpty()) {
            try {
                h(a2);
                a.a(a2, this.f);
            } catch (Exception e) {
                this.g.e(this.e, "Unable to populate device information", e);
            }
        }
        map.putAll(a2);
        map.put("network", cx.a(this.f));
        j(map);
        map.put("vz", dh.a(this.f.getApplicationContext().getPackageName(), this.f));
    }

    private void h(Map map) {
        dc a2 = this.f.getDataCollector().a();
        map.put("brand", dh.c(a2.c));
        map.put("carrier", dh.c(a2.g));
        map.put("locale", a2.h.toString());
        map.put("model", dh.c(a2.f523a));
        map.put("os", dh.c(a2.f524b));
        map.put("platform", "android");
        map.put("revision", dh.c(a2.d));
        i(map);
    }

    private void i(Map map) {
        Point a2 = n.a(this.f.getApplicationContext());
        map.put("dx", Integer.toString(a2.x));
        map.put("dy", Integer.toString(a2.y));
    }

    private void j(Map map) {
        cz c = this.f.getDataCollector().c();
        String str = c.f517b;
        boolean z = c.f516a;
        if ((!z || ((Boolean) this.f.getSettingsManager().a(av.be)).booleanValue()) && AppLovinSdkUtils.isValidString(str)) {
            map.put("idfa", str);
        }
        map.put("dnt", Boolean.toString(z));
    }

    protected au a(JSONObject jSONObject) {
        return new bu(jSONObject, this.c, this.f);
    }

    protected void a(int i) {
        if (this.c != null) {
            if (this.c instanceof de) {
                ((de) this.c).a(new c(this.f451a, this.f452b), i);
            } else {
                this.c.failedToReceiveAd(i);
            }
        }
    }

    protected void a(Map map) {
        f(map);
        g(map);
        e(map);
        d(map);
        b(map);
        c(map);
    }

    public void a(boolean z) {
        this.d = z;
    }

    @Override // com.applovin.impl.sdk.au
    void b() {
        super.b();
        b(-410);
    }

    protected void b(Map map) {
        if (this.f452b != null) {
            map.put("require", this.f452b.getLabel());
        }
    }

    String c() {
        HashMap hashMap = new HashMap();
        a(hashMap);
        return d() + "?" + dh.a(hashMap);
    }

    protected void c(Map map) {
        cg a2 = db.a().a("tFNA");
        if (a2 != null) {
            map.put("etf", Long.toString(a2.b()));
            map.put("ntf", a2.a());
        }
        cg a3 = db.a().a("tRA");
        if (a3 != null) {
            map.put("etr", Long.toString(a3.b()));
            map.put("ntr", a3.a());
            map.put("fvr", a3.c() ? "1" : "0");
        }
    }

    protected String d() {
        return cx.b("2.0/ad", this.f);
    }

    @Override // com.applovin.impl.sdk.dg
    public String e() {
        return "tFNA";
    }

    @Override // com.applovin.impl.sdk.dg
    public boolean f() {
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.d) {
            this.g.d(this.e, "Preloading next ad...");
        } else {
            this.g.d(this.e, "Fetching next ad...");
        }
        bc b2 = this.f.b();
        b2.a("ad_req");
        a(b2);
        try {
            bj bjVar = new bj(this, "RepeatFetchNextAd", av.i, this.f);
            bjVar.a(av.l);
            bjVar.run();
        } catch (Throwable th) {
            this.g.e(this.e, "Unable to fetch " + this.f451a + " ad", th);
            b(0);
        }
    }
}
