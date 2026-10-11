package com.cmplay.base.util;

import android.text.TextUtils;

/* compiled from: Configure.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i {

    /* renamed from: b, reason: collision with root package name */
    private static String f1246b = "";
    private static String c = "";

    /* renamed from: a, reason: collision with root package name */
    public static int f1245a = 3;

    public static String a() {
        if (TextUtils.isEmpty(f1246b)) {
            throw new RuntimeException("PRODUCT_TABLE_NAME_PREFIX must not be null!");
        }
        return f1246b;
    }

    public static void a(String str) {
        f1246b = str;
    }

    public static void b(String str) {
        c = str;
    }

    public static void a(int i) {
        f1245a = i;
        g.a("internal_push", "setCloudFunctionType  CLOUD_FUNCTION_TYPE:" + f1245a);
    }

    public static int b() {
        return f1245a;
    }
}
