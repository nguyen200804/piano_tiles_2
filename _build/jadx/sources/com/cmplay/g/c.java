package com.cmplay.g;

import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.t;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: whitetile2_neitui_installs.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends com.cmplay.util.c.a {
    private DateFormat c;

    public c() {
        super("whitetile2_neitui_installs");
        this.c = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    }

    private void b(String str) {
        int i = 1;
        try {
            byte b2 = com.cmplay.util.e.b(str) ? (byte) 1 : (byte) 2;
            int a2 = t.a(GameApp.f1598a);
            switch (a2) {
                case 0:
                    i = 6;
                    break;
                case 1:
                    break;
                case 2:
                    i = 2;
                    break;
                case 3:
                    i = 3;
                    break;
                case 4:
                    i = 5;
                    break;
                case 5:
                    i = 4;
                    break;
                default:
                    i = a2;
                    break;
            }
            a("uptime", System.currentTimeMillis() / 1000);
            a("player_time", this.c.format(new Date()));
            b("network", i);
            a("install_states", b2);
            a("pkgname", str);
            NativeUtil.reportData(a(), b(), true);
        } catch (Exception e) {
        }
    }

    public static void a(String str) {
        new c().b(str);
    }
}
