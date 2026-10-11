package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinPostbackListener;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bh extends bw {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ck f450a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    bh(ck ckVar, String str, int i, AppLovinSdkImpl appLovinSdkImpl) {
        super(str, i, appLovinSdkImpl);
        this.f450a = ckVar;
    }

    @Override // com.applovin.impl.sdk.bw, com.applovin.impl.sdk.cw
    public void a(int i) {
        AppLovinPostbackListener appLovinPostbackListener;
        String str;
        appLovinPostbackListener = this.f450a.c;
        str = this.f450a.f494a;
        appLovinPostbackListener.onPostbackFailure(str, i);
    }

    @Override // com.applovin.impl.sdk.bw
    protected void a(cv cvVar, cw cwVar) {
        int i;
        Map map;
        String str;
        Map map2;
        String str2;
        i = this.f450a.j;
        int intValue = i < 0 ? ((Integer) this.f.a(av.aF)).intValue() : this.f450a.j;
        map = this.f450a.f495b;
        if (map == null) {
            str2 = this.f450a.f494a;
            cvVar.a(str2, intValue, false, cwVar);
        } else {
            str = this.f450a.f494a;
            map2 = this.f450a.f495b;
            cvVar.a(str, intValue, new JSONObject(map2), false, cwVar);
        }
    }

    @Override // com.applovin.impl.sdk.bw, com.applovin.impl.sdk.cw
    public void a(JSONObject jSONObject, int i) {
        AppLovinPostbackListener appLovinPostbackListener;
        String str;
        appLovinPostbackListener = this.f450a.c;
        str = this.f450a.f494a;
        appLovinPostbackListener.onPostbackSuccess(str);
    }
}
