package com.applovin.impl.sdk;

import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class at extends bw {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f436a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ JSONObject f437b;
    final /* synthetic */ cw c;
    final /* synthetic */ as d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    at(as asVar, String str, by byVar, AppLovinSdkImpl appLovinSdkImpl, String str2, JSONObject jSONObject, cw cwVar) {
        super(str, byVar, appLovinSdkImpl);
        this.d = asVar;
        this.f436a = str2;
        this.f437b = jSONObject;
        this.c = cwVar;
    }

    @Override // com.applovin.impl.sdk.bw, com.applovin.impl.sdk.cw
    public void a(int i) {
        this.c.a(i);
    }

    @Override // com.applovin.impl.sdk.bw
    protected void a(cv cvVar, cw cwVar) {
        cvVar.a(cx.a(cx.a(this.f436a, this.f)), this.f437b, cwVar);
    }

    @Override // com.applovin.impl.sdk.bw, com.applovin.impl.sdk.cw
    public void a(JSONObject jSONObject, int i) {
        this.c.a(jSONObject, i);
    }
}
