package com.example.luckywheel.b;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g {
    private static g d;

    /* renamed from: a, reason: collision with root package name */
    private String f2315a;

    /* renamed from: b, reason: collision with root package name */
    private String f2316b;
    private String c;
    private List<f> e = new ArrayList();
    private com.example.luckywheel.c.a f;

    private g() {
        this.e.add(new h());
        this.e.add(a.a());
    }

    public static g a() {
        if (d == null) {
            synchronized (g.class) {
                if (d == null) {
                    d = new g();
                }
            }
        }
        return d;
    }

    public void a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            throw new NullPointerException("peerId must be non-null!");
        }
        this.f2316b = str;
        for (f fVar : this.e) {
            if (fVar != null) {
                fVar.a(context, this.f2316b);
            }
        }
    }

    public void a(Context context, String str, String str2, com.example.luckywheel.c.a aVar) {
        if (TextUtils.isEmpty(str)) {
            throw new NullPointerException("appKey must be non-null!");
        }
        this.f2315a = str;
        this.c = str2;
        this.f = aVar;
        for (f fVar : this.e) {
            if (fVar != null) {
                fVar.a(context);
            }
        }
        com.example.luckywheel.ad.a.b.a().a(context);
    }

    String b() {
        return this.f2315a;
    }

    String c() {
        return this.f2316b;
    }

    String d() {
        return this.c;
    }

    public com.example.luckywheel.c.a e() {
        return this.f;
    }
}
