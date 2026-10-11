package com.tencent.wxop.stat;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class ab implements Runnable {
    final /* synthetic */ int aI;
    final /* synthetic */ t cl;

    ab(t tVar, int i) {
        this.cl = tVar;
        this.aI = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        t.a(this.cl, this.aI, true);
        t.a(this.cl, this.aI, false);
    }
}
