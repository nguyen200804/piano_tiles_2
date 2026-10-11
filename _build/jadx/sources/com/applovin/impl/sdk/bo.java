package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinLogger;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bo {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f462a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinLogger f463b;
    private final ScheduledExecutorService c = a("main");
    private final ScheduledExecutorService d = a("back");
    private final ScheduledExecutorService e = a("postbacks");

    bo(AppLovinSdkImpl appLovinSdkImpl) {
        this.f462a = appLovinSdkImpl;
        this.f463b = appLovinSdkImpl.getLogger();
    }

    private static void a(Runnable runnable, long j, ScheduledExecutorService scheduledExecutorService) {
        if (j > 0) {
            scheduledExecutorService.schedule(runnable, j, TimeUnit.MILLISECONDS);
        } else {
            scheduledExecutorService.submit(runnable);
        }
    }

    ScheduledExecutorService a(String str) {
        return Executors.newScheduledThreadPool(1, new bq(this, str));
    }

    void a(au auVar, bp bpVar) {
        a(auVar, bpVar, 0L);
    }

    void a(au auVar, bp bpVar, long j) {
        if (auVar == null) {
            throw new IllegalArgumentException("No task specified");
        }
        if (j < 0) {
            throw new IllegalArgumentException("Invalid delay specified: " + j);
        }
        this.f463b.d(auVar.e, "Scheduling " + auVar.e + " on " + bpVar + " queue in " + j + "ms.");
        bt btVar = new bt(this, auVar, bpVar);
        if (bpVar == bp.MAIN) {
            a(btVar, j, this.c);
        } else if (bpVar == bp.BACKGROUND) {
            a(btVar, j, this.d);
        } else if (bpVar == bp.POSTBACKS) {
            a(btVar, j, this.e);
        }
    }

    void a(bn bnVar, long j) {
        if (bnVar == null) {
            throw new IllegalArgumentException("No task specified");
        }
        a(bnVar, j, this.c);
    }
}
