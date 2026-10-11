package com.cmplay.internalpush.data;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: InfoForShowFamily.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e extends d {

    /* renamed from: a, reason: collision with root package name */
    private String f1440a;

    /* renamed from: b, reason: collision with root package name */
    private String f1441b;
    private String c;
    private int d;
    private int e;
    private String r;
    private String s;
    private String t;

    public e() {
    }

    public e(long j, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, int i2, int i3, String str8, boolean z, ArrayList<com.cmplay.base.util.b> arrayList, String str9, long j2) {
        this.f = j;
        this.h = str;
        this.g = str2;
        this.f1440a = str3;
        this.f1441b = str4;
        this.c = str5;
        this.d = i;
        this.e = i2;
        this.j = i3;
        this.i = str8;
        this.r = String.valueOf(z ? 1 : 0);
        this.p.addAll(arrayList);
        this.s = str6;
        this.t = str7;
        this.q = str9;
        this.o = j2;
    }

    public e(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                a(new JSONObject(str));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (!jSONObject.isNull("pro_id")) {
                    this.f = jSONObject.getLong("pro_id");
                }
                if (!jSONObject.isNull("pkg_name")) {
                    this.h = jSONObject.getString("pkg_name");
                }
                if (!jSONObject.isNull("pro_name")) {
                    this.g = jSONObject.getString("pro_name");
                }
                if (!jSONObject.isNull("icon_image_path")) {
                    this.f1440a = jSONObject.getString("icon_image_path");
                }
                if (!jSONObject.isNull("title")) {
                    this.f1441b = jSONObject.getString("title");
                }
                if (!jSONObject.isNull(FacebookAdapter.KEY_SUBTITLE_ASSET)) {
                    this.c = jSONObject.getString(FacebookAdapter.KEY_SUBTITLE_ASSET);
                }
                if (!jSONObject.isNull("button_txt")) {
                    this.s = jSONObject.getString("button_txt");
                }
                if (!jSONObject.isNull("button_txt2")) {
                    this.t = jSONObject.getString("button_txt2");
                }
                if (!jSONObject.isNull("pro_type")) {
                    this.d = jSONObject.getInt("pro_type");
                }
                if (!jSONObject.isNull("reward_counts")) {
                    this.e = jSONObject.getInt("reward_counts");
                }
                if (!jSONObject.isNull("jump_type")) {
                    this.j = jSONObject.getInt("jump_type");
                }
                if (!jSONObject.isNull("jump_url")) {
                    this.i = jSONObject.getString("jump_url");
                }
                if (!jSONObject.isNull("show_card_red_dot")) {
                    this.r = jSONObject.getString("show_card_red_dot");
                }
                if (!jSONObject.isNull("default_jump_url")) {
                    this.q = jSONObject.getString("default_jump_url");
                }
                this.o = jSONObject.optInt("priority");
                String optString = jSONObject.optString("appstore");
                if (!TextUtils.isEmpty(optString)) {
                    JSONArray jSONArray = new JSONArray(optString);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        this.p.add(new com.cmplay.base.util.b(jSONObject2.optString("app_pkg_in_appstore"), jSONObject2.optString("market_pkg")));
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("pro_id", this.f);
            jSONObject.put("pkg_name", this.h);
            jSONObject.put("pro_name", this.g);
            jSONObject.put("icon_image_path", this.f1440a);
            jSONObject.put("title", this.f1441b);
            jSONObject.put(FacebookAdapter.KEY_SUBTITLE_ASSET, this.c);
            jSONObject.put("button_txt", this.s);
            jSONObject.put("button_txt2", this.t);
            jSONObject.put("pro_type", this.d);
            jSONObject.put("reward_counts", this.e);
            jSONObject.put("jump_type", this.j);
            jSONObject.put("jump_url", this.i);
            jSONObject.put("show_card_red_dot", this.r);
            jSONObject.put("default_jump_url", this.q);
            jSONObject.put("priority", this.o);
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
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
