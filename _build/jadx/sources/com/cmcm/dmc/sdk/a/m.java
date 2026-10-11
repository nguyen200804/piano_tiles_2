package com.cmcm.dmc.sdk.a;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    private ScheduledExecutorService f685a;

    private static final class a {

        /* renamed from: a, reason: collision with root package name */
        private static final m f686a = new m();
    }

    private m() {
        this.f685a = Executors.newScheduledThreadPool(10);
    }

    public static final m a() {
        return a.f686a;
    }

    public void a(Runnable runnable, long j, long j2, long j3) {
        try {
            this.f685a.scheduleAtFixedRate(runnable, j, j3, TimeUnit.MILLISECONDS).get(j2, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
        }
    }
}
