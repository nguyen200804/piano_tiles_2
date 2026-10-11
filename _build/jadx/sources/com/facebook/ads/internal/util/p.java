package com.facebook.ads.internal.util;

import android.content.Context;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2900a = p.class.getSimpleName();

    public enum a {
        UNKNOWN(0),
        UNROOTED(1),
        ROOTED(2);

        public final int d;

        a(int i) {
            this.d = i;
        }
    }

    public static a a() {
        try {
            return c() || b() || a("su") ? a.ROOTED : a.UNROOTED;
        } catch (Throwable th) {
            return a.UNKNOWN;
        }
    }

    public static boolean a(Context context) {
        return b(context) && ao.c(context);
    }

    private static boolean a(String str) {
        File[] listFiles;
        for (String str2 : System.getenv("PATH").split(":")) {
            File file = new File(str2);
            if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    if (file2.getName().equals(str)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private static boolean b() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    public static boolean b(Context context) {
        if (context == null) {
            Log.v(f2900a, "Invalid context in screen interactive check, assuming interactive.");
            return true;
        }
        try {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            return Build.VERSION.SDK_INT >= 20 ? powerManager.isInteractive() : powerManager.isScreenOn();
        } catch (Exception e) {
            Log.e(f2900a, "Exception in screen interactive check, assuming interactive.", e);
            o.a(e, context);
            return true;
        }
    }

    private static boolean c() {
        return new File("/system/app/Superuser.apk").exists();
    }
}
