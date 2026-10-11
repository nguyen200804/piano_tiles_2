package com.android.volley;

import com.android.volley.b;

/* compiled from: Response.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n<T> {

    /* renamed from: a, reason: collision with root package name */
    public final T f253a;

    /* renamed from: b, reason: collision with root package name */
    public final b.a f254b;
    public final s c;
    public boolean d;

    /* compiled from: Response.java */
    public interface a {
        void a(s sVar);
    }

    /* compiled from: Response.java */
    public interface b<T> {
        void a(T t);
    }

    public static <T> n<T> a(T t, b.a aVar) {
        return new n<>(t, aVar);
    }

    public static <T> n<T> a(s sVar) {
        return new n<>(sVar);
    }

    public boolean a() {
        return this.c == null;
    }

    private n(T t, b.a aVar) {
        this.d = false;
        this.f253a = t;
        this.f254b = aVar;
        this.c = null;
    }

    private n(s sVar) {
        this.d = false;
        this.f253a = null;
        this.f254b = null;
        this.c = sVar;
    }
}
