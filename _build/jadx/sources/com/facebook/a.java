package com.facebook;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.ab;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AccessTokenCache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    private SharedPreferences f2426a;

    /* renamed from: b, reason: collision with root package name */
    private final C0067a f2427b;
    private t c;

    a(SharedPreferences sharedPreferences, C0067a c0067a) {
        this.f2426a = sharedPreferences;
        this.f2427b = c0067a;
    }

    public a() {
        this(l.f().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 4), new C0067a());
    }

    public AccessToken a() {
        this.f2426a = l.f().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 4);
        if (c()) {
            return d();
        }
        if (!e()) {
            return null;
        }
        AccessToken f = f();
        if (f != null) {
            a(f);
            g().b();
            return f;
        }
        return f;
    }

    public void a(AccessToken accessToken) {
        ab.a(accessToken, "accessToken");
        try {
            this.f2426a.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", accessToken.l().toString()).commit();
        } catch (JSONException e) {
        }
    }

    public void b() {
        this.f2426a.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
        if (e()) {
            g().b();
        }
    }

    private boolean c() {
        return this.f2426a.contains("com.facebook.AccessTokenManager.CachedAccessToken");
    }

    private AccessToken d() {
        String string = this.f2426a.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
        if (string == null) {
            return null;
        }
        try {
            return AccessToken.a(new JSONObject(string));
        } catch (JSONException e) {
            return null;
        }
    }

    private boolean e() {
        return l.c();
    }

    private AccessToken f() {
        Bundle a2 = g().a();
        if (a2 == null || !t.a(a2)) {
            return null;
        }
        return AccessToken.a(a2);
    }

    private t g() {
        if (this.c == null) {
            synchronized (this) {
                if (this.c == null) {
                    this.c = this.f2427b.a();
                }
            }
        }
        return this.c;
    }

    /* compiled from: AccessTokenCache.java */
    /* renamed from: com.facebook.a$a, reason: collision with other inner class name */
    static class C0067a {
        C0067a() {
        }

        public t a() {
            return new t(l.f());
        }
    }
}
