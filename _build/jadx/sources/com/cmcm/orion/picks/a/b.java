package com.cmcm.orion.picks.a;

import android.text.TextUtils;
import com.cmcm.orion.picks.a.a.f;
import com.cmcm.orion.picks.a.a.j;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: AdResponse.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private List<com.cmcm.orion.picks.a.a.a> f851a;

    /* renamed from: b, reason: collision with root package name */
    private int f852b;

    public b(int i) {
        this.f852b = i;
    }

    public b(List<com.cmcm.orion.picks.a.a.a> list) {
        this.f851a = list;
    }

    public final List<com.cmcm.orion.picks.a.a.a> a() {
        return this.f851a;
    }

    public final int b() {
        return this.f852b;
    }

    public static void a(String str, com.cmcm.orion.picks.a.a.a aVar, String str2, String str3, Map<String, String> map) {
        a(str, aVar, str2, str3, map, null, null, 0);
    }

    public static void a(String str, com.cmcm.orion.picks.a.a.a aVar, String str2, String str3, Map<String, String> map, String str4, String str5, int i) {
        f a2;
        if (aVar != null && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str) && (a2 = a(str, str3, str2, i, aVar.H())) != null) {
            if ("view".equals(str) || "click".equals(str)) {
                a2.a("click".equals(str) ? b(aVar) : 0);
            }
            a2.a(map);
            com.cmcm.orion.picks.a.a.e a3 = a(aVar);
            a3.a(str4, str5);
            try {
                com.cmcm.orion.utils.internal.b bVar = new com.cmcm.orion.utils.internal.b();
                bVar.a(a3, a2);
                bVar.a(null);
                com.cmcm.orion.utils.a.a(bVar, new Void[0]);
            } catch (Throwable th) {
            }
            if ("view".equals(str)) {
                a(aVar.c());
                a(str2, aVar, null);
                com.cmcm.orion.utils.internal.a.a();
            } else {
                if (!"click".equals(str)) {
                    return;
                }
                a(aVar.b());
                com.cmcm.orion.utils.internal.a.a().a(aVar, 0, false);
            }
        }
    }

    public static void a(String str, com.cmcm.orion.picks.a.a.a aVar, com.cmcm.orion.adsdk.a aVar2) {
        if (aVar != null) {
            if (aVar2 != null) {
                aVar.a(aVar2.c);
            } else {
                aVar.a(true);
            }
            String H = aVar.H();
            if (com.cmcm.orion.utils.b.f(H)) {
                str = str + "_" + H;
            }
            j.a().a(str, aVar);
            new StringBuilder("updateDatabases,thread name:").append(Thread.currentThread().getName()).append("ad title:").append(aVar.i());
        }
    }

    public static com.cmcm.orion.picks.a.a.e a(com.cmcm.orion.picks.a.a.a aVar) {
        return new com.cmcm.orion.picks.a.a.e(aVar.l(), aVar.q(), aVar.n(), -1, -1);
    }

    public static f a(String str, String str2, String str3, int i, String str4) {
        if (TextUtils.isEmpty(str2)) {
            str2 = null;
        }
        if ("view".equals(str)) {
            return f.a(str3, str4, 50).a(str2);
        }
        if ("click".equals(str)) {
            return f.a(str3, str4, 60).a(str2);
        }
        if ("detail_click".equals(str)) {
            return f.a(str3, str4, 61).a(str2);
        }
        if ("install_success".equals(str)) {
            return f.a(str3, str4, 38).a(str2);
        }
        if ("down_success".equals(str)) {
            return f.a(str3, str4, 36).a(str2);
        }
        if ("click_failed".equals(str)) {
            return f.a(str3, str4, 62).a(str2);
        }
        if ("vast_play".equals(str)) {
            return f.a(str3, str4, 54).a(str2);
        }
        if ("vast_click".equals(str)) {
            return f.a(str3, str4, 64).a(str2);
        }
        if ("mpa_show".equals(str)) {
            return f.a(str3, str4, i).a(str2);
        }
        if ("mpa_click".equals(str)) {
            return f.a(str3, str4, i).a(str2);
        }
        if ("vast_parse_start".equals(str)) {
            return f.a(str3, str4, 110).a(str2);
        }
        if ("vast_parse_end".equals(str)) {
            return f.a(str3, str4, 111).a(str2);
        }
        if ("jump_detail_page".equals(str)) {
            return f.a(str3, str4, 71).a(str2);
        }
        if ("detail_page_show".equals(str)) {
            return f.a(str3, str4, 51).a(str2);
        }
        if ("detail_page_close".equals(str)) {
            return f.a(str3, str4, 101).a(str2);
        }
        if ("url_redirected".equals(str)) {
            return f.a(str3, str4, 63).a(str2);
        }
        if ("world_install".equals(str)) {
            return f.a(str3, str4, 31).a(str2);
        }
        return null;
    }

    public static int b(com.cmcm.orion.picks.a.a.a aVar) {
        if (aVar != null && com.cmcm.orion.utils.b.a(com.cmcm.orion.adsdk.e.a(), aVar.l()) && aVar.u()) {
            return TextUtils.isEmpty(aVar.h()) ? 1 : 2;
        }
        return 0;
    }

    public static void a(String str) {
        if (!TextUtils.isEmpty(str) && !"null".equals(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        if (jSONObject != null) {
                            new com.cmcm.orion.utils.internal.d(jSONObject.optString("url"), new e()).a();
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
    }
}
