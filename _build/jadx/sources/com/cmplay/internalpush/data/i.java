package com.cmplay.internalpush.data;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: InfoForShowSetting.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i extends d {

    /* renamed from: a, reason: collision with root package name */
    private String f1448a;

    /* renamed from: b, reason: collision with root package name */
    private String f1449b;
    private String c;
    private int d;
    private int e;
    private String r;
    private String s;

    public i(long j, String str, String str2, String str3, String str4, String str5, String str6, int i, int i2, int i3, String str7, boolean z, String str8, long j2) {
        this.f = j;
        this.h = str;
        this.g = str2;
        this.f1448a = str3;
        this.f1449b = str4;
        this.c = str5;
        this.s = str6;
        this.d = i;
        this.e = i2;
        this.j = i3;
        this.i = str7;
        this.r = String.valueOf(z ? 1 : 0);
        this.q = str8;
        this.o = j2;
    }

    public i(String str) {
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
                    this.f1448a = jSONObject.getString("icon_image_path");
                }
                if (!jSONObject.isNull("title")) {
                    this.f1449b = jSONObject.getString("title");
                }
                if (!jSONObject.isNull(FacebookAdapter.KEY_SUBTITLE_ASSET)) {
                    this.c = jSONObject.getString(FacebookAdapter.KEY_SUBTITLE_ASSET);
                }
                if (!jSONObject.isNull("button_txt")) {
                    this.s = jSONObject.getString("button_txt");
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
                if (!jSONObject.isNull("show_red_dot_setting_card")) {
                    this.r = jSONObject.getString("show_red_dot_setting_card");
                }
                if (!jSONObject.isNull("default_jump_url")) {
                    this.q = jSONObject.getString("default_jump_url");
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
            jSONObject.put("icon_image_path", this.f1448a);
            jSONObject.put("title", this.f1449b);
            jSONObject.put(FacebookAdapter.KEY_SUBTITLE_ASSET, this.c);
            jSONObject.put("button_txt", this.s);
            jSONObject.put("pro_type", this.d);
            jSONObject.put("reward_counts", this.e);
            jSONObject.put("jump_type", this.j);
            jSONObject.put("jump_url", this.i);
            jSONObject.put("show_red_dot_setting_card", this.r);
            jSONObject.put("default_jump_url", this.q);
            jSONObject.put("priority", this.o);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }
}
