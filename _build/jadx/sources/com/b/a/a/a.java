package com.b.a.a;

import android.content.Context;
import b.a.ap;

/* compiled from: UMGameAgent.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends com.b.a.b {

    /* renamed from: a, reason: collision with root package name */
    private static final d f601a = new d();

    /* renamed from: b, reason: collision with root package name */
    private static Context f602b;

    public static void d(Context context) {
        f601a.a(context);
        f602b = context.getApplicationContext();
    }

    public static void a(String str) {
        if (c(str)) {
            ap.b("MobclickAgent", "Input string is null or empty");
        } else if (str.length() > 64) {
            ap.b("MobclickAgent", "Input string must be less than 64 chars");
        } else {
            f601a.a(str);
        }
    }

    public static void b(String str) {
        if (c(str)) {
            ap.b("MobclickAgent", "Input string is null or empty");
        } else if (str.length() > 64) {
            ap.b("MobclickAgent", "Input string must be less than 64 chars");
        } else {
            f601a.b(str);
        }
    }

    private static boolean c(String str) {
        return str == null || str.trim().length() <= 0;
    }
}
