package com.tencent.wxop.stat;

import android.content.Context;
import android.os.Build;
import java.net.URI;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c {
    private static String Y;
    private static String Z;
    private static com.tencent.wxop.stat.b.b N = com.tencent.wxop.stat.b.l.av();
    static ah O = new ah(2);
    static ah P = new ah(1);
    private static d Q = d.APP_LAUNCH;
    private static boolean R = false;
    private static boolean S = true;
    private static int T = 30000;
    private static int U = 100000;
    private static int V = 30;
    private static int w = 10;
    private static int x = 100;
    private static int y = 30;
    private static int z = 1;
    static String c = "__HIBERNATE__";
    static String W = "__HIBERNATE__TIME";
    static String M = "__MTA_KILL__";
    private static String X = null;
    private static String aa = "mta_channel";
    static String ab = "";
    private static int ac = 180;
    static boolean ad = false;
    static int ae = 100;
    static long af = 10000;
    private static int ag = 1024;
    static boolean ah = true;
    private static long ai = 0;
    private static long aj = 300000;
    public static boolean ak = true;
    static volatile String al = "pingma.qq.com:80";
    private static volatile String am = "http://pingma.qq.com:80/mstat/report";
    private static int an = 0;
    private static volatile int ao = 0;
    private static int ap = 20;
    private static int aq = 0;
    private static boolean ar = false;
    private static int as = 4096;
    private static boolean at = false;
    private static String au = null;
    private static boolean av = false;
    private static ai aw = null;
    static boolean ax = true;
    static int ay = 0;
    static long az = 10000;
    static int aA = 512;

    public static int A() {
        return ap;
    }

    static void B() {
        aq++;
    }

    static void C() {
        aq = 0;
    }

    static int D() {
        return aq;
    }

    public static boolean E() {
        return at;
    }

    public static ai F() {
        return aw;
    }

    static void a(Context context, ah ahVar) {
        if (ahVar.aI != P.aI) {
            if (ahVar.aI == O.aI) {
                O = ahVar;
            }
        } else {
            P = ahVar;
            a(ahVar.df);
            if (P.df.isNull("iplist")) {
                return;
            }
            g.r(context).b(P.df.getString("iplist"));
        }
    }

    private static void a(Context context, ah ahVar, JSONObject jSONObject) {
        boolean z2;
        try {
            try {
                Iterator<String> keys = jSONObject.keys();
                boolean z3 = false;
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (next.equalsIgnoreCase("v")) {
                        int i = jSONObject.getInt(next);
                        boolean z4 = ahVar.L != i ? true : z3;
                        ahVar.L = i;
                        z3 = z4;
                    } else if (next.equalsIgnoreCase("c")) {
                        String string = jSONObject.getString("c");
                        if (string.length() > 0) {
                            ahVar.df = new JSONObject(string);
                        }
                    } else if (next.equalsIgnoreCase("m")) {
                        ahVar.c = jSONObject.getString("m");
                    }
                }
                if (z3) {
                    t s = t.s(ak.aB());
                    if (s != null) {
                        s.b(ahVar);
                    }
                    if (ahVar.aI == P.aI) {
                        a(ahVar.df);
                        JSONObject jSONObject2 = ahVar.df;
                        if (jSONObject2 != null && jSONObject2.length() != 0) {
                            try {
                                Context aB = ak.aB();
                                try {
                                    String optString = jSONObject2.optString(M);
                                    if (com.tencent.wxop.stat.b.l.e(optString)) {
                                        JSONObject jSONObject3 = new JSONObject(optString);
                                        if (jSONObject3.length() != 0) {
                                            if (!jSONObject3.isNull("sm")) {
                                                Object obj = jSONObject3.get("sm");
                                                int intValue = obj instanceof Integer ? ((Integer) obj).intValue() : obj instanceof String ? Integer.valueOf((String) obj).intValue() : 0;
                                                if (intValue > 0) {
                                                    if (R) {
                                                        N.b("match sleepTime:" + intValue + " minutes");
                                                    }
                                                    com.tencent.wxop.stat.b.q.a(aB, W, System.currentTimeMillis() + (intValue * 60 * 1000));
                                                    a(false);
                                                    N.warn("MTA is disable for current SDK version");
                                                }
                                            }
                                            if (b(jSONObject3, "sv", "2.0.3")) {
                                                N.b("match sdk version:2.0.3");
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            if (b(jSONObject3, "md", Build.MODEL)) {
                                                N.b("match MODEL:" + Build.MODEL);
                                                z2 = true;
                                            }
                                            if (b(jSONObject3, "av", com.tencent.wxop.stat.b.l.D(aB))) {
                                                N.b("match app version:" + com.tencent.wxop.stat.b.l.D(aB));
                                                z2 = true;
                                            }
                                            if (b(jSONObject3, "mf", Build.MANUFACTURER)) {
                                                N.b("match MANUFACTURER:" + Build.MANUFACTURER);
                                                z2 = true;
                                            }
                                            if (b(jSONObject3, "osv", new StringBuilder().append(Build.VERSION.SDK_INT).toString())) {
                                                N.b("match android SDK version:" + Build.VERSION.SDK_INT);
                                                z2 = true;
                                            }
                                            if (b(jSONObject3, "ov", new StringBuilder().append(Build.VERSION.SDK_INT).toString())) {
                                                N.b("match android SDK version:" + Build.VERSION.SDK_INT);
                                                z2 = true;
                                            }
                                            if (b(jSONObject3, "ui", t.s(aB).t(aB).b())) {
                                                N.b("match imei:" + t.s(aB).t(aB).b());
                                                z2 = true;
                                            }
                                            if (b(jSONObject3, "mid", h(aB))) {
                                                N.b("match mid:" + h(aB));
                                                z2 = true;
                                            }
                                            if (z2) {
                                                b(com.tencent.wxop.stat.b.l.u("2.0.3"));
                                            }
                                        }
                                    }
                                } catch (Exception e) {
                                    N.b((Throwable) e);
                                }
                                String string2 = jSONObject2.getString(c);
                                if (R) {
                                    N.e("hibernateVer:" + string2 + ", current version:2.0.3");
                                }
                                long u = com.tencent.wxop.stat.b.l.u(string2);
                                if (com.tencent.wxop.stat.b.l.u("2.0.3") <= u) {
                                    b(u);
                                }
                            } catch (JSONException e2) {
                                N.e("__HIBERNATE__ not found.");
                            }
                        }
                    }
                }
                a(context, ahVar);
            } catch (Throwable th) {
                N.b(th);
            }
        } catch (JSONException e3) {
            N.b((Throwable) e3);
        }
    }

    static void a(Context context, JSONObject jSONObject) {
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next.equalsIgnoreCase(Integer.toString(P.aI))) {
                    a(context, P, jSONObject.getJSONObject(next));
                } else if (next.equalsIgnoreCase(Integer.toString(O.aI))) {
                    a(context, O, jSONObject.getJSONObject(next));
                } else {
                    if (!next.equalsIgnoreCase("rs")) {
                        return;
                    }
                    d a2 = d.a(jSONObject.getInt(next));
                    if (a2 != null) {
                        Q = a2;
                        if (R) {
                            N.e("Change to ReportStrategy:" + a2.name());
                        }
                    }
                }
            }
        } catch (JSONException e) {
            N.b((Throwable) e);
        }
    }

    public static void a(d dVar) {
        Q = dVar;
        if (dVar != d.PERIOD) {
            e.aZ = 0L;
        }
        if (R) {
            N.e("Change to statSendStrategy: " + dVar);
        }
    }

    private static void a(JSONObject jSONObject) {
        try {
            d a2 = d.a(jSONObject.getInt("rs"));
            if (a2 != null) {
                a(a2);
            }
        } catch (JSONException e) {
            if (R) {
                N.b("rs not found.");
            }
        }
    }

    public static void a(boolean z2) {
        S = z2;
        if (z2) {
            return;
        }
        N.warn("!!!!!!MTA StatService has been disabled!!!!!!");
    }

    private static void b(long j) {
        com.tencent.wxop.stat.b.q.a(ak.aB(), c, j);
        a(false);
        N.warn("MTA is disable for current SDK version");
    }

    public static void b(Context context, String str) {
        String str2;
        if (context == null) {
            N.error("ctx in StatConfig.setAppKey() is null");
            return;
        }
        if (str == null || str.length() > 256) {
            N.error("appkey in StatConfig.setAppKey() is null or exceed 256 bytes");
            return;
        }
        if (Y == null) {
            Y = com.tencent.wxop.stat.b.r.t(com.tencent.wxop.stat.b.q.b(context, "_mta_ky_tag_", (String) null));
        }
        if ((!m(str) && !m(com.tencent.wxop.stat.b.l.z(context))) || (str2 = Y) == null) {
            return;
        }
        com.tencent.wxop.stat.b.q.c(context, "_mta_ky_tag_", com.tencent.wxop.stat.b.r.q(str2));
    }

    private static boolean b(JSONObject jSONObject, String str, String str2) {
        if (!jSONObject.isNull(str)) {
            String optString = jSONObject.optString(str);
            if (com.tencent.wxop.stat.b.l.e(str2) && com.tencent.wxop.stat.b.l.e(optString) && str2.equalsIgnoreCase(optString)) {
                return true;
            }
        }
        return false;
    }

    public static void c(Context context, String str) {
        if (str.length() > 128) {
            N.error("the length of installChannel can not exceed the range of 128 bytes.");
        } else {
            Z = str;
            com.tencent.wxop.stat.b.q.c(context, aa, str);
        }
    }

    public static synchronized String d(Context context) {
        String str;
        synchronized (c.class) {
            if (Y != null) {
                str = Y;
            } else {
                if (context != null && Y == null) {
                    Y = com.tencent.wxop.stat.b.l.z(context);
                }
                if (Y == null || Y.trim().length() == 0) {
                    N.error("AppKey can not be null or empty, please read Developer's Guide first!");
                }
                str = Y;
            }
        }
        return str;
    }

    public static synchronized String e(Context context) {
        String str;
        synchronized (c.class) {
            if (Z != null) {
                str = Z;
            } else {
                String b2 = com.tencent.wxop.stat.b.q.b(context, aa, "");
                Z = b2;
                if (b2 == null || Z.trim().length() == 0) {
                    Z = com.tencent.wxop.stat.b.l.A(context);
                }
                if (Z == null || Z.trim().length() == 0) {
                    N.c("installChannel can not be null or empty, please read Developer's Guide first!");
                }
                str = Z;
            }
        }
        return str;
    }

    public static String f(Context context) {
        return com.tencent.wxop.stat.b.q.b(context, "mta.acc.qq", ab);
    }

    public static String g(Context context) {
        if (context == null) {
            N.error("Context for getCustomUid is null.");
            return null;
        }
        if (au == null) {
            au = com.tencent.wxop.stat.b.q.b(context, "MTA_CUSTOM_UID", "");
        }
        return au;
    }

    public static String h(Context context) {
        return context != null ? com.tencent.a.a.a.a.g.a(context).f().c() : "0";
    }

    public static d j() {
        return Q;
    }

    public static boolean k() {
        return R;
    }

    static String l(String str) {
        String string;
        try {
            string = P.df.getString(str);
        } catch (Throwable th) {
            N.c("can't find custom key:" + str);
        }
        if (string != null) {
            return string;
        }
        return null;
    }

    public static boolean l() {
        return S;
    }

    public static int m() {
        return T;
    }

    private static boolean m(String str) {
        if (str == null) {
            return false;
        }
        if (Y == null) {
            Y = str;
            return true;
        }
        if (Y.contains(str)) {
            return false;
        }
        Y += "|" + str;
        return true;
    }

    public static int n() {
        return x;
    }

    public static void n(String str) {
        if (str.length() > 128) {
            N.error("the length of installChannel can not exceed the range of 128 bytes.");
        } else {
            Z = str;
        }
    }

    public static int o() {
        return y;
    }

    public static void o(String str) {
        if (str == null || str.length() == 0) {
            N.error("statReportUrl cannot be null or empty.");
            return;
        }
        am = str;
        try {
            al = new URI(am).getHost();
        } catch (Exception e) {
            N.c(e);
        }
        if (R) {
            N.b("url:" + am + ", domain:" + al);
        }
    }

    public static int p() {
        return w;
    }

    public static int q() {
        return z;
    }

    static int r() {
        return V;
    }

    public static int s() {
        return U;
    }

    public static void t() {
        ac = 60;
    }

    public static int u() {
        return ac;
    }

    public static int v() {
        return ag;
    }

    public static void w() {
        ah = true;
    }

    public static boolean x() {
        return ak;
    }

    public static String y() {
        return am;
    }

    static synchronized void z() {
        synchronized (c.class) {
            ao = 0;
        }
    }
}
