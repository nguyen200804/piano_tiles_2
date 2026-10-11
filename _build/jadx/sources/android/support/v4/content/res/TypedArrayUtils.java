package android.support.v4.content.res;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.AnyRes;
import android.support.annotation.StyleableRes;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class TypedArrayUtils {
    public static boolean getBoolean(TypedArray a2, @StyleableRes int index, @StyleableRes int fallbackIndex, boolean defaultValue) {
        return a2.getBoolean(index, a2.getBoolean(fallbackIndex, defaultValue));
    }

    public static Drawable getDrawable(TypedArray a2, @StyleableRes int index, @StyleableRes int fallbackIndex) {
        Drawable drawable = a2.getDrawable(index);
        if (drawable == null) {
            return a2.getDrawable(fallbackIndex);
        }
        return drawable;
    }

    public static int getInt(TypedArray a2, @StyleableRes int index, @StyleableRes int fallbackIndex, int defaultValue) {
        return a2.getInt(index, a2.getInt(fallbackIndex, defaultValue));
    }

    @AnyRes
    public static int getResourceId(TypedArray a2, @StyleableRes int index, @StyleableRes int fallbackIndex, @AnyRes int defaultValue) {
        return a2.getResourceId(index, a2.getResourceId(fallbackIndex, defaultValue));
    }

    public static String getString(TypedArray a2, @StyleableRes int index, @StyleableRes int fallbackIndex) {
        String string = a2.getString(index);
        if (string == null) {
            return a2.getString(fallbackIndex);
        }
        return string;
    }

    public static CharSequence[] getTextArray(TypedArray a2, @StyleableRes int index, @StyleableRes int fallbackIndex) {
        CharSequence[] textArray = a2.getTextArray(index);
        if (textArray == null) {
            return a2.getTextArray(fallbackIndex);
        }
        return textArray;
    }
}
