package com.mopub.nativesdk;

import android.os.Environment;

/* compiled from: Const.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c {
    public static String c;
    public static String d;
    public static String e;
    public static String f;
    private static String g = Environment.getExternalStorageDirectory().toString();

    /* renamed from: a, reason: collision with root package name */
    public static String f4616a = g + "/.arrkii/";

    /* renamed from: b, reason: collision with root package name */
    public static String f4617b = f4616a + "cache/";

    static {
        new StringBuilder().append(f4616a).append("download/");
        new StringBuilder().append(f4617b).append("html/");
        e = f4617b + "image/";
        new StringBuilder().append(f4617b).append("shadow_image/");
        new StringBuilder().append(f4616a).append("log/logcat.log");
    }
}
