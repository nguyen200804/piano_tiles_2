package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.TextView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class TextViewCompatJbMr1 {
    TextViewCompatJbMr1() {
    }

    public static void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable start, @Nullable Drawable top, @Nullable Drawable end, @Nullable Drawable bottom) {
        boolean z = textView.getLayoutDirection() == 1;
        Drawable drawable = z ? end : start;
        if (!z) {
            start = end;
        }
        textView.setCompoundDrawables(drawable, top, start, bottom);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable start, @Nullable Drawable top, @Nullable Drawable end, @Nullable Drawable bottom) {
        boolean z = textView.getLayoutDirection() == 1;
        Drawable drawable = z ? end : start;
        if (!z) {
            start = end;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(drawable, top, start, bottom);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, int start, int top, int end, int bottom) {
        boolean z = textView.getLayoutDirection() == 1;
        int i = z ? end : start;
        if (!z) {
            start = end;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(i, top, start, bottom);
    }
}
