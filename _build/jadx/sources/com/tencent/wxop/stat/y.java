package com.tencent.wxop.stat;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class y implements Runnable {
    final /* synthetic */ ah O;
    final /* synthetic */ t cl;

    y(t tVar, ah ahVar) {
        this.cl = tVar;
        this.O = ahVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.cl.a(this.O);
    }
}
