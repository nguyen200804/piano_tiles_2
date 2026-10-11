package android.support.v4.view;

import android.view.MotionEvent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class MotionEventCompatHoneycombMr1 {
    MotionEventCompatHoneycombMr1() {
    }

    static float getAxisValue(MotionEvent event, int axis) {
        return event.getAxisValue(axis);
    }

    static float getAxisValue(MotionEvent event, int axis, int pointerIndex) {
        return event.getAxisValue(axis, pointerIndex);
    }
}
