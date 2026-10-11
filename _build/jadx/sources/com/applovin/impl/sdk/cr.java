package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.Collection;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class cr extends au {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAdServiceImpl f505a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinAdSize f506b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public cr(com.applovin.impl.sdk.AppLovinAdServiceImpl r3, com.applovin.sdk.AppLovinAdSize r4) {
        /*
            r2 = this;
            r2.f505a = r3
            java.lang.String r0 = "UpdateAdTask"
            com.applovin.impl.sdk.AppLovinSdkImpl r1 = com.applovin.impl.sdk.AppLovinAdServiceImpl.c(r3)
            r2.<init>(r0, r1)
            r2.f506b = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.cr.<init>(com.applovin.impl.sdk.AppLovinAdServiceImpl, com.applovin.sdk.AppLovinAdSize):void");
    }

    @Override // java.lang.Runnable
    public void run() {
        Map map;
        boolean a2;
        boolean a3;
        Collection collection;
        map = this.f505a.d;
        cq cqVar = (cq) ((Map) map.get(AppLovinAdType.REGULAR)).get(this.f506b);
        synchronized (cqVar.f504b) {
            a2 = this.f505a.a(this.f506b);
            a3 = this.f505a.a();
            collection = cqVar.f;
            boolean z = !collection.isEmpty();
            boolean z2 = System.currentTimeMillis() > cqVar.d;
            if (a2 && z && z2 && a3 && !cqVar.e) {
                cqVar.e = true;
                this.f505a.a(this.f506b, AppLovinAdType.REGULAR, new cp(this.f505a, cqVar, null));
            }
        }
    }
}
