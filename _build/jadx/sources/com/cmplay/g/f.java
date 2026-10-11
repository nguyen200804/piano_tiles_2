package com.cmplay.g;

import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.t;

/* compiled from: whitetile2_reportchannel.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f extends com.cmplay.util.c.a {
    public f() {
        super("whitetile2_reportchannel");
    }

    public void a(String str, int i) {
        try {
            b("channelid", 0);
            b("channelid2", Integer.parseInt(str));
            b("action", i);
            a("uptime", System.currentTimeMillis() / 1000);
            b("network", t.a(GameApp.f1598a));
            NativeUtil.reportData(a(), b(), true);
        } catch (Exception e) {
        }
    }
}
