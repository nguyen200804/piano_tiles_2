package com.cmcm.dmc.sdk.a;

import android.text.TextUtils;
import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i {
    public static void a(String str, String str2) {
        if (!TextUtils.isEmpty(str2) && f.f673a) {
            Log.i(str, str2);
        }
    }

    public static void a(String str, String str2, Object... objArr) {
        if (!TextUtils.isEmpty(str2) && f.f673a) {
            try {
                Log.i("DMC", String.format("[%s] %s", str, String.format(str2, objArr)));
            } catch (Exception e) {
            }
        }
    }

    public static void a(String str, Object... objArr) {
        if (!TextUtils.isEmpty(str) && f.f673a) {
            try {
                Log.i("DMC", String.format(str, objArr));
            } catch (Exception e) {
            }
        }
    }
}
