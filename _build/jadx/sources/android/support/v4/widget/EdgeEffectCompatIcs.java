package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.EdgeEffect;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class EdgeEffectCompatIcs {
    EdgeEffectCompatIcs() {
    }

    public static Object newEdgeEffect(Context context) {
        return new EdgeEffect(context);
    }

    public static void setSize(Object edgeEffect, int width, int height) {
        ((EdgeEffect) edgeEffect).setSize(width, height);
    }

    public static boolean isFinished(Object edgeEffect) {
        return ((EdgeEffect) edgeEffect).isFinished();
    }

    public static void finish(Object edgeEffect) {
        ((EdgeEffect) edgeEffect).finish();
    }

    public static boolean onPull(Object edgeEffect, float deltaDistance) {
        ((EdgeEffect) edgeEffect).onPull(deltaDistance);
        return true;
    }

    public static boolean onRelease(Object edgeEffect) {
        EdgeEffect edgeEffect2 = (EdgeEffect) edgeEffect;
        edgeEffect2.onRelease();
        return edgeEffect2.isFinished();
    }

    public static boolean onAbsorb(Object edgeEffect, int velocity) {
        ((EdgeEffect) edgeEffect).onAbsorb(velocity);
        return true;
    }

    public static boolean draw(Object edgeEffect, Canvas canvas) {
        return ((EdgeEffect) edgeEffect).draw(canvas);
    }
}
