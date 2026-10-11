package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface MediationNativeAdapter extends MediationAdapter {
    void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2);
}
