package com.a.b;

/* compiled from: Property.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class c<T, V> {

    /* renamed from: a, reason: collision with root package name */
    private final String f222a;

    /* renamed from: b, reason: collision with root package name */
    private final Class<V> f223b;

    public abstract V a(T t);

    public c(Class<V> cls, String str) {
        this.f222a = str;
        this.f223b = cls;
    }

    public void a(T t, V v) {
        throw new UnsupportedOperationException("Property " + a() + " is read-only");
    }

    public String a() {
        return this.f222a;
    }
}
