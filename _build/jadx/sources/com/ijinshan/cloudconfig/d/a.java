package com.ijinshan.cloudconfig.d;

import android.util.Log;

/* compiled from: CloudLog.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f3591a = false;

    public static void a(String str, String str2) {
        String substring;
        if (f3591a) {
            int length = str2.length();
            for (int i = 0; i < length; i += 4000) {
                if (length <= i + 4000) {
                    substring = str2.substring(i);
                } else {
                    int i2 = i + 4000;
                    if (i2 > length) {
                        i2 = length;
                    }
                    substring = str2.substring(i, i2);
                }
                Log.d(str + "___index:" + i, substring.trim());
            }
        }
    }
}
