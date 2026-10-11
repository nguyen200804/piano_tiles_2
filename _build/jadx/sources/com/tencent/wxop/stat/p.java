package com.tencent.wxop.stat;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class p {
    private static volatile long bU = 0;
    private com.tencent.wxop.stat.a.d bP;
    private d bQ;
    private boolean bR;
    private Context bS;
    private long bT = System.currentTimeMillis();

    public p(com.tencent.wxop.stat.a.d dVar) {
        this.bQ = null;
        this.bR = false;
        this.bS = null;
        this.bP = dVar;
        this.bQ = c.j();
        this.bR = dVar.X();
        this.bS = dVar.J();
    }

    private void H() {
        if (t.ai().aI <= 0 || !c.ax) {
            a(new s(this));
        } else {
            t.ai().b(this.bP, null, this.bR, true);
            t.ai().b(-1);
        }
    }

    private void a(aj ajVar) {
        Context context;
        context = e.aY;
        ak.Z(context).a(this.bP, ajVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00c0 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void ah() {
        /*
            Method dump skipped, instructions count: 788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.p.ah():void");
    }
}
