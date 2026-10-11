package com.cmplay.util.b;

import com.cmplay.tile2.GameApp;
import com.cmplay.util.k;

/* compiled from: AppRecommendPreferencesUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static k f1715a;

    private static k a() {
        if (f1715a == null) {
            synchronized (a.class) {
                if (f1715a == null) {
                    f1715a = new d(GameApp.f1598a, "preferences");
                }
            }
        }
        return f1715a;
    }

    public static void a(String str, int i) {
        a().b(str, i);
    }

    public static int a(String str) {
        return a().a(str, -1);
    }

    public static void a(String str, String str2) {
        a().b(str, str2);
    }

    public static String b(String str) {
        return a().a(str, "");
    }

    public static void a(String str, boolean z) {
        a().b(str, z);
    }

    public static boolean c(String str) {
        return b(str, false);
    }

    public static boolean b(String str, boolean z) {
        return a().a(str, z);
    }
}
