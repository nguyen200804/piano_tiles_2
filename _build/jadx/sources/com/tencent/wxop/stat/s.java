package com.tencent.wxop.stat;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class s implements aj {
    final /* synthetic */ p bV;

    s(p pVar) {
        this.bV = pVar;
    }

    @Override // com.tencent.wxop.stat.aj
    public final void B() {
        com.tencent.wxop.stat.a.d dVar;
        boolean z;
        t ai = t.ai();
        dVar = this.bV.bP;
        z = this.bV.bR;
        ai.b(dVar, null, z, true);
        e.I();
    }

    @Override // com.tencent.wxop.stat.aj
    public final void ah() {
        Context context;
        e.H();
        if (t.ai().aI > 0) {
            context = this.bV.bS;
            e.o(context);
        }
    }
}
