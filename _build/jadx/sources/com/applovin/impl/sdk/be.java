package com.applovin.impl.sdk;

import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class be extends bw {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ JSONObject f446a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bd f447b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    be(bd bdVar, String str, by byVar, AppLovinSdkImpl appLovinSdkImpl, JSONObject jSONObject) {
        super(str, byVar, appLovinSdkImpl);
        this.f447b = bdVar;
        this.f446a = jSONObject;
    }

    @Override // com.applovin.impl.sdk.bw, com.applovin.impl.sdk.cw
    public void a(int i) {
        cx.a(i, this.f);
    }

    @Override // com.applovin.impl.sdk.bw
    protected void a(cv cvVar, cw cwVar) {
        cvVar.a(cx.a("device", this.f), this.f446a, cwVar);
    }

    @Override // com.applovin.impl.sdk.bw, com.applovin.impl.sdk.cw
    public void a(JSONObject jSONObject, int i) {
        this.f447b.a(jSONObject);
    }
}
