package com.google.android.gms.ads.reward;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface RewardedVideoAdListener {
    void onRewarded(RewardItem rewardItem);

    void onRewardedVideoAdClosed();

    void onRewardedVideoAdFailedToLoad(int i);

    void onRewardedVideoAdLeftApplication();

    void onRewardedVideoAdLoaded();

    void onRewardedVideoAdOpened();

    void onRewardedVideoStarted();
}
