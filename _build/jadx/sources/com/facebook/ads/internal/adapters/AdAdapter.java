package com.facebook.ads.internal.adapters;

import com.facebook.ads.internal.server.AdPlacementType;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface AdAdapter {
    AdPlacementType getPlacementType();

    void onDestroy();
}
