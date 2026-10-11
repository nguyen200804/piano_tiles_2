package com.example.luckywheel.ad.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.android.volley.m;
import com.android.volley.toolbox.h;
import com.android.volley.toolbox.k;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private h f2286a;

    /* renamed from: b, reason: collision with root package name */
    private LruCache<String, Bitmap> f2287b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static b f2288a = new b();
    }

    public static b a() {
        return a.f2288a;
    }

    public void a(Context context) {
        m a2 = k.a(context);
        this.f2287b = new LruCache<>((int) (Runtime.getRuntime().maxMemory() / 1024));
        this.f2286a = new h(a2, new c(this));
    }

    public h b() {
        return this.f2286a;
    }
}
