package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends aq {
    public b(AppLovinSdkImpl appLovinSdkImpl) {
        super(appLovinSdkImpl);
    }

    private by a(AppLovinAdType appLovinAdType, AppLovinAdSize appLovinAdSize) {
        return appLovinAdSize.equals(AppLovinAdSize.BANNER) ? av.aj : appLovinAdSize.equals(AppLovinAdSize.MREC) ? av.ak : appLovinAdSize.equals(AppLovinAdSize.INTERSTITIAL) ? av.al : appLovinAdSize.equals(AppLovinAdSize.LEADER) ? av.am : av.aj;
    }

    @Override // com.applovin.impl.sdk.aq
    au a(c cVar) {
        bi biVar = new bi(cVar.a(), cVar.b(), this, this.f432a);
        biVar.a(true);
        return biVar;
    }

    @Override // com.applovin.impl.sdk.aq
    c a(ay ayVar) {
        return new c((AppLovinAd) ayVar);
    }

    @Override // com.applovin.impl.sdk.aq
    Map a() {
        HashMap hashMap = new HashMap(5);
        for (AppLovinAdSize appLovinAdSize : AppLovinAdSize.allSizes()) {
            hashMap.put(new c(appLovinAdSize, AppLovinAdType.REGULAR), new ar(((Integer) this.f432a.a(a(AppLovinAdType.REGULAR, appLovinAdSize))).intValue()));
        }
        hashMap.put(new c(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED), new ar(((Integer) this.f432a.a(av.an)).intValue()));
        return hashMap;
    }

    @Override // com.applovin.impl.sdk.de
    public void a(c cVar, int i) {
        b(cVar, i);
    }

    @Override // com.applovin.impl.sdk.aq
    void a(Object obj, ay ayVar) {
        ((AppLovinAdLoadListener) obj).adReceived((AppLovinAd) ayVar);
    }

    @Override // com.applovin.impl.sdk.aq
    void a(Object obj, c cVar, int i) {
        if (obj instanceof de) {
            ((de) obj).a(cVar, i);
        }
        if (obj instanceof AppLovinAdLoadListener) {
            ((AppLovinAdLoadListener) obj).failedToReceiveAd(i);
        }
    }

    @Override // com.applovin.impl.sdk.aq
    public /* bridge */ /* synthetic */ boolean a(c cVar, Object obj) {
        return super.a(cVar, obj);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        c((ay) appLovinAd);
    }

    @Override // com.applovin.impl.sdk.aq
    public /* bridge */ /* synthetic */ ay b(c cVar) {
        return super.b(cVar);
    }

    @Override // com.applovin.impl.sdk.aq
    public /* bridge */ /* synthetic */ void b(c cVar, Object obj) {
        super.b(cVar, obj);
    }

    @Override // com.applovin.impl.sdk.aq
    public /* bridge */ /* synthetic */ boolean c(c cVar) {
        return super.c(cVar);
    }

    @Override // com.applovin.impl.sdk.aq
    public /* bridge */ /* synthetic */ void d(c cVar) {
        super.d(cVar);
    }

    @Override // com.applovin.impl.sdk.aq
    public /* bridge */ /* synthetic */ boolean e(c cVar) {
        return super.e(cVar);
    }

    @Override // com.applovin.impl.sdk.aq
    public /* bridge */ /* synthetic */ void f(c cVar) {
        super.f(cVar);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List list) {
    }
}
