package com.cmplay.internalpush.data;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: InfoForShowOpenScreen.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g extends d {

    /* renamed from: a, reason: collision with root package name */
    private String f1444a;

    /* renamed from: b, reason: collision with root package name */
    private String f1445b;
    private String c;
    private String d;
    private String e;
    private String r;
    private double s;
    private boolean t;
    private String u;
    private int v;
    private int w;

    public g(long j, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i, String str9, double d, ArrayList<com.cmplay.base.util.b> arrayList, int i2, String str10, boolean z, String str11, int i3, int i4, int i5, String str12, boolean z2, long j2) {
        this.t = false;
        this.f = j;
        this.h = str;
        this.g = str2;
        this.f1444a = str3;
        this.f1445b = str4;
        this.c = str5;
        this.d = str6;
        this.e = str7;
        this.r = str8;
        this.j = i;
        this.i = str9;
        this.s = d;
        this.p.addAll(arrayList);
        this.n = i2;
        this.q = str10;
        this.t = z;
        this.u = str11;
        this.v = i3;
        this.w = i4;
        this.m = i5;
        this.l = str12;
        this.k = z2;
        this.o = j2;
    }

    public g(String str) {
        this.t = false;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.f = jSONObject.optLong("pro_id");
                this.h = jSONObject.optString("pkg_name");
                this.g = jSONObject.optString("pro_name");
                this.f1444a = jSONObject.optString("icon_image_path");
                this.f1445b = jSONObject.optString("title");
                this.c = jSONObject.optString(FacebookAdapter.KEY_SUBTITLE_ASSET);
                this.d = jSONObject.optString("bg_image_path");
                this.e = jSONObject.optString("btn_image_path");
                this.r = jSONObject.optString("btn_image_path2");
                this.j = jSONObject.optInt("jump_type");
                this.i = jSONObject.optString("jump_url");
                this.s = jSONObject.optDouble("btn_layout_percentage");
                this.q = jSONObject.optString("default_jump_url");
                this.m = jSONObject.optInt("show_type");
                this.l = jSONObject.optString("playable_url");
                this.k = jSONObject.optBoolean("button_moving");
                String optString = jSONObject.optString("appstore");
                if (!TextUtils.isEmpty(optString)) {
                    JSONArray jSONArray = new JSONArray(optString);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        this.p.add(new com.cmplay.base.util.b(jSONObject2.optString("app_pkg_in_appstore"), jSONObject2.optString("market_pkg")));
                    }
                }
                this.n = jSONObject.optInt("display_type");
                this.t = jSONObject.optBoolean("ad_tag_show");
                this.u = jSONObject.optString("video_path");
                this.v = jSONObject.optInt("video_width");
                this.w = jSONObject.optInt("video_height");
                this.o = jSONObject.optInt("priority");
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("pro_id", this.f);
            jSONObject.put("pkg_name", this.h);
            jSONObject.put("pro_name", this.g);
            jSONObject.put("icon_image_path", this.f1444a);
            jSONObject.put("title", this.f1445b);
            jSONObject.put(FacebookAdapter.KEY_SUBTITLE_ASSET, this.c);
            jSONObject.put("bg_image_path", this.d);
            jSONObject.put("btn_image_path", this.e);
            jSONObject.put("btn_image_path2", this.r);
            jSONObject.put("jump_type", this.j);
            jSONObject.put("jump_url", this.i);
            jSONObject.put("btn_layout_percentage", this.s);
            jSONObject.put("default_jump_url", this.q);
            jSONObject.put("button_moving", this.k);
            JSONArray jSONArray = new JSONArray();
            Iterator<com.cmplay.base.util.b> it = this.p.iterator();
            while (it.hasNext()) {
                com.cmplay.base.util.b next = it.next();
                if (next != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("app_pkg_in_appstore", next.f1212b);
                    jSONObject2.put("market_pkg", next.f1211a);
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("appstore", jSONArray);
            jSONObject.put("display_type", this.n);
            jSONObject.put("ad_tag_show", this.t);
            jSONObject.put("video_path", this.u);
            jSONObject.put("video_width", this.v);
            jSONObject.put("video_height", this.w);
            jSONObject.put("show_type", this.m);
            jSONObject.put("playable_url", this.l);
            jSONObject.put("priority", this.o);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public String o() {
        return this.f1444a;
    }

    public String p() {
        return this.f1445b;
    }

    public String q() {
        return this.d;
    }

    public String r() {
        return this.e;
    }

    public String s() {
        return this.r;
    }

    public double t() {
        return this.s;
    }

    public boolean u() {
        return this.t;
    }

    public String v() {
        return this.u;
    }
}
