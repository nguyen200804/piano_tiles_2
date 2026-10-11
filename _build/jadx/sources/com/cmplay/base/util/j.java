package com.cmplay.base.util;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.TypedValue;

/* compiled from: DimenUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static Float f1249a;

    /* renamed from: b, reason: collision with root package name */
    public static Float f1250b;

    private static float a(Context context, int i, float f, DisplayMetrics displayMetrics) {
        switch (i) {
            case 1:
            case 2:
                return TypedValue.applyDimension(i, f, displayMetrics);
            case 3:
            case 4:
            case 5:
            default:
                return 0.0f;
            case 6:
                return f / displayMetrics.density;
            case 7:
                return f / displayMetrics.scaledDensity;
            case 8:
                return TypedValue.applyDimension(1, b(context) * f, displayMetrics);
            case 9:
                return b(context) * f;
            case 10:
                return TypedValue.applyDimension(1, a(context) * f, displayMetrics);
        }
    }

    public static int a(Context context, float f) {
        return (int) a(context, 1, f, context.getResources().getDisplayMetrics());
    }

    public static float a(Context context) {
        if (f1249a == null) {
            f1249a = Float.valueOf((c(context) * 2.0f) / (e(context) * 720.0f));
        }
        return f1249a.floatValue();
    }

    public static float b(Context context) {
        if (f1250b == null) {
            f1250b = Float.valueOf((d(context) * 2.0f) / (e(context) * 1280.0f));
        }
        return f1250b.floatValue();
    }

    public static int c(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int d(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static float e(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static int f(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }
}
