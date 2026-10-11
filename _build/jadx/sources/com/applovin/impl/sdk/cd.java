package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinLogger;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class cd implements cw {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f488a;

    cd(bz bzVar) {
        this.f488a = bzVar;
    }

    @Override // com.applovin.impl.sdk.cw
    public void a(int i) {
        AppLovinAdImpl appLovinAdImpl;
        AppLovinLogger appLovinLogger = this.f488a.g;
        StringBuilder append = new StringBuilder().append("Failed to report reward for ad: ");
        appLovinAdImpl = this.f488a.f483a;
        appLovinLogger.d("TaskReportReward", append.append(appLovinAdImpl.getAdIdNumber()).append(" - error code: ").append(i).toString());
    }

    @Override // com.applovin.impl.sdk.cw
    public void a(JSONObject jSONObject, int i) {
        AppLovinAdImpl appLovinAdImpl;
        AppLovinLogger appLovinLogger = this.f488a.g;
        StringBuilder append = new StringBuilder().append("Reported reward successfully for ad: ");
        appLovinAdImpl = this.f488a.f483a;
        appLovinLogger.d("TaskReportReward", append.append(appLovinAdImpl.getAdIdNumber()).toString());
    }
}
