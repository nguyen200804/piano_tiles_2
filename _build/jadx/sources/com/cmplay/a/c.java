package com.cmplay.a;

import android.app.Activity;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventTypes;
import com.cmplay.util.NativeUtil;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: LoginMgr.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static c f1140a = null;

    /* renamed from: b, reason: collision with root package name */
    private List<d> f1141b = new ArrayList();
    private List<d> c = new ArrayList();

    private c() {
    }

    public static c a() {
        if (f1140a == null) {
            synchronized (c.class) {
                if (f1140a == null) {
                    f1140a = new c();
                }
            }
        }
        return f1140a;
    }

    private com.cmplay.sharebase.b g(int i) {
        switch (i) {
            case 1:
                return a.a();
            case 4:
                return b.a();
            case 1001:
            default:
                return null;
        }
    }

    public void a(Activity activity, int i) {
        com.cmplay.sharebase.b g = g(i);
        if (g != null) {
            g.a(activity);
        }
    }

    public void a(int i) {
        com.cmplay.sharebase.b g = g(i);
        if (g != null) {
            g.b();
        }
    }

    public boolean b(int i) {
        com.cmplay.sharebase.b g = g(i);
        if (g != null) {
            return g.c();
        }
        return false;
    }

    public String c(int i) {
        com.cmplay.sharebase.b g = g(i);
        if (g != null) {
            return g.e();
        }
        return null;
    }

    public void d(int i) {
        com.cmplay.sharebase.b g = g(i);
        if (g != null) {
            if (4 == i) {
                b.f1138a = 2;
            }
            g.g();
        }
    }

    public void e(int i) {
        com.cmplay.sharebase.b g = g(i);
        if (g != null) {
            g.h();
        }
    }

    public void f(int i) {
        com.cmplay.sharebase.b g = g(i);
        if (g != null) {
            g.i();
        }
    }

    public String a(String str) {
        return a.a().a(str);
    }

    public String b(String str) {
        return a.a().b(str);
    }

    public boolean b() {
        return a.a().f();
    }

    public e c() {
        try {
            JSONObject jSONObject = new JSONObject(NativeUtil.getPlayerInfo());
            if (!jSONObject.isNull("data")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                return new e(jSONObject2.getString(FacebookAdapter.KEY_ID), jSONObject2.getString(MediationMetaData.KEY_NAME));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<d> c(String str) {
        this.f1141b.clear();
        if (TextUtils.isEmpty(str)) {
            return this.f1141b;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull("rank_list")) {
                JSONArray jSONArray = jSONObject.getJSONArray("rank_list");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    d dVar = new d();
                    if (!jSONObject2.isNull("fbid")) {
                        dVar.f1142a = jSONObject2.getString("fbid");
                    }
                    if (!jSONObject2.isNull("nickname")) {
                        dVar.f1143b = jSONObject2.getString("nickname");
                    }
                    if (!jSONObject2.isNull("crown")) {
                        dVar.c = jSONObject2.getInt("crown");
                    }
                    if (!jSONObject2.isNull("star")) {
                        dVar.d = jSONObject2.getInt("star");
                    }
                    if (!jSONObject2.isNull(AppLovinEventTypes.USER_COMPLETED_LEVEL)) {
                        dVar.e = jSONObject2.getInt(AppLovinEventTypes.USER_COMPLETED_LEVEL);
                    }
                    dVar.f = b(dVar.f1142a);
                    this.f1141b.add(dVar);
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return this.f1141b;
    }

    public List<d> d(String str) {
        this.c.clear();
        if (TextUtils.isEmpty(str)) {
            return this.c;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull("rank_list")) {
                JSONArray jSONArray = jSONObject.getJSONArray("rank_list");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    d dVar = new d();
                    if (!jSONObject2.isNull("fbid")) {
                        dVar.f1142a = jSONObject2.getString("fbid");
                    }
                    if (!jSONObject2.isNull("nickname")) {
                        dVar.f1143b = jSONObject2.getString("nickname");
                    }
                    if (!jSONObject2.isNull("star")) {
                        dVar.d = jSONObject2.getInt("star");
                    }
                    if (!jSONObject2.isNull("score")) {
                        dVar.g = jSONObject2.getInt("score");
                    }
                    if (!jSONObject2.isNull(AppLovinEventTypes.USER_COMPLETED_LEVEL)) {
                        dVar.e = jSONObject2.getInt(AppLovinEventTypes.USER_COMPLETED_LEVEL);
                    }
                    dVar.f = b(dVar.f1142a);
                    this.c.add(dVar);
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return this.c;
    }

    public int a(String str, List<d> list) {
        if (TextUtils.isEmpty(str) || list == null || list.isEmpty()) {
            return -1;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(list.get(i).f1142a)) {
                return i;
            }
        }
        return -1;
    }

    public List<d> b(String str, List<d> list) {
        ArrayList arrayList = new ArrayList();
        int a2 = a().a(str, list);
        int size = list.size();
        if (a2 >= 0) {
            if (a2 == 0) {
                for (int i = 0; i < 3; i++) {
                    if (size > i) {
                        arrayList.add(list.get(i));
                    }
                }
            } else if (a2 == size - 1) {
                for (int i2 = size - 3; i2 < size; i2++) {
                    if (i2 >= 0 && size > i2) {
                        arrayList.add(list.get(i2));
                    }
                }
            } else {
                for (int i3 = a2 - 1; i3 < a2 + 2; i3++) {
                    if (i3 >= 0 && size > i3) {
                        arrayList.add(list.get(i3));
                    }
                }
            }
        }
        return arrayList;
    }

    public List<d> d() {
        return this.f1141b;
    }

    public List<d> e() {
        return this.c;
    }
}
