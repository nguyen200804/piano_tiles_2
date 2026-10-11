package com.tencent.wxop.stat;

import android.content.Context;
import android.content.IntentFilter;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.regex.Pattern;
import org.apache.http.HttpHost;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g {
    private static g bg = null;
    private List<String> bc;
    private com.tencent.wxop.stat.b.f be;
    private Context bh;
    private com.tencent.wxop.stat.b.b bi;
    private volatile int g = 2;
    private volatile String c = "";
    private volatile HttpHost bd = null;
    private int bf = 0;

    private g(Context context) {
        this.bc = null;
        this.be = null;
        this.bh = null;
        this.bi = null;
        this.bh = context.getApplicationContext();
        this.be = new com.tencent.wxop.stat.b.f();
        ak.j(context);
        this.bi = com.tencent.wxop.stat.b.l.av();
        Y();
        this.bc = new ArrayList(10);
        this.bc.add("117.135.169.101");
        this.bc.add("140.207.54.125");
        this.bc.add("180.153.8.53");
        this.bc.add("120.198.203.175");
        this.bc.add("14.17.43.18");
        this.bc.add("163.177.71.186");
        this.bc.add("111.30.131.31");
        this.bc.add("123.126.121.167");
        this.bc.add("123.151.152.111");
        this.bc.add("113.142.45.79");
        this.bc.add("123.138.162.90");
        this.bc.add("103.7.30.94");
        Z();
    }

    private String O() {
        try {
            if (!d("pingma.qq.com")) {
                return InetAddress.getByName("pingma.qq.com").getHostAddress();
            }
        } catch (Exception e) {
            this.bi.b((Throwable) e);
        }
        return "";
    }

    private void Y() {
        this.g = 0;
        this.bd = null;
        this.c = null;
    }

    private static boolean d(String str) {
        return Pattern.compile("(2[5][0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})").matcher(str).matches();
    }

    public static g r(Context context) {
        if (bg == null) {
            synchronized (g.class) {
                if (bg == null) {
                    bg = new g(context);
                }
            }
        }
        return bg;
    }

    public final int D() {
        return this.g;
    }

    public final void I() {
        this.bf = (this.bf + 1) % this.bc.size();
    }

    public final HttpHost V() {
        return this.bd;
    }

    public final boolean W() {
        return this.g == 1;
    }

    public final boolean X() {
        return this.g != 0;
    }

    final void Z() {
        String str;
        if (!com.tencent.wxop.stat.b.r.W(this.bh)) {
            if (c.k()) {
                this.bi.b("NETWORK TYPE: network is close.");
            }
            Y();
            return;
        }
        if (c.ad) {
            String O = O();
            if (c.k()) {
                this.bi.b("remoteIp ip is " + O);
            }
            if (com.tencent.wxop.stat.b.l.e(O)) {
                if (this.bc.contains(O)) {
                    str = O;
                } else {
                    str = this.bc.get(this.bf);
                    if (c.k()) {
                        this.bi.c(O + " not in ip list, change to:" + str);
                    }
                }
                c.o("http://" + str + ":80/mstat/report");
            }
        }
        this.c = com.tencent.wxop.stat.b.l.E(this.bh);
        if (c.k()) {
            this.bi.b("NETWORK name:" + this.c);
        }
        if (com.tencent.wxop.stat.b.l.e(this.c)) {
            if ("WIFI".equalsIgnoreCase(this.c)) {
                this.g = 1;
            } else {
                this.g = 2;
            }
            this.bd = com.tencent.wxop.stat.b.l.v(this.bh);
        }
        if (e.a()) {
            e.n(this.bh);
        }
    }

    public final void aa() {
        this.bh.getApplicationContext().registerReceiver(new z(this), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public final String b() {
        return this.c;
    }

    public final void b(String str) {
        if (c.k()) {
            this.bi.b("updateIpList " + str);
        }
        try {
            if (com.tencent.wxop.stat.b.l.e(str)) {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.length() > 0) {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String string = jSONObject.getString(keys.next());
                        if (com.tencent.wxop.stat.b.l.e(string)) {
                            String[] split = string.split(";");
                            for (String str2 : split) {
                                if (com.tencent.wxop.stat.b.l.e(str2)) {
                                    String[] split2 = str2.split(":");
                                    if (split2.length > 1) {
                                        String str3 = split2[0];
                                        if (d(str3) && !this.bc.contains(str3)) {
                                            if (c.k()) {
                                                this.bi.b("add new ip:" + str3);
                                            }
                                            this.bc.add(str3);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            this.bi.b((Throwable) e);
        }
        this.bf = new Random().nextInt(this.bc.size());
    }
}
