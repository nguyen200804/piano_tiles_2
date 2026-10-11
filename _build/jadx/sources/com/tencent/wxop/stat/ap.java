package com.tencent.wxop.stat;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class ap implements Runnable {
    final /* synthetic */ Throwable dn;
    final /* synthetic */ Context e;

    ap(Context context, Throwable th) {
        this.e = context;
        this.dn = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tencent.wxop.stat.b.b bVar;
        try {
            if (c.l()) {
                new p(new com.tencent.wxop.stat.a.c(this.e, e.a(this.e, false, (f) null), this.dn, com.tencent.wxop.stat.a.f.bw)).ah();
            }
        } catch (Throwable th) {
            bVar = e.aV;
            bVar.d("reportSdkSelfException error: " + th);
        }
    }
}
