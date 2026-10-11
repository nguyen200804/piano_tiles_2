package com.cmplay.internalpush.data;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: InfoForShowInsertScreen.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f extends d {

    /* renamed from: a, reason: collision with root package name */
    private String f1442a;

    /* renamed from: b, reason: collision with root package name */
    private String f1443b;
    private double c;

    public f(long j, String str, String str2, String str3, String str4, int i, String str5, double d, ArrayList<com.cmplay.base.util.b> arrayList, int i2, String str6, long j2) {
        this.f = j;
        this.h = str;
        this.g = str2;
        this.f1442a = str3;
        this.f1443b = str4;
        this.j = i;
        this.i = str5;
        this.c = d;
        this.p.addAll(arrayList);
        this.n = i2;
        this.q = str6;
        this.o = j2;
    }

    public f(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.f = jSONObject.optLong("pro_id");
                this.h = jSONObject.optString("pkg_name");
                this.g = jSONObject.optString("pro_name");
                this.f1442a = jSONObject.optString("bg_image_path");
                this.f1443b = jSONObject.optString("btn_image_path");
                this.j = jSONObject.optInt("jump_type");
                this.i = jSONObject.optString("jump_url");
                this.c = jSONObject.optDouble("btn_layout_percentage");
                this.q = jSONObject.optString("default_jump_url");
                String optString = jSONObject.optString("appstore");
                if (!TextUtils.isEmpty(optString)) {
                    JSONArray jSONArray = new JSONArray(optString);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        this.p.add(new com.cmplay.base.util.b(jSONObject2.optString("app_pkg_in_appstore"), jSONObject2.optString("market_pkg")));
                    }
                }
                this.n = jSONObject.optInt("display_type");
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
            jSONObject.put("bg_image_path", this.f1442a);
            jSONObject.put("btn_image_path", this.f1443b);
            jSONObject.put("jump_type", this.j);
            jSONObject.put("jump_url", this.i);
            jSONObject.put("btn_layout_percentage", this.c);
            jSONObject.put("default_jump_url", this.q);
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
            jSONObject.put("priority", this.o);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public String o() {
        return this.f1442a;
    }

    public String p() {
        return this.f1443b;
    }

    public double q() {
        return this.c;
    }
}
