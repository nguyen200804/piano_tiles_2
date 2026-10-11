package android.support.v4.content;

import android.content.Context;
import android.content.res.ColorStateList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ContextCompatApi23 {
    ContextCompatApi23() {
    }

    public static ColorStateList getColorStateList(Context context, int id) {
        return context.getColorStateList(id);
    }

    public static int getColor(Context context, int id) {
        return context.getColor(id);
    }
}
