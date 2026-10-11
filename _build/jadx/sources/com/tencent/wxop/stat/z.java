package com.tencent.wxop.stat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class z extends BroadcastReceiver {
    final /* synthetic */ g cm;

    z(g gVar) {
        this.cm = gVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        com.tencent.wxop.stat.b.f fVar;
        com.tencent.wxop.stat.b.f fVar2;
        fVar = this.cm.be;
        if (fVar != null) {
            fVar2 = this.cm.be;
            fVar2.a(new ae(this));
        }
    }
}
