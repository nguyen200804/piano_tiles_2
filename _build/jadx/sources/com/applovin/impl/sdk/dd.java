package com.applovin.impl.sdk;

import android.net.Uri;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class dd implements bg {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bs f525a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ EventServiceImpl f526b;

    dd(EventServiceImpl eventServiceImpl, bs bsVar) {
        this.f526b = eventServiceImpl;
        this.f525a = bsVar;
    }

    @Override // com.applovin.impl.sdk.bg
    public void a(cz czVar) {
        AppLovinSdkImpl appLovinSdkImpl;
        Uri a2;
        AppLovinSdkImpl appLovinSdkImpl2;
        try {
            a2 = this.f526b.a(this.f525a, czVar);
            appLovinSdkImpl2 = this.f526b.f398a;
            appLovinSdkImpl2.getPersistentPostbackManager().a(a2.toString(), this.f525a.b());
        } catch (Exception e) {
            appLovinSdkImpl = this.f526b.f398a;
            appLovinSdkImpl.getLogger().e("EventServiceImpl", "Unable to track event due to failure to convert event parameters into JSONObject for event: " + this.f525a, e);
        }
    }
}
