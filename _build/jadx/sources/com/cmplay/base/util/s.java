package com.cmplay.base.util;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.os.Build;

/* compiled from: SharePreferenceUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class s {
    @SuppressLint({"NewApi"})
    public static void a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }
}
