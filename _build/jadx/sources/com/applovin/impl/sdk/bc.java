package com.applovin.impl.sdk;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bc {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f444a;

    /* renamed from: b, reason: collision with root package name */
    private final Map f445b = new HashMap();

    bc(AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f444a = appLovinSdkImpl;
    }

    void a() {
        synchronized (this.f445b) {
            this.f445b.clear();
        }
        d();
    }

    void a(String str) {
        a(str, 1L);
    }

    void a(String str, long j) {
        synchronized (this.f445b) {
            Long l = (Long) this.f445b.get(str);
            if (l == null) {
                l = 0L;
            }
            this.f445b.put(str, Long.valueOf(l.longValue() + j));
        }
        d();
    }

    long b(String str) {
        long longValue;
        synchronized (this.f445b) {
            Long l = (Long) this.f445b.get(str);
            if (l == null) {
                l = 0L;
            }
            longValue = l.longValue();
        }
        return longValue;
    }

    JSONObject b() {
        JSONObject jSONObject;
        synchronized (this.f445b) {
            jSONObject = new JSONObject();
            for (Map.Entry entry : this.f445b.entrySet()) {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
        }
        return jSONObject;
    }

    void b(String str, long j) {
        synchronized (this.f445b) {
            this.f445b.put(str, Long.valueOf(j));
        }
        d();
    }

    void c() {
        try {
            JSONObject jSONObject = new JSONObject(this.f444a.getSettingsManager().a().getString("stats", "{}"));
            synchronized (this.f445b) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    try {
                        String next = keys.next();
                        this.f445b.put(next, Long.valueOf(jSONObject.getLong(next)));
                    } catch (JSONException e) {
                    }
                }
            }
        } catch (Throwable th) {
            this.f444a.getLogger().e("StatsManager", "Unable to load stats", th);
        }
    }

    void c(String str) {
        synchronized (this.f445b) {
            this.f445b.remove(str);
        }
        d();
    }

    void d() {
        try {
            SharedPreferences.Editor edit = this.f444a.getSettingsManager().a().edit();
            edit.putString("stats", b().toString());
            edit.commit();
        } catch (JSONException e) {
            this.f444a.getLogger().e("StatsManager", "Unable to save stats", e);
        }
    }
}
