package com.tencent.wxop.stat;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class h implements Runnable {
    final /* synthetic */ Context e;
    final /* synthetic */ int g = -1;

    h(Context context) {
        this.e = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tencent.wxop.stat.b.b bVar;
        try {
            e.p(this.e);
            t.s(this.e).b(this.g);
        } catch (Throwable th) {
            bVar = e.aV;
            bVar.b(th);
            e.a(this.e, th);
        }
    }
}
