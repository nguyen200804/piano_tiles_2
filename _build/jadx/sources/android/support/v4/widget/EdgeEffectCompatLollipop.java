package android.support.v4.widget;

import android.widget.EdgeEffect;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class EdgeEffectCompatLollipop {
    EdgeEffectCompatLollipop() {
    }

    public static boolean onPull(Object edgeEffect, float deltaDistance, float displacement) {
        ((EdgeEffect) edgeEffect).onPull(deltaDistance, displacement);
        return true;
    }
}
