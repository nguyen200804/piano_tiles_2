package com.facebook.ads.internal.d;

import android.content.Context;
import android.os.Process;
import android.support.annotation.Nullable;
import com.facebook.ads.BuildConfig;
import com.facebook.ads.internal.f.g;
import com.facebook.ads.internal.f.j;
import com.facebook.ads.internal.g.p;
import com.facebook.ads.internal.util.ag;
import com.facebook.ads.internal.util.n;
import com.facebook.ads.internal.util.o;
import java.lang.Thread;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f2678a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f2679b;

    public b(@Nullable Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context) {
        this.f2678a = uncaughtExceptionHandler;
        if (context == null) {
            throw new IllegalArgumentException("Missing Context");
        }
        this.f2679b = context.getApplicationContext();
    }

    private void a(Thread thread, Throwable th) {
        if (this.f2678a != null) {
            this.f2678a.uncaughtException(thread, th);
            return;
        }
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable th2) {
        }
        try {
            System.exit(10);
        } catch (Throwable th3) {
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String a2 = ag.a(th);
        if (a2 != null && a2.contains(BuildConfig.APPLICATION_ID)) {
            o.a(new p(g.b(), g.c(), new n(a2, j.f)), this.f2679b);
        }
        a(thread, th);
    }
}
