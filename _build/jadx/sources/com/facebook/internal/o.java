package com.facebook.internal;

import android.graphics.Bitmap;

/* compiled from: ImageResponse.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    private n f3240a;

    /* renamed from: b, reason: collision with root package name */
    private Exception f3241b;
    private boolean c;
    private Bitmap d;

    o(n nVar, Exception exc, boolean z, Bitmap bitmap) {
        this.f3240a = nVar;
        this.f3241b = exc;
        this.d = bitmap;
        this.c = z;
    }

    public n a() {
        return this.f3240a;
    }

    public Exception b() {
        return this.f3241b;
    }

    public Bitmap c() {
        return this.d;
    }

    public boolean d() {
        return this.c;
    }
}
