package com.google.android.gms.ads.purchase;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface PlayStorePurchaseListener {
    boolean isValidPurchase(String str);

    void onInAppPurchaseFinished(InAppPurchaseResult inAppPurchaseResult);
}
