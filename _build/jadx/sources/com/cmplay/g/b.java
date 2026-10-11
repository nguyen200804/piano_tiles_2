package com.cmplay.g;

import com.cmplay.util.NativeUtil;

/* compiled from: whitetile2_ad_failure.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends com.cmplay.util.c.a {
    public b() {
        super("whitetile2_ad_failure");
    }

    public void a(int i, int i2, String str) {
        try {
            a("uptime2", System.currentTimeMillis() / 1000);
            b("ad_type", (short) i);
            b("ad_code", (short) i2);
            a("ad_info", str);
            NativeUtil.reportData(a(), b(), true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
