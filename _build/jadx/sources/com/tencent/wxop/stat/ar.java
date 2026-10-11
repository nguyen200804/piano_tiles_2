package com.tencent.wxop.stat;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class ar implements Runnable {
    final /* synthetic */ f bN = null;

    /* renamed from: do, reason: not valid java name */
    final /* synthetic */ com.tencent.wxop.stat.a.b f2do;
    final /* synthetic */ Context e;

    ar(Context context, com.tencent.wxop.stat.a.b bVar) {
        this.e = context;
        this.f2do = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tencent.wxop.stat.b.b bVar;
        try {
            com.tencent.wxop.stat.a.a aVar = new com.tencent.wxop.stat.a.a(this.e, e.a(this.e, false, this.bN), this.f2do.f4816a, this.bN);
            aVar.ab().bm = this.f2do.bm;
            new p(aVar).ah();
        } catch (Throwable th) {
            bVar = e.aV;
            bVar.b(th);
            e.a(this.e, th);
        }
    }
}
