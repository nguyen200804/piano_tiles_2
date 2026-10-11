package com.applovin.impl.sdk;

import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bj extends bw {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bi f453a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    bj(bi biVar, String str, by byVar, AppLovinSdkImpl appLovinSdkImpl) {
        super(str, byVar, appLovinSdkImpl);
        this.f453a = biVar;
    }

    @Override // com.applovin.impl.sdk.bw, com.applovin.impl.sdk.cw
    public void a(int i) {
        this.f453a.b(i);
    }

    @Override // com.applovin.impl.sdk.bw
    protected void a(cv cvVar, cw cwVar) {
        cvVar.a(this.f453a.c(), ((Integer) this.f.a(av.u)).intValue(), cwVar);
    }

    @Override // com.applovin.impl.sdk.bw, com.applovin.impl.sdk.cw
    public void a(JSONObject jSONObject, int i) {
        if (i == 200) {
            this.f453a.b(jSONObject);
        } else {
            this.f453a.b(i);
        }
    }
}
