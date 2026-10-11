package com.tencent.wxop.stat;

import android.content.Context;
import java.lang.Thread;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class an implements Runnable {
    final /* synthetic */ Context e;

    an(Context context) {
        this.e = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context;
        com.tencent.wxop.stat.b.b bVar;
        context = e.aY;
        g.r(context).aa();
        com.tencent.wxop.stat.b.l.a(this.e, true);
        t.s(this.e);
        ak.Z(this.e);
        Thread.UncaughtExceptionHandler unused = e.aW = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new n());
        if (c.j() == d.APP_LAUNCH) {
            e.o(this.e);
        }
        if (c.k()) {
            bVar = e.aV;
            bVar.e("Init MTA StatService success.");
        }
    }
}
