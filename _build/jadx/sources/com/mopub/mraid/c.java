package com.mopub.mraid;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import com.mopub.common.util.Dips;

/* compiled from: MraidScreenMetrics.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Context f4579a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Rect f4580b = new Rect();

    @NonNull
    private final Rect c = new Rect();

    @NonNull
    private final Rect d = new Rect();

    @NonNull
    private final Rect e = new Rect();

    @NonNull
    private final Rect f = new Rect();

    @NonNull
    private final Rect g = new Rect();

    @NonNull
    private final Rect h = new Rect();

    @NonNull
    private final Rect i = new Rect();
    private final float j;

    c(Context context, float f) {
        this.f4579a = context.getApplicationContext();
        this.j = f;
    }

    private void a(Rect rect, Rect rect2) {
        rect2.set(Dips.pixelsToIntDips(rect.left, this.f4579a), Dips.pixelsToIntDips(rect.top, this.f4579a), Dips.pixelsToIntDips(rect.right, this.f4579a), Dips.pixelsToIntDips(rect.bottom, this.f4579a));
    }

    public float getDensity() {
        return this.j;
    }

    void a(int i, int i2) {
        this.f4580b.set(0, 0, i, i2);
        a(this.f4580b, this.c);
    }

    @NonNull
    Rect a() {
        return this.c;
    }

    void a(int i, int i2, int i3, int i4) {
        this.d.set(i, i2, i + i3, i2 + i4);
        a(this.d, this.e);
    }

    @NonNull
    Rect b() {
        return this.d;
    }

    @NonNull
    Rect c() {
        return this.e;
    }

    void b(int i, int i2, int i3, int i4) {
        this.f.set(i, i2, i + i3, i2 + i4);
        a(this.f, this.g);
    }

    @NonNull
    Rect d() {
        return this.g;
    }

    void c(int i, int i2, int i3, int i4) {
        this.h.set(i, i2, i + i3, i2 + i4);
        a(this.h, this.i);
    }

    @NonNull
    Rect e() {
        return this.h;
    }

    @NonNull
    Rect f() {
        return this.i;
    }
}
