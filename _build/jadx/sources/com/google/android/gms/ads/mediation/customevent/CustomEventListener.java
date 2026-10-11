package com.google.android.gms.ads.mediation.customevent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface CustomEventListener {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i);

    void onAdLeftApplication();

    void onAdOpened();
}
