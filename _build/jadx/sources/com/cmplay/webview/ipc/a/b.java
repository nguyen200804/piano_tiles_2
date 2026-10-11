package com.cmplay.webview.ipc.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.unity3d.ads.metadata.MediationMetaData;
import org.json.JSONObject;

/* compiled from: WebConfigManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b implements a {
    private static b d;

    /* renamed from: a, reason: collision with root package name */
    private SharedPreferences f1967a;

    /* renamed from: b, reason: collision with root package name */
    private String f1968b;
    private a c;

    private b(Context context) {
        com.cmplay.util.c.b("ly", "WebConfigManager\u3000RuntimeCheck.IsWebProcess() = " + com.cmplay.i.c.c());
        if (com.cmplay.i.c.c()) {
            this.f1968b = new String("com.cmplay.tiles4.web");
            this.f1967a = context.getSharedPreferences(this.f1968b, 0);
        }
        this.c = new c();
    }

    public static b a(Context context) {
        if (d == null) {
            synchronized (b.class) {
                if (d == null) {
                    d = new b(context);
                }
            }
        }
        return d;
    }

    private SharedPreferences f() {
        com.cmplay.i.c.e();
        return this.f1967a;
    }

    @Override // com.cmplay.webview.ipc.a.a
    public long a(String str, long j) {
        return com.cmplay.i.c.c() ? f().getLong(str, j) : this.c.a(str, j);
    }

    @Override // com.cmplay.webview.ipc.a.a
    public boolean a(String str, boolean z) {
        return com.cmplay.i.c.c() ? f().getBoolean(str, z) : this.c.a(str, z);
    }

    @Override // com.cmplay.webview.ipc.a.a
    public int a(String str, int i) {
        return com.cmplay.i.c.c() ? f().getInt(str, i) : this.c.a(str, i);
    }

    @Override // com.cmplay.webview.ipc.a.a
    public String a(String str, String str2) {
        return com.cmplay.i.c.c() ? f().getString(str, str2) : this.c.a(str, str2);
    }

    @Override // com.cmplay.webview.ipc.a.a
    public void b(String str, boolean z) {
        if (com.cmplay.i.c.c()) {
            SharedPreferences.Editor edit = f().edit();
            edit.putBoolean(str, z);
            a(edit);
            return;
        }
        this.c.b(str, z);
    }

    @Override // com.cmplay.webview.ipc.a.a
    public void b(String str, long j) {
        if (com.cmplay.i.c.c()) {
            SharedPreferences.Editor edit = f().edit();
            edit.putLong(str, j);
            a(edit);
            return;
        }
        this.c.b(str, j);
    }

    @Override // com.cmplay.webview.ipc.a.a
    public void b(String str, int i) {
        if (com.cmplay.i.c.c()) {
            SharedPreferences.Editor edit = f().edit();
            edit.putInt(str, i);
            a(edit);
            return;
        }
        this.c.b(str, i);
    }

    @Override // com.cmplay.webview.ipc.a.a
    public void b(String str, String str2) {
        if (com.cmplay.i.c.c()) {
            SharedPreferences.Editor edit = f().edit();
            edit.putString(str, str2);
            a(edit);
            return;
        }
        this.c.b(str, str2);
    }

    @SuppressLint({"NewApi"})
    public static void a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }

    public void a(boolean z) {
        b("login_game_service", z);
    }

    public boolean a() {
        return a("login_game_service", false);
    }

    public void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(FacebookAdapter.KEY_ID);
            String optString2 = jSONObject.optString(MediationMetaData.KEY_NAME);
            int optInt = jSONObject.optInt("state");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(FacebookAdapter.KEY_ID, optString);
            jSONObject2.put(MediationMetaData.KEY_NAME, optString2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("state", optInt);
            jSONObject3.put("data", jSONObject2);
            b("login_use_info", jSONObject3.toString());
            com.cmplay.util.c.b("ly", jSONObject3.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void b(String str) {
        b("song_lock_data", str);
    }

    public String b() {
        return a("song_lock_data", "");
    }

    public String c() {
        return a("login_use_info", "");
    }

    public void c(String str) {
        b("login_status", str);
    }

    public String d() {
        return a("login_status", "{ \"state\": -1 }");
    }

    public void d(String str) {
        b("share_status", str);
    }

    public String e() {
        return a("share_status", "{ \"state\": 0 }");
    }
}
