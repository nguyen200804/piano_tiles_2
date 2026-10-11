package com.example.luckywheel.d;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    private static d f2341b;

    /* renamed from: a, reason: collision with root package name */
    private f f2342a;

    private d(Context context) {
        this.f2342a = new f("lucky_wheel_config", context);
    }

    public static synchronized d a(Context context) {
        d dVar;
        synchronized (d.class) {
            if (f2341b == null) {
                f2341b = new d(context);
            }
            dVar = f2341b;
        }
        return dVar;
    }

    public int a() {
        return a("watch_ad_last_time_length", 5);
    }

    public int a(String str, int i) {
        return this.f2342a.a(str, i);
    }

    public void a(int i) {
        b("watch_ad_last_time_length", i);
    }

    public int b() {
        return a("watch_ad_last_score_star", 0);
    }

    public void b(int i) {
        b("watch_ad_last_score_star", i);
    }

    public void b(String str, int i) {
        this.f2342a.b(str, i);
    }
}
