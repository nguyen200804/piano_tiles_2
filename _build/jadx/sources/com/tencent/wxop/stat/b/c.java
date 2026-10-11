package com.tencent.wxop.stat.b;

import com.cmplay.base.util.webview.util.WebUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c {
    private String W;

    /* renamed from: a, reason: collision with root package name */
    private String f4824a;

    /* renamed from: b, reason: collision with root package name */
    private String f4825b;
    private int bf;
    private String c;
    private int cu;
    private long cv;

    public c() {
        this.f4824a = null;
        this.f4825b = null;
        this.c = null;
        this.W = "0";
        this.bf = 0;
        this.cv = 0L;
    }

    public c(String str, String str2, int i) {
        this.f4824a = null;
        this.f4825b = null;
        this.c = null;
        this.W = "0";
        this.bf = 0;
        this.cv = 0L;
        this.f4824a = str;
        this.f4825b = str2;
        this.cu = i;
    }

    private JSONObject aq() {
        JSONObject jSONObject = new JSONObject();
        try {
            r.a(jSONObject, "ui", this.f4824a);
            r.a(jSONObject, "mc", this.f4825b);
            r.a(jSONObject, "mid", this.W);
            r.a(jSONObject, "aid", this.c);
            jSONObject.put("ts", this.cv);
            jSONObject.put(WebUtils.VER, this.bf);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public final String ar() {
        return this.f4825b;
    }

    public final int as() {
        return this.cu;
    }

    public final String b() {
        return this.f4824a;
    }

    public final String toString() {
        return aq().toString();
    }

    public final void z() {
        this.cu = 1;
    }
}
