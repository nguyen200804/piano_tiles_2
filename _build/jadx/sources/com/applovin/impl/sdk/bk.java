package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bk extends bi {

    /* renamed from: a, reason: collision with root package name */
    private int f454a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinNativeAdLoadListener f455b;

    public bk(AppLovinSdkImpl appLovinSdkImpl, int i, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super(NativeAdImpl.SIZE_NATIVE, NativeAdImpl.TYPE_NATIVE, null, appLovinSdkImpl);
        this.f455b = appLovinNativeAdLoadListener;
        this.f454a = i;
    }

    @Override // com.applovin.impl.sdk.bi
    protected au a(JSONObject jSONObject) {
        return new bv(jSONObject, this.f, this.f455b);
    }

    @Override // com.applovin.impl.sdk.bi
    protected void a(int i) {
        if (this.f455b != null) {
            this.f455b.onNativeAdsFailedToLoad(i);
        }
    }

    @Override // com.applovin.impl.sdk.bi
    protected void b(Map map) {
        map.put("slot_count", Integer.toString(this.f454a));
    }

    @Override // com.applovin.impl.sdk.bi
    protected void c(Map map) {
        cg a2 = db.a().a("tFNW");
        if (a2 != null) {
            map.put("etfw", Long.toString(a2.b()));
            map.put("ntfw", a2.a());
        }
    }

    @Override // com.applovin.impl.sdk.bi
    protected String d() {
        return cx.b("nad", this.f);
    }

    @Override // com.applovin.impl.sdk.bi, com.applovin.impl.sdk.dg
    public String e() {
        return "tFNW";
    }
}
