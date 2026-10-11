package com.cmplay.g;

import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.t;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: whitetile2_neitui_popup.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e extends com.cmplay.util.c.a {
    private DateFormat c;

    public e() {
        super("whitetile2_neitui_popup");
        this.c = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, int i, int i2, String str2, int i3) {
        int i4 = 1;
        try {
            int a2 = t.a(GameApp.f1598a);
            switch (a2) {
                case 0:
                    i4 = 6;
                    break;
                case 1:
                    break;
                case 2:
                    i4 = 2;
                    break;
                case 3:
                    i4 = 3;
                    break;
                case 4:
                    i4 = 5;
                    break;
                case 5:
                    i4 = 4;
                    break;
                default:
                    i4 = a2;
                    break;
            }
            a("uptime", System.currentTimeMillis() / 1000);
            a("player_time", this.c.format(new Date()));
            b("network", i4);
            a("popup", str);
            b(FacebookAdapter.KEY_STYLE, i2);
            b("action", i);
            a("pkgname", str2);
            b("ab", i3);
            NativeUtil.reportData(a(), b(), true);
        } catch (Error e) {
        } catch (Exception e2) {
        }
    }

    public static void a(final String str, final int i, final int i2, final String str2, final int i3) {
        com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.g.e.1
            @Override // java.lang.Runnable
            public void run() {
                new e().b(str, i, i2, str2, i3);
            }
        });
    }
}
