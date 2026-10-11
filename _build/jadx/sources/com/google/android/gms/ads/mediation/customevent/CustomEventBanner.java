package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface CustomEventBanner extends CustomEvent {
    void requestBannerAd(Context context, CustomEventBannerListener customEventBannerListener, String str, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle);
}
