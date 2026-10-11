package com.cmcm.dmc.sdk.a;

import java.util.HashSet;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    private static final d f671b = new d();

    /* renamed from: a, reason: collision with root package name */
    public com.cmcm.dmc.sdk.e f672a;
    private Integer c = 0;
    private HashSet<String> d = new HashSet<>();
    private HashSet<String> e = new HashSet<>();

    public static d a() {
        return f671b;
    }

    public final boolean a(String str) {
        return c.a(str, "receiver_switch", b(str)) == 1;
    }

    public int b(String str) {
        return ("photo_stats".equals(str) || "music_stats".equals(str) || "account".equals(str) || "notification_bar".equals(str)) ? 0 : 1;
    }

    public final String b() {
        return f.f673a ? "http://54.68.196.120:8000/app/test" : "https://ms.cmcm.com/app";
    }

    public com.cmcm.dmc.sdk.e c() {
        return this.f672a;
    }
}
