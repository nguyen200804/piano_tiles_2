package com.tencent.wxop.stat;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class l implements Runnable {
    final /* synthetic */ f bN = null;
    final /* synthetic */ Context e;

    l(Context context) {
        this.e = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tencent.wxop.stat.b.b bVar;
        if (this.e != null) {
            e.a(this.e, com.tencent.wxop.stat.b.l.B(this.e), this.bN);
        } else {
            bVar = e.aV;
            bVar.error("The Context of StatService.onResume() can not be null!");
        }
    }
}
