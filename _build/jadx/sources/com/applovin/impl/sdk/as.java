package com.applovin.impl.sdk;

import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class as extends au {
    protected as(String str, AppLovinSdkImpl appLovinSdkImpl) {
        super(str, appLovinSdkImpl);
    }

    protected void a(String str, JSONObject jSONObject, cw cwVar) {
        at atVar = new at(this, "Repeat" + this.e, av.h, this.f, str, jSONObject, cwVar);
        atVar.a(av.k);
        atVar.run();
    }
}
