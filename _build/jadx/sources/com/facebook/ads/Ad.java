package com.facebook.ads;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface Ad {
    void destroy();

    String getPlacementId();

    void loadAd();

    void loadAdFromBid(String str);
}
