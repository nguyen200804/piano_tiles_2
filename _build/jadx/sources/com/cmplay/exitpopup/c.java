package com.cmplay.exitpopup;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: InfoForShowExitGame.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends com.cmplay.internalpush.data.d {

    /* renamed from: a, reason: collision with root package name */
    public String f1351a;

    /* renamed from: b, reason: collision with root package name */
    public String f1352b;
    public String c;
    public String d;
    public String e;
    private int r;
    private int s;

    public c(long j, String str, String str2, String str3, String str4, String str5, String str6, int i, int i2, int i3, String str7, String str8, long j2) {
        this.f = j;
        this.h = str;
        this.g = str2;
        this.f1351a = str3;
        this.f1352b = str4;
        this.c = str5;
        this.d = str6;
        this.r = i;
        this.s = i2;
        this.j = i3;
        this.i = str7;
        this.e = str8;
        this.o = j2;
    }

    public c(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
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
                    this.f1351a = jSONObject.getString("icon_image_path");
                }
                if (!jSONObject.isNull("bg_image_path")) {
                    this.f1352b = jSONObject.getString("bg_image_path");
                }
                if (!jSONObject.isNull("title")) {
                    this.c = jSONObject.getString("title");
                }
                if (!jSONObject.isNull(FacebookAdapter.KEY_SUBTITLE_ASSET)) {
                    this.d = jSONObject.getString(FacebookAdapter.KEY_SUBTITLE_ASSET);
                }
                if (!jSONObject.isNull("pro_type")) {
                    this.r = jSONObject.getInt("pro_type");
                }
                if (!jSONObject.isNull("reward_counts")) {
                    this.s = jSONObject.getInt("reward_counts");
                }
                if (!jSONObject.isNull("jump_type")) {
                    this.j = jSONObject.getInt("jump_type");
                }
                if (!jSONObject.isNull("jump_url")) {
                    this.i = jSONObject.getString("jump_url");
                }
                if (!jSONObject.isNull("button_txt")) {
                    this.e = jSONObject.getString("button_txt");
                }
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
            jSONObject.put("icon_image_path", this.f1351a);
            jSONObject.put("bg_image_path", this.f1352b);
            jSONObject.put("title", this.c);
            jSONObject.put(FacebookAdapter.KEY_SUBTITLE_ASSET, this.d);
            jSONObject.put("pro_type", this.r);
            jSONObject.put("reward_counts", this.s);
            jSONObject.put("jump_type", this.j);
            jSONObject.put("jump_url", this.i);
            jSONObject.put("button_txt", this.e);
            jSONObject.put("priority", this.o);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }
}
