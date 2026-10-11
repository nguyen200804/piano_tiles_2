package com.facebook.ads.internal.util;

import java.lang.ref.WeakReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class an<T> implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private final WeakReference<T> f2865a;

    public an(T t) {
        this.f2865a = new WeakReference<>(t);
    }

    public T a() {
        return this.f2865a.get();
    }
}
