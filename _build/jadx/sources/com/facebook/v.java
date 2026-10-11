package com.facebook;

import android.content.SharedPreferences;
import com.facebook.internal.ab;
import com.google.android.gms.common.Scopes;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProfileCache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class v {

    /* renamed from: a, reason: collision with root package name */
    private final SharedPreferences f3574a = l.f().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);

    v() {
    }

    Profile a() {
        String string = this.f3574a.getString("com.facebook.ProfileManager.CachedProfile", null);
        if (string != null) {
            try {
                return new Profile(new JSONObject(string));
            } catch (JSONException e) {
            }
        }
        return null;
    }

    void a(Profile profile) {
        ab.a(profile, Scopes.PROFILE);
        JSONObject d = profile.d();
        if (d != null) {
            this.f3574a.edit().putString("com.facebook.ProfileManager.CachedProfile", d.toString()).apply();
        }
    }

    void b() {
        this.f3574a.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
    }
}
