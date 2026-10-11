package com.cmplay.g;

import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.t;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: whitetile2_neitui_mofang.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends com.cmplay.util.c.a {
    private DateFormat c;

    public d() {
        super("whitetile2_neitui_mofang");
        this.c = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(byte b2, int i, String str, byte b3, String str2) {
        int i2 = 1;
        try {
            int a2 = t.a(GameApp.f1598a);
            switch (a2) {
                case 0:
                    i2 = 6;
                    break;
                case 1:
                    break;
                case 2:
                    i2 = 2;
                    break;
                case 3:
                    i2 = 3;
                    break;
                case 4:
                    i2 = 5;
                    break;
                case 5:
                    i2 = 4;
                    break;
                default:
                    i2 = a2;
                    break;
            }
            a("uptime", System.currentTimeMillis() / 1000);
            a("player_time", this.c.format(new Date()));
            b("network", i2);
            a("section", b2);
            b("card_id", i);
            a("pkgname", str);
            a("err_code", b3);
            a("err_info", str2);
            NativeUtil.reportData(a(), b(), true);
        } catch (Error e) {
        } catch (Exception e2) {
        }
    }

    public static void a(final int i, final int i2, final String str, final int i3, final String str2) {
        com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.g.d.1
            @Override // java.lang.Runnable
            public void run() {
                new d().a((byte) i, i2, str, (byte) i3, str2);
            }
        });
    }

    public static void a(int i, int i2, String str, int i3) {
        a(i, i2, str, i3, "");
    }
}
