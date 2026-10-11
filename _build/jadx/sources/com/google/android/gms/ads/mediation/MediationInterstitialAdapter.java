package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface MediationInterstitialAdapter extends MediationAdapter {
    void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2);

    void showInterstitial();
}
