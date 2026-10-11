package com.example.luckywheel.ad.a;

import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.android.volley.toolbox.h;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class c implements h.b {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2289a;

    c(b bVar) {
        this.f2289a = bVar;
    }

    @Override // com.android.volley.toolbox.h.b
    public Bitmap a(String str) {
        LruCache lruCache;
        if (str == null) {
            return null;
        }
        lruCache = this.f2289a.f2287b;
        lruCache.get(str);
        return null;
    }

    @Override // com.android.volley.toolbox.h.b
    public void a(String str, Bitmap bitmap) {
        LruCache lruCache;
        if (bitmap != null) {
            lruCache = this.f2289a.f2287b;
            lruCache.put(str, bitmap);
        }
    }
}
