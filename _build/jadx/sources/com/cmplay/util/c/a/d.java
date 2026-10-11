package com.cmplay.util.c.a;

import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.t;

/* compiled from: whitetile2_notification.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends com.cmplay.util.c.a {
    public d() {
        super("whitetile2_notification");
    }

    public void a(byte b2, byte b3, byte b4, int i, int i2) {
        try {
            a("source", b2);
            a("state", b3);
            a("action", b4);
            a("uptime", System.currentTimeMillis() / 1000);
            b("network", t.a(GameApp.f1598a));
            b("notif_copy", i);
            b("notif_img", i2);
            b("music_id2", 0);
            NativeUtil.reportData(a(), b(), true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
