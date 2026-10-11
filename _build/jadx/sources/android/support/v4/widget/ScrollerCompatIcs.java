package android.support.v4.widget;

import android.widget.OverScroller;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ScrollerCompatIcs {
    ScrollerCompatIcs() {
    }

    public static float getCurrVelocity(Object scroller) {
        return ((OverScroller) scroller).getCurrVelocity();
    }
}
