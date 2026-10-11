package com.cmplay.util.c.a;

import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.t;

/* compiled from: whitetile2_cloud.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends com.cmplay.util.c.a {
    public c() {
        super("whitetile2_cloud2");
    }

    public void a(final byte b2, final String str) {
        com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.util.c.a.c.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.a("uptime", System.currentTimeMillis() / 1000);
                    c.this.a("action", b2);
                    c.this.a("deploy_version", str);
                    c.this.a("resource_version", "0");
                    c.this.b("network", t.a(GameApp.f1598a));
                    NativeUtil.reportData(c.this.a(), c.this.b(), true);
                } catch (Error e) {
                } catch (Exception e2) {
                }
            }
        });
    }
}
