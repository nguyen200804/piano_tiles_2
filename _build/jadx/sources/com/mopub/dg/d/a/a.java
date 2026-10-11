package com.mopub.dg.d.a;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f4280a = Runtime.getRuntime().availableProcessors();
    private static a e;

    /* renamed from: b, reason: collision with root package name */
    private final ThreadPoolExecutor f4281b;
    private final ThreadPoolExecutor c;
    private final Executor d;

    private a() {
        c cVar = new c();
        this.f4281b = new ThreadPoolExecutor(f4280a * 2, f4280a * 2, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), cVar);
        this.c = new ThreadPoolExecutor(f4280a * 2, f4280a * 2, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), cVar);
        this.d = new b();
    }

    public static a a() {
        if (e == null) {
            synchronized (a.class) {
                e = new a();
            }
        }
        return e;
    }

    public final ThreadPoolExecutor b() {
        return this.c;
    }
}
