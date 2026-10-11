package android.support.v7.widget;

import android.graphics.drawable.Drawable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
interface CardViewDelegate {
    Drawable getBackground();

    boolean getPreventCornerOverlap();

    float getRadius();

    boolean getUseCompatPadding();

    void setBackgroundDrawable(Drawable drawable);

    void setShadowPadding(int i, int i2, int i3, int i4);
}
