package com.tencent.wxop.stat;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class x implements Runnable {
    final /* synthetic */ com.tencent.wxop.stat.a.d bP;
    final /* synthetic */ boolean bR;
    final /* synthetic */ boolean ba;
    final /* synthetic */ t cg;
    final /* synthetic */ aj ck;

    x(t tVar, com.tencent.wxop.stat.a.d dVar, aj ajVar, boolean z, boolean z2) {
        this.cg = tVar;
        this.bP = dVar;
        this.ck = ajVar;
        this.bR = z;
        this.ba = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.cg.a(this.bP, this.ck, this.bR, this.ba);
    }
}
