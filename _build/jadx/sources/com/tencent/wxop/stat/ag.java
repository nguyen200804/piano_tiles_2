package com.tencent.wxop.stat;

import android.content.Context;
import java.util.TimerTask;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class ag extends TimerTask {
    final /* synthetic */ af de;

    ag(af afVar) {
        this.de = afVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        Context context;
        if (c.k()) {
            com.tencent.wxop.stat.b.l.av().b("TimerTask run");
        }
        context = this.de.h;
        e.q(context);
        cancel();
        this.de.ah();
    }
}
