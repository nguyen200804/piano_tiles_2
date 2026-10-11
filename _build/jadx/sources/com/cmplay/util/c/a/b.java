package com.cmplay.util.c.a;

import com.cmplay.base.util.g;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.t;

/* compiled from: whitetile2_ad_request.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends com.cmplay.util.c.a {
    public b() {
        super("whitetile2_ad_request");
    }

    public void a(int i, int i2, int i3, int i4) {
        try {
            a("uptime", System.currentTimeMillis() / 1000);
            b("network", t.a(GameApp.f1598a));
            b("action", i);
            b("errorcode", i2);
            b("source", i3);
            b("ad_type", i4);
            String b2 = b();
            g.a("reportAd", "tableName:" + a() + "    data:" + b2);
            NativeUtil.reportData(a(), b2, true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
