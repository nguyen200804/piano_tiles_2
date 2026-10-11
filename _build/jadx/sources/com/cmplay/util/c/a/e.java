package com.cmplay.util.c.a;

import com.cmplay.base.util.g;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.t;

/* compiled from: whitetile2_video_request.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e extends com.cmplay.util.c.a {
    public e() {
        super("whitetile2_video_request");
    }

    public void a(int i, int i2, int i3, int i4, int i5) {
        try {
            a("uptime", System.currentTimeMillis() / 1000);
            b("network", t.a(GameApp.f1598a));
            b("action", i);
            b("errorcode", i2);
            b("source", i3);
            b("ad_type", i4);
            b("scene", i5);
            String b2 = b();
            g.a("reportAd", "tableName:" + a() + "    data:" + b2);
            NativeUtil.reportData(a(), b2, true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
