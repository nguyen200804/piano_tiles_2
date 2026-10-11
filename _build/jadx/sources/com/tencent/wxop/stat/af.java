package com.tencent.wxop.stat;

import android.content.Context;
import java.util.Timer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class af {
    private static volatile af dd = null;
    private Timer dc;
    private Context h;

    private af(Context context) {
        this.dc = null;
        this.h = null;
        this.h = context.getApplicationContext();
        this.dc = new Timer(false);
    }

    public static af Y(Context context) {
        if (dd == null) {
            synchronized (af.class) {
                if (dd == null) {
                    dd = new af(context);
                }
            }
        }
        return dd;
    }

    public final void ah() {
        if (c.j() == d.PERIOD) {
            long u = c.u() * 60 * 1000;
            if (c.k()) {
                com.tencent.wxop.stat.b.l.av().b("setupPeriodTimer delay:" + u);
            }
            ag agVar = new ag(this);
            if (this.dc != null) {
                if (c.k()) {
                    com.tencent.wxop.stat.b.l.av().b("setupPeriodTimer schedule delay:" + u);
                }
                this.dc.schedule(agVar, u);
            } else if (c.k()) {
                com.tencent.wxop.stat.b.l.av().c("setupPeriodTimer schedule timer == null");
            }
        }
    }
}
