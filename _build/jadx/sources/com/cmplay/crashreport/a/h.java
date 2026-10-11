package com.cmplay.crashreport.a;

import android.content.Context;
import android.provider.Settings;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {
    public static String a(Context context) {
        try {
            return Settings.System.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            return "";
        }
    }
}
