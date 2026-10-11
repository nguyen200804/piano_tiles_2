package com.cmplay.b;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AppCard.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public int f1169a;

    /* renamed from: b, reason: collision with root package name */
    public int f1170b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public String h;
    public String i;
    public String j;
    public String k;
    public String l;
    public String m;
    public int n;
    public String o;
    public JSONObject p;

    public a(JSONObject jSONObject) {
        this.f1169a = jSONObject.optInt("card_id");
        this.f1170b = jSONObject.optInt("priority");
        this.c = jSONObject.optInt("scene_type");
        this.d = jSONObject.optInt("reward_counts");
        this.e = jSONObject.optInt("continue_show_max");
        this.g = jSONObject.optInt("total_show_max");
        this.h = jSONObject.optString("pkg");
        this.i = jSONObject.optString("image_url");
        this.j = jSONObject.optString("title");
        this.k = jSONObject.optString(FacebookAdapter.KEY_SUBTITLE_ASSET);
        this.l = jSONObject.optString("button_txt");
        this.m = jSONObject.optString("url");
        this.n = jSONObject.optInt("jumpType");
        this.o = jSONObject.optString("image_path");
        this.f = jSONObject.optInt("interval_show");
        this.p = jSONObject;
    }

    public a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f1169a = jSONObject.optInt("card_id");
            this.f1170b = jSONObject.optInt("priority");
            this.c = jSONObject.optInt("scene_type");
            this.d = jSONObject.optInt("reward_counts");
            this.e = jSONObject.optInt("continue_show_max");
            this.g = jSONObject.optInt("total_show_max");
            this.f = jSONObject.optInt("interval_show");
            this.h = jSONObject.optString("pkg");
            this.i = jSONObject.optString("image_url");
            this.j = jSONObject.optString("title");
            this.k = jSONObject.optString(FacebookAdapter.KEY_SUBTITLE_ASSET);
            this.l = jSONObject.optString("button_txt");
            this.m = jSONObject.optString("url");
            this.n = jSONObject.optInt("jumpType");
            this.o = jSONObject.optString("image_path");
            this.p = jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("card_id", this.f1169a);
            jSONObject.put("priority", this.f1170b);
            jSONObject.put("scene_type", this.c);
            jSONObject.put("reward_counts", this.d);
            jSONObject.put("continue_show_max", this.e);
            jSONObject.put("total_show_max", this.g);
            jSONObject.put("interval_show", this.f);
            jSONObject.put("pkg", this.h);
            jSONObject.put("image_url", this.i);
            jSONObject.put("title", this.j);
            jSONObject.put(FacebookAdapter.KEY_SUBTITLE_ASSET, this.k);
            jSONObject.put("button_txt", this.l);
            jSONObject.put("url", this.m);
            jSONObject.put("jumpType", this.n);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public String b() {
        String jSONObject;
        try {
            if (TextUtils.isEmpty(this.i)) {
                jSONObject = this.p.toString();
            } else {
                this.p.put("image_path", c.b(this.i));
                jSONObject = this.p.toString();
            }
            return jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return "";
        }
    }
}
