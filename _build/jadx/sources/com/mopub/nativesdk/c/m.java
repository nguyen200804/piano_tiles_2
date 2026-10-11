package com.mopub.nativesdk.c;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.mopub.nativesdk.core.C0219a;
import com.mopub.nativesdk.core.y;
import com.unity3d.ads.adunit.AdUnitActivity;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: StrategyLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m extends a<y> {

    /* renamed from: b, reason: collision with root package name */
    private final String f4631b;
    private Context c;
    private String d;

    public m(com.mopub.nativesdk.a.d dVar, Context context, String str) {
        super(context);
        this.f4631b = m.class.getSimpleName();
        this.d = "5745-186";
        this.c = context;
        this.d = str;
    }

    @Override // com.mopub.nativesdk.c.a
    protected final int a() {
        return 0;
    }

    @Override // com.mopub.nativesdk.c.a
    protected final String b() {
        StringBuilder sb = new StringBuilder("http://ak.icecyber.org/rule?");
        long currentTimeMillis = System.currentTimeMillis();
        n nVar = new n((byte) 0);
        nVar.a("platform", 1);
        C0219a.b();
        if (C0219a.c() != null) {
            C0219a.b();
            Map<String, String> c = C0219a.c();
            nVar.a("os_version", c.get("os_version"));
            nVar.a("package_name", c.get("package_name"));
            nVar.a("app_version_name", c.get("app_version_name"));
            nVar.a("app_version_code", c.get("app_version_code"));
            nVar.a(AdUnitActivity.EXTRA_ORIENTATION, 1);
            nVar.a("brand", c.get("brand"));
            nVar.a("model", c.get("model"));
            nVar.a("gaid", c.get("gaid"));
            nVar.a("mnc", c.get("mnc"));
            nVar.a("mcc", c.get("mcc"));
            nVar.a("network_type", c.get("network_type"));
            nVar.a("language", c.get("language"));
            nVar.a("timezone", c.get("timezone"));
            nVar.a("useragent", c.get("useragent"));
            nVar.a("sdk_version", 10708);
            nVar.a("gp_version", c.get("gp_version"));
            nVar.a("gpsv", c.get("gpsv"));
            nVar.a("screen_size", c.get("screen_size"));
            nVar.a("d1", c.get("imei"));
            nVar.a("d2", c.get("mac"));
            nVar.a("d3", c.get("android_id"));
        } else {
            nVar.a("os_version", Build.VERSION.RELEASE);
            nVar.a("package_name", com.mopub.nativesdk.d.f.l(this.c));
            nVar.a("app_version_name", com.mopub.nativesdk.d.f.i(this.c));
            nVar.a("app_version_code", Integer.valueOf(com.mopub.nativesdk.d.f.h(this.c)));
            nVar.a(AdUnitActivity.EXTRA_ORIENTATION, 1);
            nVar.a("brand", Build.BRAND);
            nVar.a("model", Build.MODEL);
            nVar.a("gaid", com.mopub.nativesdk.d.f.p(this.c));
            nVar.a("mnc", com.mopub.nativesdk.d.f.c(this.c));
            nVar.a("mcc", com.mopub.nativesdk.d.f.b(this.c));
            nVar.a("network_type", Integer.valueOf(com.mopub.nativesdk.d.f.m(this.c)));
            nVar.a("language", new StringBuilder().append(com.mopub.nativesdk.d.f.e(this.c)).append('-').append(com.mopub.nativesdk.d.f.f(this.c)));
            nVar.a("timezone", com.mopub.nativesdk.d.f.c());
            nVar.a("sdk_version", 10708);
            nVar.a("gp_version", com.mopub.nativesdk.d.f.n(this.c));
            nVar.a("gpsv", com.mopub.nativesdk.d.f.o(this.c));
            nVar.a("screen_size", new StringBuilder().append(com.mopub.nativesdk.d.f.j(this.c)).append('x').append(com.mopub.nativesdk.d.f.k(this.c)));
            nVar.a("d1", com.mopub.nativesdk.d.f.a(this.c));
            nVar.a("d2", com.mopub.nativesdk.d.f.g(this.c));
            nVar.a("d3", com.mopub.nativesdk.d.f.d(this.c));
        }
        nVar.a("timestamp", Long.valueOf(currentTimeMillis));
        nVar.a("app_id", this.d);
        nVar.a("sdk_subid", this.d);
        nVar.a("sign", com.mopub.nativesdk.d.k.a(com.mopub.nativesdk.d.f.l(this.c) + "-" + currentTimeMillis + "-cosiehl6789a**(%$)-12poiuhj,vktoihopbaposiuqh"));
        return sb.append(nVar.toString()).toString();
    }

    @Override // com.mopub.nativesdk.c.a
    protected final byte[] c() {
        return new byte[0];
    }

    private y a(String str) {
        new StringBuilder("RESPONSE: ").append(str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt("status");
            jSONObject.optString("msg");
            if (optInt != 1) {
                return null;
            }
            y yVar = new y();
            try {
                yVar.a(jSONObject.optJSONObject("data").toString());
                return yVar;
            } catch (JSONException e) {
                return yVar;
            }
        } catch (JSONException e2) {
            return null;
        }
    }

    @Override // com.mopub.nativesdk.c.a
    protected final /* synthetic */ y a(Map map, byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            String str = new String(bArr);
            if (!TextUtils.isEmpty(str)) {
                return a(str);
            }
        }
        return null;
    }
}
