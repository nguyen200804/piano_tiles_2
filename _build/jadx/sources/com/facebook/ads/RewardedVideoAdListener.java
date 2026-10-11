package com.facebook.ads;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface RewardedVideoAdListener extends AdListener {
    @Override // com.facebook.ads.AdListener
    void onLoggingImpression(Ad ad);

    void onRewardedVideoClosed();

    void onRewardedVideoCompleted();
}
