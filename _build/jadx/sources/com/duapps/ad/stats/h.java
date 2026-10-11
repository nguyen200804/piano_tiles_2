package com.duapps.ad.stats;

import android.content.Context;
import android.text.TextUtils;
import com.cmplay.base.util.webview.util.WebUtils;
import com.duapps.ad.base.m;
import com.duapps.ad.base.n;
import com.duapps.ad.base.r;
import com.duapps.ad.base.t;
import com.duapps.ad.entity.AdData;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.net.URL;
import java.util.List;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONStringer;

/* compiled from: ToolStatsHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {
    public static void a(Context context, f fVar) {
        a(context, "tctc", fVar);
    }

    public static void b(Context context, f fVar) {
        a(context, "tcta", fVar);
    }

    public static void c(Context context, f fVar) {
        a(context, "tct", fVar);
    }

    public static void d(Context context, f fVar) {
        n.a(context).a(fVar);
        a(context, "tctb", fVar);
    }

    public static void e(Context context, f fVar) {
        n.a(context).a(fVar);
        a(context, "tctp", fVar);
    }

    public static void f(Context context, f fVar) {
        a(context, "thi", fVar);
    }

    public static void g(Context context, f fVar) {
        a(context, "tccu", fVar);
    }

    public static void h(Context context, f fVar) {
        com.duapps.ad.base.j e;
        if (1 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value("tcpp").key("ts").value(System.currentTimeMillis());
                value.key("logid").value(fVar.l());
                value.key(FacebookAdapter.KEY_ID).value(fVar.b());
                if (fVar.d() > 0 && (e = fVar.e()) != null) {
                    value.key("preclick").value(a(e.c));
                    value.key("adpkg").value(fVar.a());
                }
                if (fVar.k().equals("online")) {
                    value.key("adpkg").value(fVar.a());
                }
                value.key("sid").value(fVar.j());
                value.endObject();
                JSONStringer value2 = new JSONStringer().object().key("key").value("jm").key("end").value(com.duapps.ad.c.b.c.a(value.toString()));
                value2.endObject();
                b2.a(fVar.c, value2.toString(), 0);
            } catch (JSONException e2) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.b("ToolStatsHelper", "create report content failed.", e2);
                }
            }
        }
    }

    private static void a(Context context, String str, f fVar) {
        com.duapps.ad.base.j e;
        if (1 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value(str).key("ts").value(System.currentTimeMillis());
                value.key("logid").value(fVar.l());
                value.key(FacebookAdapter.KEY_ID).value(fVar.b());
                if (fVar.d() > 0 && (e = fVar.e()) != null) {
                    value.key("preclick").value(a(e.c));
                    value.key("adpkg").value(fVar.a());
                }
                if (fVar.k().equals("online")) {
                    value.key("adpkg").value(fVar.a());
                }
                String b3 = com.duapps.ad.base.a.b();
                if ("thi".equals(str) && b3 != null) {
                    value.key("referrer").value(b3);
                }
                value.key("sid").value(fVar.j());
                if ("tctc".equals(str) && !TextUtils.isEmpty(fVar.f)) {
                    value.key("itype").value(fVar.f);
                }
                AdData f = fVar.f();
                if (f != null) {
                    int i = f.g;
                    if ("tctc".equals(str) && i != -1) {
                        value.key("pos").value(i);
                    }
                }
                if (str.equals("tctp")) {
                    value.key("directgp").value(fVar.o());
                }
                value.endObject();
                b2.a(fVar.c, value.toString(), 0);
            } catch (JSONException e2) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.b("ToolStatsHelper", "create report content failed.", e2);
                }
            }
        }
    }

    private static String a(int i) {
        if (i == 0) {
            return "none";
        }
        if (1 == i) {
            return "tctp";
        }
        if (2 == i) {
            return "tctb";
        }
        if (3 != i) {
            return "";
        }
        return "err";
    }

    public static void a(Context context, f fVar, String str) {
        if (4 <= m.j(context)) {
            try {
                a.b(context).a("behavior", new JSONStringer().object().key("key").value("ex").key(FacebookAdapter.KEY_ID).value(fVar.b()).key("ts").value(System.currentTimeMillis()).key("exm").value(str).endObject().toString(), 1);
            } catch (JSONException e) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.b("ToolStatsHelper", "create report content failed.", e);
                }
            }
        }
    }

    public static void a(Context context, String str, int i) {
        if (1 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value("thista").key("adpkg").value(str).key("ac").value(i).key("ts").value(System.currentTimeMillis());
                value.endObject();
                b2.a("native", value.toString(), 0);
            } catch (JSONException e) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.b("ToolStatsHelper", "create report content failed.", e);
                }
            }
        }
    }

    public static void a(Context context, f fVar, long j, int i, String str) {
        if (1 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value("thist").key(FacebookAdapter.KEY_ID).value(fVar.b()).key("adpkg").value(fVar.a()).key("ac").value(j).key("ts").value(System.currentTimeMillis());
                if (j > 0) {
                    value.key("logid").value(fVar.l());
                    if (i > 0) {
                        value.key(WebUtils.SC).value(i);
                    }
                    if (!TextUtils.isEmpty(str)) {
                        value.key("st").value(str);
                    }
                }
                value.endObject();
                JSONStringer value2 = new JSONStringer().object().key("key").value("jm").key("end").value(com.duapps.ad.c.b.c.a(value.toString()));
                value2.endObject();
                b2.a("native", value2.toString(), 0);
            } catch (JSONException e) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.b("ToolStatsHelper", "create report content failed.", e);
                }
            }
        }
    }

    public static void a(Context context, f fVar, long j, int i) {
        a(context, fVar, j, i, (String) null);
    }

    public static void a(Context context, f fVar, long j) {
        a(context, fVar, j, -1);
    }

    public static void b(Context context, f fVar, String str) {
        if (1 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value("show").key("sid").value(fVar.f2253b).key("logid").value(fVar.l()).key("ts").value(System.currentTimeMillis());
                value.key("ids").array().value(fVar.b()).endArray();
                if (fVar.k().equals("online")) {
                    value.key("adpkg").value(fVar.a());
                }
                if (!TextUtils.isEmpty(str)) {
                    value.key("itype").value(str);
                }
                value.endObject();
                b2.a(fVar.c, value.toString(), 1);
            } catch (JSONException e) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.b("ToolStatsHelper", "create report content failed.", e);
                }
            }
        }
    }

    public static void a(Context context, f fVar, int i) {
        if (1 <= m.j(context)) {
            try {
                a.b(context).a(fVar.c, new JSONStringer().object().key("key").value("show").key("sid").value(fVar.f2253b).key("logid").value(fVar.l()).key("ts").value(System.currentTimeMillis()).key("itype").value("offerwall").key("pos").array().value(i).endArray().key("ids").array().value(fVar.b()).endArray().endObject().toString(), 1);
            } catch (JSONException e) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.b("ToolStatsHelper", "create report content failed.", e);
                }
            }
        }
    }

    public static void a(Context context, int i, String str) {
        b(context, "admob", i, str);
    }

    public static void b(Context context, int i, String str) {
        a(context, "admob", i, str);
    }

    private static void a(Context context, String str, int i, String str2) {
        if (1 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value("tctc").key("sid").value(i).key("ts").value(System.currentTimeMillis());
                if (!TextUtils.isEmpty(str2)) {
                    value.key("itype").value(str2);
                }
                value.endObject();
                b2.a(str, value.toString(), 0);
            } catch (Exception e) {
            }
        }
    }

    private static void b(Context context, String str, int i, String str2) {
        if (1 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value("show").key("sid").value(i).key("ts").value(System.currentTimeMillis());
                if (!TextUtils.isEmpty(str2)) {
                    value.key("itype").value(str2);
                }
                value.endObject();
                b2.a(str, value.toString(), 1);
            } catch (Exception e) {
            }
        }
    }

    public static void c(Context context, int i, String str) {
        if (1 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value("show").key("sid").value(i).key("ts").value(System.currentTimeMillis());
                if (!TextUtils.isEmpty(str)) {
                    value.key("itype").value(str);
                }
                value.endObject();
                b2.a("facebook", value.toString(), 1);
            } catch (Exception e) {
            }
        }
    }

    public static void d(Context context, int i, String str) {
        if (1 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value("tctc").key("sid").value(i).key("ts").value(System.currentTimeMillis());
                if (!TextUtils.isEmpty(str)) {
                    value.key("itype").value(str);
                }
                value.endObject();
                b2.a("facebook", value.toString(), 0);
            } catch (Exception e) {
            }
        }
    }

    public static void a(Context context, AdData adData, int i, int i2, long j) {
        if (1 <= m.j(context)) {
            try {
                a b2 = a.b(context);
                JSONStringer value = new JSONStringer().object().key("key").value("jm").key("end").value(com.duapps.ad.c.b.c.a(new JSONStringer().object().key("key").value("pclick").key(FacebookAdapter.KEY_ID).value(adData.f2122b).key("logid").value(adData.w).key("sid").value(adData.y).key("ptype").value(i).key("loop").value(i2).key("tsi").value(j).endObject().toString()));
                value.endObject();
                b2.a("native", value.toString(), 1);
            } catch (JSONException e) {
            }
        }
    }

    public static void b(Context context, AdData adData, int i, int i2, long j) {
        if (1 <= m.j(context)) {
            try {
                a.b(context).a("native", new JSONStringer().object().key("key").value("tts").key(FacebookAdapter.KEY_ID).value(adData.f2122b).key("logid").value(adData.w).key("sid").value(adData.y).key("ptype").value(i).key("loop").value(i2).key("tsi").value(j).key("ts").value(System.currentTimeMillis()).key("tts_t").value(adData.f2121a).endObject().toString(), 1);
            } catch (JSONException e) {
            }
        }
    }

    public static void a(Context context, int i) {
        if (context != null && 2 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value("close").key("sid").value(i).key("ts").value(System.currentTimeMillis());
                value.endObject();
                b2.a("behavior", value.toString(), 1);
            } catch (JSONException e) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.b("ToolStatsHelper", "create report content failed.", e);
                }
            }
        }
    }

    public static void b(Context context, int i) {
        if (context != null && 3 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value("ne").key("sid").value(i).key("ts").value(System.currentTimeMillis());
                value.endObject();
                b2.a("behavior", value.toString(), 1);
            } catch (JSONException e) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.b("ToolStatsHelper", "create report content failed.", e);
                }
            }
        }
    }

    public static void a(Context context, int i, String str, String str2) {
        if (context != null && str != null && 3 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value("fid").key("sid").value(i).key("fid").value(com.duapps.ad.c.b.c.a(str)).key("ts").value(System.currentTimeMillis());
                if (!TextUtils.isEmpty(str2)) {
                    value.key("itype").value(str2);
                }
                value.endObject();
                b2.a("behavior", value.toString(), 1);
            } catch (JSONException e) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.b("ToolStatsHelper", "create report content failed.", e);
                }
            }
        }
    }

    public static void a(final AdData adData) {
        for (final String str : adData.G) {
            t.a().a(new Runnable() { // from class: com.duapps.ad.stats.h.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        int statusCode = r.a(new URL(str), (List<Header>) null, true).getStatusLine().getStatusCode();
                        if (statusCode != 200) {
                            com.duapps.ad.base.h.c("ToolStatsHelper", "click to " + adData.o + " failed!");
                        } else if (statusCode == 200) {
                            com.duapps.ad.base.h.c("ToolStatsHelper", "click to " + adData.o + " success!");
                        }
                    } catch (Exception e) {
                        com.duapps.ad.base.h.c("ToolStatsHelper", "click to " + adData.o + " exception!");
                    }
                }
            });
        }
    }

    public static void a(Context context, f fVar, String str, String str2, String str3) {
        if (1 <= m.j(context)) {
            if (fVar == null) {
                com.duapps.ad.base.h.c("ToolStatsHelper", "上报exg，data是空的，不上报");
                return;
            }
            a b2 = a.b(context);
            try {
                JSONStringer endObject = new JSONStringer().object().key("key").value("exg_gaid").key("logid").value(fVar.l()).key("device_id_type").value(str).key("hostname").value(str2).key("device_id_param").value(str3).key("ts").value(System.currentTimeMillis()).key(FacebookAdapter.KEY_ID).value(fVar.b()).endObject();
                com.duapps.ad.base.h.c("ToolStatsHelper", "exg_gaid:" + endObject.toString());
                b2.a(fVar.c, endObject.toString(), 1);
            } catch (JSONException e) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.b("ToolStatsHelper", "reportExgGaidAnid failed.", e);
                }
            }
        }
    }

    public static void a(Context context, f fVar, String str, String str2) {
        if (1 <= m.j(context)) {
            if (fVar == null) {
                com.duapps.ad.base.h.c("ToolStatsHelper", "上报exg，data是空的_modify，不上报");
                return;
            }
            a b2 = a.b(context);
            try {
                JSONStringer endObject = new JSONStringer().object().key("key").value("exg_gaid").key("logid").value(fVar.l()).key("isModify").value(str).key("hostname").value(str2).key("ts").value(System.currentTimeMillis()).key(FacebookAdapter.KEY_ID).value(fVar.b()).endObject();
                com.duapps.ad.base.h.c("ToolStatsHelper", "exg_ismodify:" + endObject.toString());
                b2.a(fVar.c, endObject.toString(), 1);
            } catch (JSONException e) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.b("ToolStatsHelper", "reportExgIsModify failed.", e);
                }
            }
        }
    }
}
