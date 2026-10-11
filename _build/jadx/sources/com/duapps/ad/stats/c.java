package com.duapps.ad.stats;

import android.content.Context;
import com.cmplay.base.util.webview.util.WebUtils;
import com.duapps.ad.base.m;
import com.duapps.ad.entity.AdData;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.mobileads.VastExtensionXmlManager;
import org.json.JSONException;
import org.json.JSONStringer;

/* compiled from: StatsReportHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {
    public static void a(Context context, int i, int i2, long j) {
        if (3 <= m.j(context)) {
            try {
                a.b(context).a("behavior", new JSONStringer().object().key("key").value("fbe").key("sid").value(i).key(WebUtils.CO).value(i2).key("tsi").value(j).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
            } catch (JSONException e) {
            }
        }
    }

    public static void a(Context context, String str, int i) {
        if (2 <= m.j(context)) {
            a(context, "fbgr", str, i);
        }
    }

    private static void a(Context context, String str, String str2, int i) {
        try {
            a.b(context).a("behavior", new JSONStringer().object().key("key").value(str).key("sid").value(i).key("st").value(str2).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
        } catch (JSONException e) {
        }
    }

    public static void b(Context context, int i, int i2, long j) {
        a(context, i, i2, j, "dle");
    }

    public static void c(Context context, int i, int i2, long j) {
        a(context, i, i2, j, "ime");
    }

    public static void d(Context context, int i, int i2, long j) {
        a(context, i, i2, j, "ole");
    }

    public static void e(Context context, int i, int i2, long j) {
        a(context, i, i2, j, "ame");
    }

    private static void a(Context context, int i, int i2, long j, String str) {
        if (3 <= m.j(context)) {
            try {
                a.b(context).a("behavior", new JSONStringer().object().key("key").value(str).key("sid").value(i).key(WebUtils.CO).value(i2).key("tsi").value(j).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
            } catch (JSONException e) {
            }
        }
    }

    public static void a(Context context, AdData adData, int i) {
        a(context, adData, i, "irc");
    }

    private static void a(Context context, AdData adData, int i, String str) {
        if (3 <= m.j(context)) {
            try {
                a.b(context).a("behavior", new JSONStringer().object().key("key").value(str).key(FacebookAdapter.KEY_ID).value(adData.f2122b).key("sid").value(adData.y).key(WebUtils.CO).value(i).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
            } catch (JSONException e) {
            }
        }
    }

    public static void b(Context context, String str, int i) {
        b(context, "dlgr", str, i);
    }

    public static void c(Context context, String str, int i) {
        b(context, "amgr", str, i);
    }

    public static void d(Context context, String str, int i) {
        b(context, "imgr", str, i);
    }

    public static void e(Context context, String str, int i) {
        b(context, "olgr", str, i);
    }

    private static void b(Context context, String str, String str2, int i) {
        if (2 <= m.j(context)) {
            try {
                a.b(context).a("behavior", new JSONStringer().object().key("key").value(str).key("st").value(str2).key("sid").value(i).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
            } catch (JSONException e) {
            }
        }
    }

    public static void a(Context context, int i) {
        if (2 <= m.j(context)) {
            b(context, "dln", Integer.toString(0), i);
        }
    }

    public static void b(Context context, int i) {
        b(context, "imn", Integer.toString(0), i);
    }

    public static void c(Context context, int i) {
        b(context, "oln", Integer.toString(0), i);
    }

    public static void a(Context context, int i, long j) {
        if (3 <= m.j(context)) {
            try {
                a.b(context).a("behavior", new JSONStringer().object().key("key").value("srce").key(WebUtils.CO).value(i).key("tsi").value(j).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
            } catch (JSONException e) {
            }
        }
    }

    public static void b(Context context, int i, long j) {
        if (1 <= m.j(context)) {
            try {
                a.b(context).a("behavior", new JSONStringer().object().key("key").value("owcu").key("sid").value(i).key("ts").value(System.currentTimeMillis()).key("tsi").value(j).key("itype").value("offerwall").endObject().toString(), 0);
            } catch (Exception e) {
            }
        }
    }

    public static void a(Context context, int i, int i2) {
        if (1 <= m.j(context)) {
            try {
                a.b(context).a("behavior", new JSONStringer().object().key("key").value("ow2show").key("sid").value(i).key(WebUtils.CO).value(i2).key("ts").value(System.currentTimeMillis()).endObject().toString(), 0);
            } catch (JSONException e) {
            }
        }
    }

    public static void a(Context context, int i, long j, int i2) {
        a(context, i, "owrf", j, i2);
    }

    public static void c(Context context, int i, long j) {
        a(context, i, "owrs", j);
    }

    public static void b(Context context, int i, long j, int i2) {
        a(context, i, "owgf", j, i2);
    }

    public static void d(Context context, int i, long j) {
        a(context, i, "owgs", j);
    }

    public static void c(Context context, int i, long j, int i2) {
        a(context, i, "owaf", j, i2);
    }

    public static void e(Context context, int i, long j) {
        a(context, i, "owas", j);
    }

    public static void a(Context context, int i, String str, long j) {
        a(context, i, str, j, -1);
    }

    public static void a(Context context, int i, String str, long j, int i2) {
        if (1 <= m.j(context)) {
            a b2 = a.b(context);
            try {
                JSONStringer value = new JSONStringer().object().key("key").value(str).key("sid").value(i).key("tsi").value(j).key("ts").value(System.currentTimeMillis());
                if (i2 > 0) {
                    value.key(WebUtils.CO).value(i2);
                }
                value.endObject();
                b2.a("behavior", value.toString(), 0);
            } catch (JSONException e) {
            }
        }
    }

    public static void f(Context context, String str, int i) {
        if (2 <= m.j(context)) {
            b(context, "dlhgr", str, i);
        }
    }

    public static void d(Context context, int i) {
        if (2 <= m.j(context)) {
            b(context, "dlhn", Integer.toString(0), i);
        }
    }

    public static void f(Context context, int i, int i2, long j) {
        a(context, i, i2, j, "dlhe");
    }

    public static void a(Context context, String str, boolean z, String str2, boolean z2) {
        if (3 <= m.j(context)) {
            try {
                a.b(context).a("behavior", new JSONStringer().object().key("key").value("tdm").key("ts").value(System.currentTimeMillis()).key("pkg_name").value(str).key(WebUtils.CO).value(z ? -1L : 1L).key("dl_pkg").value(str2).key("sco").value(z2 ? 1L : -1L).endObject().toString(), 1);
            } catch (JSONException e) {
            }
        }
    }

    public static void a(Context context, int i, String str) {
        if (3 <= m.j(context)) {
            try {
                a.b(context).a("behavior", new JSONStringer().object().key("key").value("tfe").key("ts").value(System.currentTimeMillis()).key("result").value(i).key("pkg_name").value(str).endObject().toString(), 1);
            } catch (JSONException e) {
            }
        }
    }

    public static void b(Context context, int i, String str) {
        if (4 <= m.j(context)) {
            try {
                a.b(context).a("behavior", new JSONStringer().object().key("key").value("efe").key("ts").value(System.currentTimeMillis()).key("reason").value(str).key(VastExtensionXmlManager.TYPE).value(i).endObject().toString(), 1);
            } catch (JSONException e) {
            }
        }
    }

    public static void a(Context context, f fVar, String str, String str2) {
        if (4 <= m.j(context)) {
            try {
                a.b(context).a("behavior", new JSONStringer().object().key("key").value("gp_url_info").key("ts").value(System.currentTimeMillis()).key("pkg_name").value(com.duapps.ad.c.b.c.a(fVar.a())).key("logId").value(fVar.l()).key(FacebookAdapter.KEY_ID).value(fVar.b()).key("sid").value(fVar.j()).key("result_url").value(str).key("redirect_url").value(str2).key("directgp").value(fVar.o()).endObject().toString(), 1);
            } catch (JSONException e) {
            }
        }
    }
}
