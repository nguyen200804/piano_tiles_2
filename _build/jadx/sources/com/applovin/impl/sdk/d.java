package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class d implements AppLovinAdRewardListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f518a;

    d(z zVar) {
        this.f518a = zVar;
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userDeclinedToViewAd(AppLovinAd appLovinAd) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.f518a.f564a;
        appLovinSdkImpl.getLogger().d("IncentivizedAdController", "User declined to view");
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userOverQuota(AppLovinAd appLovinAd, Map map) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.f518a.f564a;
        appLovinSdkImpl.getLogger().d("IncentivizedAdController", "User over quota: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardRejected(AppLovinAd appLovinAd, Map map) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.f518a.f564a;
        appLovinSdkImpl.getLogger().d("IncentivizedAdController", "Reward rejected: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardVerified(AppLovinAd appLovinAd, Map map) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.f518a.f564a;
        appLovinSdkImpl.getLogger().d("IncentivizedAdController", "Reward validated: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.f518a.f564a;
        appLovinSdkImpl.getLogger().d("IncentivizedAdController", "Reward validation failed: " + i);
    }
}
