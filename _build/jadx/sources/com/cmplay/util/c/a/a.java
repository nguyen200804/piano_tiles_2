package com.cmplay.util.c.a;

import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.t;

/* compiled from: whitetile2_ad.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends com.cmplay.util.c.a {
    public a() {
        super("whitetile2_adddata");
    }

    public void a(byte b2, byte b3, short s, byte b4) {
        try {
            a("uptime", System.currentTimeMillis() / 1000);
            b("network", t.a(GameApp.f1598a));
            a("scene", b2);
            a("action", b3);
            b("gain_type", 0);
            b("gain_num", 0);
            b("ad_type", s);
            b("askwindow_num", 0);
            a("askwindow", b4);
            b("ab_test", -1);
            b("music_id2", 0);
            NativeUtil.reportData(a(), b(), true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
