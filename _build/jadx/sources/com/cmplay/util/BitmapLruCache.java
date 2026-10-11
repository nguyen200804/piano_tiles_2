package com.cmplay.util;

import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.android.volley.toolbox.h;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BitmapLruCache extends LruCache<String, Bitmap> implements h.b {
    public BitmapLruCache(int maxSize) {
        super(maxSize);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.util.LruCache
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public int sizeOf(String str, Bitmap bitmap) {
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    @Override // com.android.volley.toolbox.h.b
    public Bitmap a(String str) {
        return get(str);
    }

    @Override // com.android.volley.toolbox.h.b
    public void a(String str, Bitmap bitmap) {
        put(str, bitmap);
    }
}
