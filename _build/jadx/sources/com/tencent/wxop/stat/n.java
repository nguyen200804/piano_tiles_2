package com.tencent.wxop.stat;

import android.content.Context;
import java.lang.Thread;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class n implements Thread.UncaughtExceptionHandler {
    n() {
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        Context context;
        Context context2;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        com.tencent.wxop.stat.b.b bVar;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler3;
        Context context3;
        Context context4;
        Context context5;
        com.tencent.wxop.stat.b.b bVar2;
        com.tencent.wxop.stat.b.b bVar3;
        if (c.l()) {
            context = e.aY;
            if (context == null) {
                return;
            }
            if (c.x()) {
                context3 = e.aY;
                t s = t.s(context3);
                context4 = e.aY;
                context5 = e.aY;
                s.b(new com.tencent.wxop.stat.a.c(context4, e.a(context5, false, (f) null), th, thread), null, false, true);
                bVar2 = e.aV;
                bVar2.debug("MTA has caught the following uncaught exception:");
                bVar3 = e.aV;
                bVar3.a(th);
            }
            context2 = e.aY;
            e.p(context2);
            uncaughtExceptionHandler = e.aW;
            if (uncaughtExceptionHandler != null) {
                bVar = e.aV;
                bVar.e("Call the original uncaught exception handler.");
                uncaughtExceptionHandler2 = e.aW;
                if (uncaughtExceptionHandler2 instanceof n) {
                    return;
                }
                uncaughtExceptionHandler3 = e.aW;
                uncaughtExceptionHandler3.uncaughtException(thread, th);
            }
        }
    }
}
