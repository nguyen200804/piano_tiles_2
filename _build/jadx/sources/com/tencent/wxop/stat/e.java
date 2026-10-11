package com.tencent.wxop.stat;

import android.content.Context;
import java.lang.Thread;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {
    private static com.tencent.wxop.stat.b.f aK;
    private static volatile Map<com.tencent.wxop.stat.a.b, Long> aL = new ConcurrentHashMap();
    private static volatile Map<String, Properties> aM = new ConcurrentHashMap();
    private static volatile Map<Integer, Integer> aN = new ConcurrentHashMap(10);
    private static volatile long aO = 0;
    private static volatile long af = 0;
    private static volatile long aP = 0;
    private static String al = "";
    private static volatile int aQ = 0;
    private static volatile String aR = "";
    private static volatile String aS = "";
    private static Map<String, Long> aT = new ConcurrentHashMap();
    private static Map<String, Long> aU = new ConcurrentHashMap();
    private static com.tencent.wxop.stat.b.b aV = com.tencent.wxop.stat.b.l.av();
    private static Thread.UncaughtExceptionHandler aW = null;
    private static volatile boolean S = true;
    static volatile int aI = 0;
    static volatile long aX = 0;
    private static Context aY = null;
    static volatile long aZ = 0;

    private static JSONObject G() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (c.P.L != 0) {
                jSONObject2.put("v", c.P.L);
            }
            jSONObject.put(Integer.toString(c.P.aI), jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            if (c.O.L != 0) {
                jSONObject3.put("v", c.O.L);
            }
            jSONObject.put(Integer.toString(c.O.aI), jSONObject3);
        } catch (JSONException e) {
            aV.b((Throwable) e);
        }
        return jSONObject;
    }

    static void H() {
        aI = 0;
        aX = 0L;
    }

    static void I() {
        aI++;
        aX = System.currentTimeMillis();
        p(aY);
    }

    static int a(Context context, boolean z, f fVar) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean z2 = z && currentTimeMillis - af >= ((long) c.m());
        af = currentTimeMillis;
        if (aP == 0) {
            aP = com.tencent.wxop.stat.b.l.ad();
        }
        if (currentTimeMillis >= aP) {
            aP = com.tencent.wxop.stat.b.l.ad();
            if (t.s(context).t(context).as() != 1) {
                t.s(context).t(context).z();
            }
            c.C();
            aI = 0;
            al = com.tencent.wxop.stat.b.l.aw();
            z2 = true;
        }
        String str = al;
        if (com.tencent.wxop.stat.b.l.a(fVar)) {
            str = fVar.S() + al;
        }
        if (aU.containsKey(str) ? z2 : true) {
            if (com.tencent.wxop.stat.b.l.a(fVar)) {
                a(context, fVar);
            } else if (c.D() < c.A()) {
                com.tencent.wxop.stat.b.l.O(context);
                a(context, (f) null);
            } else {
                aV.d("Exceed StatConfig.getMaxDaySessionNumbers().");
            }
            aU.put(str, 1L);
        }
        if (S) {
            if (c.l()) {
                Context i = i(context);
                if (i == null) {
                    aV.error("The Context of StatService.testSpeed() can not be null!");
                } else if (k(i) != null) {
                    aK.a(new i(i));
                }
            }
            S = false;
        }
        return aQ;
    }

    private static void a(Context context, f fVar) {
        if (k(context) != null) {
            if (c.k()) {
                aV.e("start new session.");
            }
            if (fVar == null || aQ == 0) {
                aQ = com.tencent.wxop.stat.b.l.r();
            }
            c.z();
            c.B();
            new p(new com.tencent.wxop.stat.a.i(context, aQ, G(), fVar)).ah();
        }
    }

    public static void a(Context context, String str, f fVar) {
        if (c.l()) {
            Context i = i(context);
            if (i == null || str == null || str.length() == 0) {
                aV.error("The Context or pageName of StatService.trackBeginPage() can not be null or empty!");
                return;
            }
            String str2 = new String(str);
            if (k(i) != null) {
                aK.a(new as(str2, i, fVar));
            }
        }
    }

    static void a(Context context, Throwable th) {
        if (c.l()) {
            Context i = i(context);
            if (i == null) {
                aV.error("The Context of StatService.reportSdkSelfException() can not be null!");
            } else if (k(i) != null) {
                aK.a(new ap(i, th));
            }
        }
    }

    static boolean a() {
        if (aI < 2) {
            return false;
        }
        aX = System.currentTimeMillis();
        return true;
    }

    public static boolean a(Context context, String str, String str2) {
        try {
            if (!c.l()) {
                aV.error("MTA StatService is disable.");
                return false;
            }
            if (c.k()) {
                aV.e("MTA SDK version, current: 2.0.3 ,required: " + str2);
            }
            if (context == null || str2 == null) {
                aV.error("Context or mtaSdkVersion in StatService.startStatService() is null, please check it!");
                c.a(false);
                return false;
            }
            if (com.tencent.wxop.stat.b.l.u("2.0.3") < com.tencent.wxop.stat.b.l.u(str2)) {
                aV.error(("MTA SDK version conflicted, current: 2.0.3,required: " + str2) + ". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/");
                c.a(false);
                return false;
            }
            String e = c.e(context);
            if (e == null || e.length() == 0) {
                c.n("-");
            }
            if (str != null) {
                c.b(context, str);
            }
            if (k(context) != null) {
                aK.a(new m(context));
            }
            return true;
        } catch (Throwable th) {
            aV.b(th);
            return false;
        }
    }

    public static void b(Context context, String str, f fVar) {
        if (c.l()) {
            Context i = i(context);
            if (i == null || str == null || str.length() == 0) {
                aV.error("The Context or pageName of StatService.trackEndPage() can not be null or empty!");
                return;
            }
            String str2 = new String(str);
            if (k(i) != null) {
                aK.a(new k(i, str2, fVar));
            }
        }
    }

    public static void d(Context context, String str) {
        if (c.l()) {
            Context i = i(context);
            if (i == null) {
                aV.error("The Context of StatService.trackCustomEvent() can not be null!");
                return;
            }
            if (str == null || str.length() == 0) {
                aV.error("The event_id of StatService.trackCustomEvent() can not be null or empty.");
                return;
            }
            com.tencent.wxop.stat.a.b bVar = new com.tencent.wxop.stat.a.b(str);
            if (k(i) != null) {
                aK.a(new ar(i, bVar));
            }
        }
    }

    private static Context i(Context context) {
        return context != null ? context : aY;
    }

    private static synchronized void j(Context context) {
        boolean z = false;
        synchronized (e.class) {
            if (context != null) {
                if (aK == null) {
                    long f = com.tencent.wxop.stat.b.q.f(context, c.c);
                    long u = com.tencent.wxop.stat.b.l.u("2.0.3");
                    boolean z2 = true;
                    if (u <= f) {
                        aV.error("MTA is disable for current version:" + u + ",wakeup version:" + f);
                        z2 = false;
                    }
                    long f2 = com.tencent.wxop.stat.b.q.f(context, c.W);
                    if (f2 > System.currentTimeMillis()) {
                        aV.error("MTA is disable for current time:" + System.currentTimeMillis() + ",wakeup time:" + f2);
                    } else {
                        z = z2;
                    }
                    c.a(z);
                    if (z) {
                        Context applicationContext = context.getApplicationContext();
                        aY = applicationContext;
                        aK = new com.tencent.wxop.stat.b.f();
                        al = com.tencent.wxop.stat.b.l.aw();
                        aO = System.currentTimeMillis() + c.af;
                        aK.a(new an(applicationContext));
                    }
                }
            }
        }
    }

    private static com.tencent.wxop.stat.b.f k(Context context) {
        if (aK == null) {
            synchronized (e.class) {
                if (aK == null) {
                    try {
                        j(context);
                    } catch (Throwable th) {
                        aV.a(th);
                        c.a(false);
                    }
                }
            }
        }
        return aK;
    }

    public static void l(Context context) {
        if (c.l() && k(context) != null) {
            aK.a(new l(context));
        }
    }

    public static void m(Context context) {
        if (c.l() && k(context) != null) {
            aK.a(new ao(context));
        }
    }

    static void n(Context context) {
        if (c.l()) {
            Context i = i(context);
            if (i == null) {
                aV.error("The Context of StatService.sendNetworkDetector() can not be null!");
                return;
            }
            try {
                ak.Z(i).a(new com.tencent.wxop.stat.a.f(i), new aq());
            } catch (Throwable th) {
                aV.b(th);
            }
        }
    }

    public static void o(Context context) {
        if (c.l()) {
            if (c.k()) {
                aV.b("commitEvents, maxNumber=-1");
            }
            Context i = i(context);
            if (i == null) {
                aV.error("The Context of StatService.commitEvents() can not be null!");
            } else {
                if (!g.r(aY).X() || k(i) == null) {
                    return;
                }
                aK.a(new h(i));
            }
        }
    }

    public static Properties p(String str) {
        return aM.get(str);
    }

    public static void p(Context context) {
        if (c.l() && c.ay > 0) {
            Context i = i(context);
            if (i == null) {
                aV.error("The Context of StatService.testSpeed() can not be null!");
            } else {
                t.s(i).H();
            }
        }
    }

    static void q(Context context) {
        aZ = System.currentTimeMillis() + (60000 * c.u());
        com.tencent.wxop.stat.b.q.a(context, "last_period_ts", aZ);
        o(context);
    }
}
