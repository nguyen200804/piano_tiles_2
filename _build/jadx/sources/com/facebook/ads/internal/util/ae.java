package com.facebook.ads.internal.util;

import android.graphics.Bitmap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ae {

    /* renamed from: a, reason: collision with root package name */
    static final int f2854a = Runtime.getRuntime().availableProcessors();

    /* renamed from: b, reason: collision with root package name */
    static final ExecutorService f2855b = Executors.newFixedThreadPool(f2854a);
    private static volatile boolean c = true;
    private final Bitmap d;
    private Bitmap e;
    private final k f = new w();

    public ae(Bitmap bitmap) {
        this.d = bitmap;
    }

    public Bitmap a() {
        return this.e;
    }

    public Bitmap a(int i) {
        this.e = this.f.a(this.d, i);
        return this.e;
    }
}
