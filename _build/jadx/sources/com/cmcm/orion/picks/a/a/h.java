package com.cmcm.orion.picks.a.a;

import android.text.TextUtils;
import com.mopub.mobileads.VastIconXmlManager;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MarketConfig.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class h {
    private static int d;
    private static Map<String, Long> e;
    private static Map<String, Long> f;
    private static Map<String, Integer> g;
    private static Map<String, Integer> h;

    /* renamed from: a, reason: collision with root package name */
    public static boolean f839a = false;
    private static n c = new n("market_config");
    private static String i = null;

    /* renamed from: b, reason: collision with root package name */
    public static String f840b = "http://221.228.204.186/rp/";

    private static int i(String str) {
        if (TextUtils.isEmpty(str) || !TextUtils.isDigitsOnly(str)) {
            return -1;
        }
        return Integer.parseInt(str);
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("cm_softer_cache_time", "");
            d = i(optString);
            c.a("cache_time", optString);
            c.a("request_url", jSONObject.optString("request_url"));
            c.a("req_timeout_ms", jSONObject.optString("req_timeout_ms"));
            c.a("key_app_installation_tracker_expire_time", jSONObject.optString("cache_install_time"));
            c.a("key_report_ad_shown", jSONObject.optInt("report_ad_in_shown_list"));
            c.a("key_report_ad_server", jSONObject.optInt("report_ad_from_server"));
            c.a("key_report_ad_installed", jSONObject.optInt("report_ad_installed"));
            c.a("key_report_ad_download", jSONObject.optInt("report_ad_download"));
            c.a("key_super_report_priority", jSONObject.optString("super_report_priority"));
            c.a("key_x_request_url", jSONObject.optString("report_ad_key"));
            String optString2 = jSONObject.optString("https_request_url", "");
            if (!TextUtils.isEmpty(optString2)) {
                URI uri = new URI(optString2);
                String scheme = uri.getScheme();
                String host = uri.getHost();
                if (!TextUtils.isEmpty(scheme)) {
                    c.a("scheme", scheme);
                }
                if (!TextUtils.isEmpty(host)) {
                    c.a("host", host);
                }
                c.a("https_request_url", optString2);
            }
            String optString3 = jSONObject.optString("https_report_url", "");
            if (!TextUtils.isEmpty(optString3)) {
                c.a("https_report_url", optString3);
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("pos_cache");
            if (e == null) {
                e = new HashMap();
            }
            if (optJSONArray != null) {
                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                    String valueOf = String.valueOf(optJSONObject.getLong("posid"));
                    long j = optJSONObject.getInt("cache_time");
                    e.put(valueOf, Long.valueOf(j));
                    c.a(valueOf + "_posid_expire_time", j);
                }
            }
            JSONArray optJSONArray2 = jSONObject.optJSONArray("ad_request_interval");
            if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                if (f == null) {
                    f = new HashMap();
                }
                if (optJSONArray2 != null) {
                    for (int i3 = 0; i3 < optJSONArray2.length(); i3++) {
                        JSONObject optJSONObject2 = optJSONArray2.optJSONObject(i3);
                        String valueOf2 = String.valueOf(optJSONObject2.getLong("posid"));
                        long j2 = optJSONObject2.getInt("time");
                        f.put(valueOf2, Long.valueOf(j2));
                        c.a(valueOf2 + "_posid_request_interval", j2);
                    }
                }
            }
            JSONArray optJSONArray3 = jSONObject.optJSONArray("ad_show_frequency");
            if (optJSONArray3 != null && optJSONArray3.length() > 0) {
                if (g == null) {
                    g = new HashMap();
                }
                for (int i4 = 0; i4 < optJSONArray3.length(); i4++) {
                    JSONObject optJSONObject3 = optJSONArray3.optJSONObject(i4);
                    if (optJSONObject3 != null) {
                        String optString4 = optJSONObject3.optString("posid");
                        int optInt = optJSONObject3.optInt("number");
                        if (!TextUtils.isEmpty(optString4)) {
                            g.put(optString4, Integer.valueOf(optInt));
                            c.a(optString4 + "_posid_ad_show_frequency", optInt);
                        }
                    }
                }
            }
            JSONArray optJSONArray4 = jSONObject.optJSONArray("ad_skip_frequency");
            if (optJSONArray4 != null && optJSONArray4.length() > 0) {
                if (h == null) {
                    h = new HashMap();
                }
                for (int i5 = 0; i5 < optJSONArray4.length(); i5++) {
                    JSONObject optJSONObject4 = optJSONArray4.optJSONObject(i5);
                    if (optJSONObject4 != null) {
                        String optString5 = optJSONObject4.optString("posid");
                        int optInt2 = optJSONObject4.optInt("number");
                        if (!TextUtils.isEmpty(optString5)) {
                            h.put(optString5, Integer.valueOf(optInt2));
                            c.a(optString5 + "_posid_ad_skip_frequency", optInt2);
                        }
                    }
                }
            }
            JSONObject optJSONObject5 = jSONObject.optJSONObject("rimp");
            if (optJSONObject5 != null) {
                int optInt3 = optJSONObject5.optInt("second");
                int optInt4 = optJSONObject5.optInt(VastIconXmlManager.HEIGHT);
                c.a("impression_delayed_second", optInt3 * 1000);
                c.a("impression_height", optInt4);
            }
            JSONArray optJSONArray5 = jSONObject.optJSONArray("cpos");
            if (optJSONArray5 != null) {
                c.a("closed_pos_id_list", optJSONArray5.toString());
            } else {
                c.a("closed_pos_id_list", "");
            }
            JSONObject optJSONObject6 = jSONObject.optJSONObject("report");
            if (optJSONObject6 != null) {
                String optString6 = optJSONObject6.optString("gaid");
                String optString7 = optJSONObject6.optString("posid");
                String optString8 = optJSONObject6.optString("country");
                c.a("ad_gaid_report_lists", optString6);
                c.a("ad_posid_report_lists", optString7);
                c.a("ad_country_report_lists", optString8);
            }
            return true;
        } catch (Exception e2) {
            new StringBuilder("saveFromJson: ").append(e2.getMessage());
            return false;
        }
    }

    public static ArrayList<String> a() {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            JSONArray jSONArray = new JSONArray(c.b("closed_pos_id_list", "[]"));
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                arrayList.add(jSONArray.optString(i2));
            }
        } catch (JSONException e2) {
        }
        return arrayList;
    }

    public static String b() {
        return c.b("scheme", "");
    }

    public static long c(String str) {
        if (TextUtils.isEmpty(str)) {
            return 3600L;
        }
        if (e != null && e.size() != 0) {
            Long l = e.get(str);
            return b(str, l != null ? l.longValue() * 1000 : 0L);
        }
        return b(str, c.b(str + "_posid_expire_time", 0L) * 1000);
    }

    private static long b(String str, long j) {
        if (j <= 0) {
            j = c.b(String.valueOf(str) + "_posid_expire_def_time", 3600L) * 1000;
            if (j <= 0) {
                if (d < 1800) {
                    int i2 = i(c.b("cache_time", ""));
                    d = i2;
                    if (i2 < 1800) {
                        d = 3600;
                    }
                }
                j = d * 1000;
            }
        }
        return Math.max(c.b(str + "_posid_expire_min_time", 1800L) * 1000, j);
    }

    public static void d(String str) {
        if (!TextUtils.isEmpty(str) && 3600 >= 1800) {
            String str2 = str + "_posid_expire_def_time";
            if (c.b(str2, 3600L) != 3600) {
                c.a(str2, 3600L);
            }
        }
    }

    public static boolean e(String str) {
        if (System.currentTimeMillis() - c.b(str, 0L) <= 86400000) {
            return false;
        }
        c.a(str, System.currentTimeMillis());
        return true;
    }

    public static String c() {
        return c.b("advertising_id", "");
    }

    public static void f(String str) {
        c.a("advertising_id", str);
    }

    public static String d() {
        if (!TextUtils.isEmpty(i)) {
            return i;
        }
        com.cmcm.orion.utils.e.b(new Runnable() { // from class: com.cmcm.orion.picks.a.a.h.1
            @Override // java.lang.Runnable
            public final void run() {
                h.e();
            }
        });
        return System.getProperties().getProperty("http.agent");
    }

    public static void e() {
        if (i == null) {
            try {
                String b2 = c.b("uer_agent", "");
                i = b2;
                if (TextUtils.isEmpty(b2)) {
                    i = com.cmcm.orion.picks.webview.a.a(com.cmcm.orion.adsdk.e.a());
                    c.a("uer_agent", i);
                }
            } catch (Exception e2) {
            }
            if (TextUtils.isEmpty(i)) {
                i = System.getProperties().getProperty("http.agent");
            }
        }
    }

    public static String f() {
        return f839a ? "52.35.247.178" : "ssdk.adkmob.com";
    }

    public static String g() {
        return f839a ? "/test_sdk/" : "/b/";
    }

    public static String h() {
        return f839a ? "52.35.247.178" : "bp.adkmob.com";
    }

    public static String i() {
        return f839a ? "/test_config/" : "/b/";
    }

    public static String j() {
        return f839a ? "http://52.35.247.178/rp/" : "https://ssdk.adkmob.com/rp/";
    }

    public static void a(String str, String str2) {
        c.a(str, str2);
    }

    public static String b(String str, String str2) {
        return c.b(str, str2);
    }

    public static void a(String str, long j) {
        c.a(str, j);
    }

    public static long g(String str) {
        return c.b(str, 0L);
    }

    public static long k() {
        long j;
        try {
            j = Long.valueOf(c.b("key_app_installation_tracker_expire_time", "")).longValue();
        } catch (Exception e2) {
            j = 604800;
        }
        return j * 1000;
    }

    public static boolean l() {
        return true;
    }

    public static boolean m() {
        return new Random().nextInt(100) < c.a("key_report_ad_server");
    }

    public static boolean n() {
        return c.a("key_report_ad_installed") == 1;
    }

    public static boolean o() {
        return c.a("key_report_ad_download") == 1;
    }

    public static String p() {
        return c.b("key_x_request_url", "");
    }

    public static String q() {
        return c.b("key_mid", "");
    }

    public static void h(String str) {
        c.a("key_mid", str);
    }

    public static boolean b(String str) {
        String str2 = null;
        String b2 = c.b("ad_gaid_report_lists", (String) null);
        String b3 = c.b("ad_posid_report_lists", (String) null);
        String b4 = c.b("ad_country_report_lists", (String) null);
        if (TextUtils.isEmpty(b2) && TextUtils.isEmpty(b3) && TextUtils.isEmpty(b4)) {
            return false;
        }
        String a2 = com.cmcm.orion.utils.internal.a.a.c().a();
        if (a2 != null && !a2.isEmpty()) {
            str2 = a2.substring(a2.length() - 1);
        }
        String d2 = com.cmcm.orion.utils.b.d(com.cmcm.orion.adsdk.e.a());
        if (!TextUtils.isEmpty(b2) && !TextUtils.isEmpty(b3) && !TextUtils.isEmpty(str2)) {
            return !TextUtils.isEmpty(d2) && b2.contains(str2) && b3.contains(str) && b4.contains(d2);
        }
        if (TextUtils.isEmpty(b2) && !TextUtils.isEmpty(b3) && !TextUtils.isEmpty(b4)) {
            return !TextUtils.isEmpty(d2) && b3.contains(str) && b4.contains(d2);
        }
        if (!TextUtils.isEmpty(b2) && TextUtils.isEmpty(b3) && !TextUtils.isEmpty(b4)) {
            return !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(d2) && b2.contains(str2) && b4.contains(d2);
        }
        if (!TextUtils.isEmpty(b2) && !TextUtils.isEmpty(b3) && TextUtils.isEmpty(b4)) {
            return !TextUtils.isEmpty(str2) && b2.contains(str2) && b3.contains(str);
        }
        if (TextUtils.isEmpty(b2) && TextUtils.isEmpty(b3) && !TextUtils.isEmpty(b4)) {
            return !TextUtils.isEmpty(d2) && b4.contains(d2);
        }
        if (TextUtils.isEmpty(b2) && !TextUtils.isEmpty(b3) && TextUtils.isEmpty(b4)) {
            return b3.contains(str);
        }
        if (!TextUtils.isEmpty(b2) && TextUtils.isEmpty(b3) && TextUtils.isEmpty(b4)) {
            return !TextUtils.isEmpty(str2) && b2.contains(str2);
        }
        return false;
    }
}
