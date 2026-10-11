package com.b.a;

import android.content.Context;
import b.a.ap;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MobclickAgent.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static final g f614a = new g();

    public static g a() {
        return f614a;
    }

    public static void a(boolean z) {
        ap.f67a = z;
        com.b.a.c.a.f626b = z;
    }

    public static void a(Context context) {
        f614a.c(context);
    }

    public static void b(Context context) {
        if (context == null) {
            ap.b("MobclickAgent", "unexpected null context in onResume");
        } else {
            f614a.b(context);
        }
    }

    public static void a(Context context, String str) {
        f614a.a(context, str, null, -1L, 1);
    }

    public static void a(Context context, String str, Map<String, String> map) {
        if (map == null) {
            ap.b("MobclickAgent", "input map is null");
        } else {
            f614a.a(context, str, new HashMap(map), -1L);
        }
    }

    public static void c(Context context) {
        f614a.a(context);
    }
}
