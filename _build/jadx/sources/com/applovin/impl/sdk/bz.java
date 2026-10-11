package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bz extends as {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinAdImpl f483a;

    public bz(AppLovinSdkImpl appLovinSdkImpl, AppLovinAd appLovinAd) {
        super("TaskReportReward", appLovinSdkImpl);
        this.f483a = (AppLovinAdImpl) appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        String b2 = z.b();
        String clCode = this.f483a.getClCode();
        HashMap hashMap = new HashMap(2);
        if (AppLovinSdkUtils.isValidString(clCode)) {
            hashMap.put("clcode", clCode);
        } else {
            hashMap.put("clcode", "NO_CLCODE");
        }
        if (b2 != null) {
            hashMap.put("user_id", b2);
        }
        bl a2 = bl.a();
        String b3 = a2.b(this.f483a);
        if (b3 == null) {
            this.g.d("TaskReportReward", "No reward result was found for ad: " + this.f483a);
            return;
        }
        hashMap.put("result", b3);
        Map a3 = a2.a(this.f483a);
        if (a3 != null) {
            hashMap.put("params", a3);
        }
        a("cr", new JSONObject(hashMap), new cd(this));
    }
}
