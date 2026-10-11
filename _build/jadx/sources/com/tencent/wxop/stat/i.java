package com.tencent.wxop.stat;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class i implements Runnable {
    final /* synthetic */ Context e;

    i(Context context) {
        this.e = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tencent.wxop.stat.b.b bVar;
        try {
            new Thread(new o(this.e), "NetworkMonitorTask").start();
        } catch (Throwable th) {
            bVar = e.aV;
            bVar.b(th);
            e.a(this.e, th);
        }
    }
}
