package com.tencent.wxop.stat;

import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class u implements Runnable {
    final /* synthetic */ boolean bR;
    final /* synthetic */ List bc;
    final /* synthetic */ t cg;
    final /* synthetic */ int g = 1;
    final /* synthetic */ boolean ba = true;

    u(t tVar, List list, boolean z) {
        this.cg = tVar;
        this.bc = list;
        this.bR = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.cg.a((List<ad>) this.bc, this.g, this.bR);
        if (this.ba) {
            this.bc.clear();
        }
    }
}
