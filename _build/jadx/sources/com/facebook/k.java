package com.facebook;

import android.support.v7.widget.helper.ItemTouchHelper;
import com.facebook.internal.aa;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: FacebookRequestError.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    static final b f3270a = new b(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, 299);

    /* renamed from: b, reason: collision with root package name */
    private final a f3271b;
    private final int c;
    private final int d;
    private final int e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final JSONObject k;
    private final JSONObject l;
    private final Object m;
    private final HttpURLConnection n;
    private final i o;

    /* compiled from: FacebookRequestError.java */
    public enum a {
        LOGIN_RECOVERABLE,
        OTHER,
        TRANSIENT
    }

    /* compiled from: FacebookRequestError.java */
    private static class b {

        /* renamed from: a, reason: collision with root package name */
        private final int f3274a;

        /* renamed from: b, reason: collision with root package name */
        private final int f3275b;

        private b(int i, int i2) {
            this.f3274a = i;
            this.f3275b = i2;
        }

        boolean a(int i) {
            return this.f3274a <= i && i <= this.f3275b;
        }
    }

    private k(int i, int i2, int i3, String str, String str2, String str3, String str4, boolean z, JSONObject jSONObject, JSONObject jSONObject2, Object obj, HttpURLConnection httpURLConnection, i iVar) {
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = str;
        this.g = str2;
        this.l = jSONObject;
        this.k = jSONObject2;
        this.m = obj;
        this.n = httpURLConnection;
        this.h = str3;
        this.i = str4;
        boolean z2 = false;
        if (iVar != null) {
            this.o = iVar;
            z2 = true;
        } else {
            this.o = new n(this, str2);
        }
        com.facebook.internal.i f = f();
        this.f3271b = z2 ? a.OTHER : f.a(i2, i3, z);
        this.j = f.a(this.f3271b);
    }

    k(HttpURLConnection httpURLConnection, Exception exc) {
        this(-1, -1, -1, null, null, null, null, false, null, null, null, httpURLConnection, exc instanceof i ? (i) exc : new i(exc));
    }

    public k(int i, String str, String str2) {
        this(-1, i, -1, str, str2, null, null, false, null, null, null, null, null);
    }

    public int a() {
        return this.c;
    }

    public int b() {
        return this.d;
    }

    public String c() {
        return this.f;
    }

    public String d() {
        return this.g != null ? this.g : this.o.getLocalizedMessage();
    }

    public i e() {
        return this.o;
    }

    public String toString() {
        return "{HttpStatus: " + this.c + ", errorCode: " + this.d + ", errorType: " + this.f + ", errorMessage: " + d() + "}";
    }

    static k a(JSONObject jSONObject, Object obj, HttpURLConnection httpURLConnection) {
        try {
            if (jSONObject.has("code")) {
                int i = jSONObject.getInt("code");
                Object a2 = com.facebook.internal.aa.a(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
                if (a2 != null && (a2 instanceof JSONObject)) {
                    JSONObject jSONObject2 = (JSONObject) a2;
                    String str = null;
                    String str2 = null;
                    String str3 = null;
                    String str4 = null;
                    boolean z = false;
                    int i2 = -1;
                    int i3 = -1;
                    boolean z2 = false;
                    if (jSONObject2.has("error")) {
                        JSONObject jSONObject3 = (JSONObject) com.facebook.internal.aa.a(jSONObject2, "error", (String) null);
                        str = jSONObject3.optString(VastExtensionXmlManager.TYPE, null);
                        str2 = jSONObject3.optString("message", null);
                        i2 = jSONObject3.optInt("code", -1);
                        i3 = jSONObject3.optInt("error_subcode", -1);
                        str3 = jSONObject3.optString("error_user_msg", null);
                        str4 = jSONObject3.optString("error_user_title", null);
                        z = jSONObject3.optBoolean("is_transient", false);
                        z2 = true;
                    } else if (jSONObject2.has("error_code") || jSONObject2.has("error_msg") || jSONObject2.has("error_reason")) {
                        str = jSONObject2.optString("error_reason", null);
                        str2 = jSONObject2.optString("error_msg", null);
                        i2 = jSONObject2.optInt("error_code", -1);
                        i3 = jSONObject2.optInt("error_subcode", -1);
                        z2 = true;
                    }
                    if (z2) {
                        return new k(i, i2, i3, str, str2, str4, str3, z, jSONObject2, jSONObject, obj, httpURLConnection, null);
                    }
                }
                if (!f3270a.a(i)) {
                    return new k(i, -1, -1, null, null, null, null, false, jSONObject.has("body") ? (JSONObject) com.facebook.internal.aa.a(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT") : null, jSONObject, obj, httpURLConnection, null);
                }
            }
        } catch (JSONException e) {
        }
        return null;
    }

    static synchronized com.facebook.internal.i f() {
        com.facebook.internal.i a2;
        synchronized (k.class) {
            aa.b d = com.facebook.internal.aa.d(l.i());
            a2 = d == null ? com.facebook.internal.i.a() : d.e();
        }
        return a2;
    }
}
