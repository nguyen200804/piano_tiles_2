package com.appsflyer;

import android.util.Log;

/* compiled from: LogMessages.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private static String f597a;

    /* renamed from: b, reason: collision with root package name */
    private static String f598b;

    public static void a(String str) {
        f597a = str;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (i == 0 || i == 1 || i > str.length() - 5) {
                sb.append(str.charAt(i));
            } else {
                sb.append("*");
            }
        }
        f598b = sb.toString();
    }

    public static void b(String str) {
        if (str.contains(f597a)) {
            Log.i("AppsFlyer_", str.replace(f597a, f598b));
        }
    }
}
