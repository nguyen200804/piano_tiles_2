package com.tencent.wxop.stat;

import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class v implements Runnable {
    final /* synthetic */ boolean bR = true;
    final /* synthetic */ List bc;
    final /* synthetic */ boolean ch;
    final /* synthetic */ t ci;

    v(t tVar, List list, boolean z) {
        this.ci = tVar;
        this.bc = list;
        this.ch = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.ci.a((List<ad>) this.bc, this.ch);
        if (this.bR) {
            this.bc.clear();
        }
    }
}
