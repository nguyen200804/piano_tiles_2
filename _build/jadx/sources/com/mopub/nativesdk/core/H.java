package com.mopub.nativesdk.core;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.nativesdk.a.d;
import org.json.JSONObject;

/* compiled from: StrategyManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class H {

    /* renamed from: a, reason: collision with root package name */
    private static H f4646a;

    /* renamed from: b, reason: collision with root package name */
    private Context f4647b;
    private String c;
    private y d;
    private int e = 0;

    private H() {
    }

    private H(Context context) {
        this.f4647b = context;
        this.c = com.mopub.nativesdk.d.q.b(context, "ak.native.sdk", "APPID", "5745-186");
        com.mopub.nativesdk.d.q.b(this.f4647b, "ak.native.sdk", "SUBID", "1");
    }

    public static H a(Context context) {
        if (f4646a == null) {
            f4646a = new H(context);
        }
        f4646a.f4647b = context;
        return f4646a;
    }

    public final y a() {
        if (this.d == null) {
            this.d = a(com.mopub.nativesdk.d.q.b(this.f4647b, "ak.native.sdk", "STRATEGY_NAME", (String) null));
        }
        if (this.d == null) {
            this.d = a("{\"bt\":{\"status\":0,\"interval\":259200,\"cacheTime\":604800,\"cacheNum\":10,\"btNum\":1},\"bd\":{\"status\":0,\"dailyNum\":24,\"interval\":3600},\"noIcon\":{\"status\":0,\"rate\":50},\"fScreen\":{\"status\":0,\"dailyNum\":48,\"interval\":3600,\"closeBtn\":1,\"retryNum\":3,\"retryInterval\":180,\"bd\":1},\"icon\":{\"status\":0,\"dailyNum\":48,\"interval\":1800},\"offline\":{\"status\":0},\"alert\":{\"interval\":600,\"maxNum\":99999},\"dp\":{\"status\":0},\"sdk\":{\"sleep\":180}}");
        }
        long longValue = com.mopub.nativesdk.d.q.a(this.f4647b, "ak.native.sdk", "STRATEGY_UPDATE", (Long) 0L).longValue();
        if (System.currentTimeMillis() - longValue > 3600000 || longValue > System.currentTimeMillis()) {
            com.mopub.nativesdk.d.q.a(this.f4647b, "ak.native.sdk", "STRATEGY_UPDATE", System.currentTimeMillis());
            this.e = 0;
            b();
        }
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static y a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            y yVar = new y();
            yVar.i = jSONObject.optJSONObject("sdk").optInt("sleep") * 1000;
            JSONObject optJSONObject = jSONObject.optJSONObject("bt");
            D d = new D();
            optJSONObject.optInt("status", 0);
            d.f4640b = optJSONObject.optLong("interval", 259200L) * 1000;
            optJSONObject.optInt("cacheTime", 864000);
            d.d = optJSONObject.optInt("cacheNum", 60);
            d.e = optJSONObject.optInt("btNum", 10);
            y.f4684b = d;
            JSONObject optJSONObject2 = jSONObject.optJSONObject("bd");
            C c = new C();
            optJSONObject2.optInt("status", 0);
            optJSONObject2.optLong("interval", 3600L);
            optJSONObject2.optInt("dailyNum", 24);
            optJSONObject2.optInt("maxSize", 31457280);
            y.c = c;
            JSONObject optJSONObject3 = jSONObject.optJSONObject("noIcon");
            G g = new G();
            optJSONObject3.optInt("status", 0);
            optJSONObject3.optInt("rate", 50);
            y.d = g;
            JSONObject optJSONObject4 = jSONObject.optJSONObject("fScreen");
            B b2 = new B();
            optJSONObject4.optInt("status", 0);
            optJSONObject4.optLong("interval", 1800L);
            optJSONObject4.optInt("dailyNum", 48);
            optJSONObject4.optInt("closeBtn", 1);
            optJSONObject4.optInt("retryNum", 3);
            optJSONObject4.optInt("retryInterval", 180);
            optJSONObject4.optInt("bd", 1);
            y.e = b2;
            JSONObject optJSONObject5 = jSONObject.optJSONObject("icon");
            A a2 = new A();
            optJSONObject5.optInt("status", 0);
            optJSONObject5.optLong("interval", 1800L);
            optJSONObject5.optInt("dailyNum", 48);
            y.f = a2;
            JSONObject optJSONObject6 = jSONObject.optJSONObject("offline");
            z zVar = new z();
            optJSONObject6.optInt("status", 0);
            y.g = zVar;
            JSONObject optJSONObject7 = jSONObject.optJSONObject("alert");
            F f = new F();
            optJSONObject7.optInt("status", 0);
            optJSONObject7.optLong("interval", 1800L);
            optJSONObject7.optInt("maxNum", 9999);
            y.h = f;
            JSONObject optJSONObject8 = jSONObject.optJSONObject("dp");
            E e = new E();
            e.f4641a = optJSONObject8.optInt("status", 0);
            y.a(e);
            return yVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.e++;
        if (this.e < 5) {
            new com.mopub.nativesdk.c.m(d.a(this.f4647b), this.f4647b, this.c).a(0, new k(this));
        }
    }
}
