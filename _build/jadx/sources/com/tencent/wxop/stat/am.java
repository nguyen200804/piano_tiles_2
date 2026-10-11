package com.tencent.wxop.stat;

import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class am implements Runnable {
    final /* synthetic */ List bc;
    final /* synthetic */ aj ck;
    final /* synthetic */ ak dm;

    am(ak akVar, List list, aj ajVar) {
        this.dm = akVar;
        this.bc = list;
        this.ck = ajVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.dm.a(this.bc, this.ck);
    }
}
