package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.support.annotation.ColorInt;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface TintAwareDrawable {
    void setTint(@ColorInt int i);

    void setTintList(ColorStateList colorStateList);

    void setTintMode(PorterDuff.Mode mode);
}
