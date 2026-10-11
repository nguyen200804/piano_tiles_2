package com.applovin.impl.adview;

import android.content.res.Resources;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ah {
    public static float a(Resources resources, float f) {
        return (resources.getDisplayMetrics().density * f) + 0.5f;
    }

    public static float b(Resources resources, float f) {
        return resources.getDisplayMetrics().scaledDensity * f;
    }
}
