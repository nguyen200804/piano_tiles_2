package com.cmplay.internalpush.data;

import android.text.TextUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: InfoForShow.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {
    protected long f;
    protected String g;
    protected String h;
    protected String i;
    protected int j;
    protected boolean k;
    protected String l;
    protected int m;
    protected int n;
    protected long o;
    protected ArrayList<com.cmplay.base.util.b> p = new ArrayList<>();
    protected String q;

    public boolean b() {
        return this.k;
    }

    public String c() {
        return this.q;
    }

    public long d() {
        return this.f;
    }

    public String e() {
        return this.g;
    }

    public String f() {
        return this.h;
    }

    public String g() {
        return this.i;
    }

    public int h() {
        return this.j;
    }

    public int i() {
        return this.n;
    }

    public ArrayList<com.cmplay.base.util.b> j() {
        return this.p;
    }

    public String k() {
        return this.l;
    }

    public int l() {
        return this.m;
    }

    public long m() {
        return this.o;
    }

    public boolean n() {
        return 999 == this.o;
    }

    public void a(String str) {
        if (str != null) {
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
                if (!jSONObject.isNull("jump_type")) {
                    this.j = jSONObject.getInt("jump_type");
                }
                if (!jSONObject.isNull("jump_url")) {
                    this.i = jSONObject.getString("jump_url");
                }
                if (!jSONObject.isNull("display_type")) {
                    this.n = jSONObject.getInt("display_type");
                }
                if (!jSONObject.isNull("priority")) {
                    this.o = jSONObject.getInt("priority");
                }
                if (!jSONObject.isNull("appstore")) {
                    String string = jSONObject.getString("appstore");
                    if (!TextUtils.isEmpty(string)) {
                        JSONArray jSONArray = new JSONArray(string);
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            this.p.add(new com.cmplay.base.util.b(jSONObject2.optString("app_pkg_in_appstore"), jSONObject2.optString("market_pkg")));
                        }
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }
}
