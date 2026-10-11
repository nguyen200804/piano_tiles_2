package com.example.luckywheel.b;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class l {
    private static l c;

    /* renamed from: a, reason: collision with root package name */
    private String f2326a;

    /* renamed from: b, reason: collision with root package name */
    private String f2327b;
    private long d;

    public interface a {
        void a();

        void b();
    }

    private l() {
    }

    public static l a() {
        if (c == null) {
            synchronized (l.class) {
                if (c == null) {
                    c = new l();
                }
            }
        }
        return c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, a aVar) {
        new i(context, new r(this, aVar)).f();
    }

    private boolean e() {
        return System.currentTimeMillis() - this.d > 600000;
    }

    public void a(Context context, a aVar) {
        new m(context, new q(this, context, aVar)).f();
    }

    public boolean b() {
        return TextUtils.isEmpty(this.f2326a) || TextUtils.isEmpty(this.f2327b) || !j.a().b() || e();
    }

    String c() {
        return this.f2326a;
    }

    String d() {
        return this.f2327b;
    }
}
