package com.mopub.nativesdk.d.a;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: TaskManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f4686a = null;

    /* renamed from: b, reason: collision with root package name */
    private ExecutorService f4687b;

    protected a() {
        this.f4687b = null;
        this.f4687b = Executors.newCachedThreadPool();
    }

    public static a a() {
        if (f4686a == null) {
            f4686a = new a();
        }
        return f4686a;
    }

    public final void a(Runnable runnable) {
        this.f4687b.execute(runnable);
    }
}
