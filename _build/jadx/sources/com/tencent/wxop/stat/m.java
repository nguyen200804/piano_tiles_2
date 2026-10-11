package com.tencent.wxop.stat;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class m implements Runnable {
    final /* synthetic */ f bN = null;
    final /* synthetic */ Context e;

    m(Context context) {
        this.e = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tencent.wxop.stat.b.b bVar;
        try {
            e.a(this.e, false, this.bN);
        } catch (Throwable th) {
            bVar = e.aV;
            bVar.b(th);
        }
    }
}
