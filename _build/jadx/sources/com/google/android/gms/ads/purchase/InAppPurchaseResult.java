package com.google.android.gms.ads.purchase;

import android.content.Intent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface InAppPurchaseResult {
    void finishPurchase();

    String getProductId();

    Intent getPurchaseData();

    int getResultCode();

    boolean isVerified();
}
