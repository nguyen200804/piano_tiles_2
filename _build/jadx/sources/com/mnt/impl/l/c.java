package com.mnt.impl.l;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static ExecutorService f4091a = Executors.newCachedThreadPool();

    public static void a(Runnable runnable) {
        f4091a.execute(runnable);
    }
}
