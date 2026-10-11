package com.cmcm.orion.picks.a.a;

import android.text.TextUtils;
import com.mopub.mobileads.VastIconXmlManager;
import org.json.JSONObject;

/* compiled from: BusinessDataItem.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    private String f829a;

    /* renamed from: b, reason: collision with root package name */
    private int f830b;
    private int c;
    private String d;
    private int e;
    private String f;
    private String g;
    private int h;
    private int i;
    private int j;
    private boolean k = false;

    public e(String str, int i, String str2, int i2, int i3) {
        if (!TextUtils.isEmpty(str)) {
            this.f829a = str.replace("&", "_");
        } else {
            this.f829a = str;
        }
        this.f830b = -1;
        this.c = i;
        this.d = str2;
        this.h = i2;
        this.i = i3;
        this.j = -1;
    }

    public final void a(String str, String str2) {
        this.f = str;
        this.g = str2;
    }

    public final String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("pkg", this.f829a);
            jSONObject.put("sug", this.f830b);
            jSONObject.put("res", this.c);
            jSONObject.put("des", TextUtils.isEmpty(this.d) ? "" : this.d);
            if (!TextUtils.isEmpty(this.f) && !TextUtils.isEmpty(this.g)) {
                jSONObject.put("fbpos", this.f);
                jSONObject.put("fbmeta", this.g);
            }
            if (this.k) {
                jSONObject.put("fbmess", "1");
            }
            if (this.e > 0) {
                jSONObject.put("seq", this.e);
            }
            if (this.h > 0) {
                jSONObject.put(VastIconXmlManager.DURATION, this.h);
                jSONObject.put("playtime", this.i);
                jSONObject.put("event", this.j);
            }
            return jSONObject.toString();
        } catch (Exception e) {
            return null;
        }
    }
}
