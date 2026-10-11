package com.ijinshan.cloudconfig.a;

/* compiled from: InnerCallBackHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static a f3585a = null;

    public static void a(a aVar) {
        f3585a = aVar;
        com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "InnerCallBackHelper.initCallBack   sRcmdCallBack:" + f3585a);
    }

    public static String a() {
        return f3585a != null ? f3585a.a() : "";
    }

    public static String b() {
        return f3585a != null ? f3585a.b() : "";
    }

    public static String c() {
        return f3585a != null ? f3585a.c() : "";
    }

    public static String d() {
        return f3585a != null ? f3585a.d() : "";
    }

    public static String e() {
        return f3585a != null ? f3585a.e() : "";
    }

    public static String f() {
        return f3585a != null ? f3585a.f() : "";
    }

    public static String g() {
        return f3585a != null ? f3585a.g() : "";
    }

    public static void a(String str, int i, String str2, String str3) {
        if (f3585a != null) {
            f3585a.a(str, i, str2, str3);
        }
    }
}
