package com.tencent.wxop.stat;

import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class aa implements aj {
    final /* synthetic */ List bc;
    final /* synthetic */ boolean ch;
    final /* synthetic */ t cn;

    aa(t tVar, List list, boolean z) {
        this.cn = tVar;
        this.bc = list;
        this.ch = z;
    }

    @Override // com.tencent.wxop.stat.aj
    public final void B() {
        e.I();
        this.cn.b(this.bc, this.ch);
    }

    @Override // com.tencent.wxop.stat.aj
    public final void ah() {
        e.H();
        this.cn.c(this.bc, this.ch);
    }
}
