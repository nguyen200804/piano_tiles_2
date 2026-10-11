package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class cj extends as {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinAdImpl f492a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinAdRewardListener f493b;
    private final Object c;
    private volatile boolean d;

    public cj(AppLovinSdkImpl appLovinSdkImpl, AppLovinAd appLovinAd, AppLovinAdRewardListener appLovinAdRewardListener) {
        super("TaskValidateReward", appLovinSdkImpl);
        this.c = new Object();
        this.d = false;
        this.f492a = (AppLovinAdImpl) appLovinAd;
        this.f493b = appLovinAdRewardListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (c()) {
            return;
        }
        String str = "network_timeout";
        if (i < 400 || i > 500) {
            this.f493b.validationRequestFailed(this.f492a, i);
        } else {
            this.f493b.userRewardRejected(this.f492a, new HashMap(0));
            str = "rejected";
        }
        bl.a().a(this.f492a, str);
    }

    private void a(String str, Map map) {
        if (c()) {
            return;
        }
        bl a2 = bl.a();
        a2.a(this.f492a, str);
        a2.a(this.f492a, map);
        if (str.equals("accepted")) {
            this.f493b.userRewardVerified(this.f492a, map);
            return;
        }
        if (str.equals("quota_exceeded")) {
            this.f493b.userOverQuota(this.f492a, map);
        } else if (str.equals("rejected")) {
            this.f493b.userRewardRejected(this.f492a, map);
        } else {
            this.f493b.validationRequestFailed(this.f492a, AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        Map hashMap;
        String str;
        if (c()) {
            return;
        }
        try {
            JSONObject a2 = cx.a(jSONObject);
            cx.a(a2, this.f);
            try {
                hashMap = ax.a((JSONObject) a2.get("params"));
            } catch (Throwable th) {
                hashMap = new HashMap(0);
            }
            try {
                str = a2.getString("result");
            } catch (Throwable th2) {
                str = "network_timeout";
            }
            a(str, hashMap);
        } catch (JSONException e) {
            this.g.e(this.e, "Unable to parse API response", e);
        }
    }

    public void a(boolean z) {
        synchronized (this.c) {
            this.d = z;
        }
    }

    boolean c() {
        boolean z;
        synchronized (this.c) {
            z = this.d;
        }
        return z;
    }

    @Override // java.lang.Runnable
    public void run() {
        String b2 = z.b();
        String clCode = this.f492a.getClCode();
        HashMap hashMap = new HashMap(2);
        if (AppLovinSdkUtils.isValidString(clCode)) {
            hashMap.put("clcode", clCode);
        } else {
            hashMap.put("clcode", "NO_CLCODE");
        }
        if (b2 != null) {
            hashMap.put("user_id", b2);
        }
        a("vr", new JSONObject(hashMap), new cl(this));
    }
}
