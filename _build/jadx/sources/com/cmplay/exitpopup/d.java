package com.cmplay.exitpopup;

import com.cmplay.base.util.g;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.t;

/* compiled from: whitetile2_desktoppopup.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends com.cmplay.util.c.a {
    public d() {
        super("whitetile2_tabshow");
    }

    public void a(int i, int i2, int i3, int i4, int i5, String str) {
        try {
            b("area1", (short) i);
            a("area_type", (byte) i2);
            a("action", (byte) i3);
            b("click_num", (short) i4);
            b("gain_num", (short) i5);
            a("login_fail_reason", str);
            a("uptime", System.currentTimeMillis() / 1000);
            a("player_time", System.currentTimeMillis() / 1000);
            b("network", t.a(GameApp.f1598a));
            a("source", "0");
            b("tab", 0);
            b("site", 0);
            b("music_id", 0);
            a("music_name", "0");
            b("music_type", 0);
            b("first_login", 0);
            a("account_id", "0");
            b("account_type", 0);
            b("ab_test_maidian", 0);
            b("login_crown", 0);
            b("login_star", 0);
            b("album_id", 0);
            b("music_id2", 0);
            a("playlist_id", "");
            NativeUtil.reportData(a(), b(), true);
            g.a("pop_zzb", "埋点：" + b());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
