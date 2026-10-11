package com.facebook.ads.internal.util;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.util.Log;
import android.view.Window;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ao {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2866a = ao.class.getSimpleName();

    private ao() {
    }

    public static Map<String, String> a(Context context) {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("kgr", String.valueOf(b(context)));
            if (context == null || !(context instanceof Activity)) {
                Log.v(f2866a, "Invalid Activity context in window interactive check, assuming interactive.");
            } else {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    int i = window.getAttributes().flags;
                    hashMap.put("wt", Integer.toString(window.getAttributes().type));
                    hashMap.put("wfdkg", (4194304 & i) > 0 ? "1" : "0");
                    hashMap.put("wfswl", (524288 & i) > 0 ? "1" : "0");
                } else {
                    Log.v(f2866a, "Invalid window in window interactive check, assuming interactive.");
                }
            }
        } catch (Exception e) {
            Log.e(f2866a, "Exception in window info check", e);
            o.a(e, context);
        }
        return hashMap;
    }

    public static boolean a(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            Log.v(f2866a, "Invalid Window info in window interactive check, assuming not obstructed by Keyguard.");
            return false;
        }
        String str = map.get("wfdkg");
        String str2 = map.get("wfswl");
        if (str != null && str.equals("1")) {
            return false;
        }
        if (str2 != null && str2.equals("1")) {
            return false;
        }
        String str3 = map.get("kgr");
        return str3 != null && str3.equals("true");
    }

    public static boolean b(Context context) {
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        return keyguardManager != null && keyguardManager.inKeyguardRestrictedInputMode();
    }

    public static boolean b(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            Log.v(f2866a, "Invalid Window info in window interactive check, assuming is not a Lockscreen.");
            return false;
        }
        String str = map.get("wfdkg");
        String str2 = map.get("wfswl");
        String str3 = map.get("kgr");
        return str != null && str.equals("1") && str2 != null && str2.equals("1") && str3 != null && str3.equals("true");
    }

    public static boolean c(Context context) {
        return !a(a(context));
    }
}
