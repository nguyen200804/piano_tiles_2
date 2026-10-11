package com.cmplay.crashreport;

import android.os.Handler;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f1297a;

    d(c cVar) {
        this.f1297a = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Handler handler;
        long j;
        Handler handler2;
        Runnable runnable;
        Handler handler3;
        Runnable runnable2;
        long j2;
        handler = this.f1297a.e;
        j = c.g;
        handler.postDelayed(this, j);
        handler2 = this.f1297a.d;
        runnable = this.f1297a.j;
        handler2.removeCallbacks(runnable);
        handler3 = this.f1297a.d;
        runnable2 = this.f1297a.j;
        j2 = c.h;
        handler3.postDelayed(runnable2, j2);
    }
}
