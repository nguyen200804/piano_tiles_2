package com.applovin.impl.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdkSettings;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class az {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f440a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinLogger f441b;
    private final Context c;
    private final Object[] d = new Object[av.b()];

    az(AppLovinSdkImpl appLovinSdkImpl) {
        this.f440a = appLovinSdkImpl;
        this.f441b = appLovinSdkImpl.getLogger();
        this.c = appLovinSdkImpl.getApplicationContext();
    }

    private static by a(String str) {
        for (by byVar : av.a()) {
            if (byVar.b().equals(str)) {
                return byVar;
            }
        }
        return null;
    }

    private static Object a(String str, JSONObject jSONObject, Object obj) {
        if (obj instanceof Boolean) {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        }
        if (obj instanceof Float) {
            return Float.valueOf((float) jSONObject.getDouble(str));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(jSONObject.getInt(str));
        }
        if (obj instanceof Long) {
            return Long.valueOf(jSONObject.getLong(str));
        }
        if (obj instanceof String) {
            return jSONObject.getString(str);
        }
        throw new RuntimeException("SDK Error: unknown value type: " + obj.getClass());
    }

    private String e() {
        return "com.applovin.sdk." + dh.a(this.f440a.getSdkKey()) + ".";
    }

    public SharedPreferences a() {
        if (this.c == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return this.c.getSharedPreferences("com.applovin.sdk.1", 0);
    }

    public Object a(by byVar) {
        Object a2;
        if (byVar == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        synchronized (this.d) {
            Object obj = this.d[byVar.a()];
            a2 = obj != null ? byVar.a(obj) : byVar.c();
        }
        return a2;
    }

    public void a(by byVar, Object obj) {
        if (byVar == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        if (obj == null) {
            throw new IllegalArgumentException("No new value specified");
        }
        synchronized (this.d) {
            this.d[byVar.a()] = obj;
        }
        this.f441b.d("SettingsManager", "Setting update: " + byVar.b() + " set to \"" + obj + "\"");
    }

    void a(AppLovinSdkSettings appLovinSdkSettings) {
        boolean z;
        boolean z2 = false;
        this.f441b.i("SettingsManager", "Loading user-defined settings...");
        if (appLovinSdkSettings == null) {
            return;
        }
        synchronized (this.d) {
            this.d[av.j.a()] = Boolean.valueOf(appLovinSdkSettings.isVerboseLoggingEnabled());
            long bannerAdRefreshSeconds = appLovinSdkSettings.getBannerAdRefreshSeconds();
            if (bannerAdRefreshSeconds >= 0) {
                this.d[av.A.a()] = Long.valueOf(bannerAdRefreshSeconds > 0 ? Math.max(30L, bannerAdRefreshSeconds) : 0L);
                this.d[av.z.a()] = true;
            } else if (bannerAdRefreshSeconds == -1) {
                this.d[av.z.a()] = false;
            }
            String autoPreloadSizes = appLovinSdkSettings.getAutoPreloadSizes();
            if (autoPreloadSizes == null) {
                autoPreloadSizes = "NONE";
            }
            Object[] objArr = this.d;
            int a2 = av.J.a();
            if (autoPreloadSizes.equals("NONE")) {
                autoPreloadSizes = "";
            }
            objArr[a2] = autoPreloadSizes;
            String autoPreloadTypes = appLovinSdkSettings.getAutoPreloadTypes();
            if (autoPreloadTypes == null) {
                autoPreloadTypes = "NONE";
            }
            if (autoPreloadTypes.equals("NONE")) {
                z = false;
            } else {
                String[] split = autoPreloadTypes.split(",");
                z = false;
                for (String str : split) {
                    if (str.equals(AppLovinAdType.REGULAR.getLabel())) {
                        z = true;
                    } else if (str.equals(AppLovinAdType.INCENTIVIZED.getLabel()) || str.contains("INCENT") || str.contains("REWARD")) {
                        z2 = true;
                    }
                }
            }
            if (!z) {
                this.d[av.J.a()] = "";
            }
            this.d[av.K.a()] = Boolean.valueOf(z2);
            if (appLovinSdkSettings instanceof ab) {
                for (Map.Entry entry : ((ab) appLovinSdkSettings).b().entrySet()) {
                    this.d[((by) entry.getKey()).a()] = entry.getValue();
                }
            }
        }
    }

    void a(JSONObject jSONObject) {
        this.f441b.d("SettingsManager", "Loading settings from JSON array...");
        synchronized (this.d) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next != null && next.length() > 0) {
                    try {
                        try {
                            by a2 = a(next);
                            if (a2 != null) {
                                Object a3 = a(next, jSONObject, a2.c());
                                this.d[a2.a()] = a3;
                                this.f441b.d("SettingsManager", "Setting update: " + a2.b() + " set to \"" + a3 + "\"");
                            } else {
                                this.f441b.w("SettingsManager", "Unknown setting recieved: " + next);
                            }
                        } catch (Throwable th) {
                            this.f441b.e("SettingsManager", "Unable to convert setting object ", th);
                        }
                    } catch (JSONException e) {
                        this.f441b.e("SettingsManager", "Unable to parse JSON settings array", e);
                    }
                }
            }
        }
    }

    void b() {
        if (this.c == null) {
            throw new IllegalArgumentException("No context specified");
        }
        this.f441b.i("SettingsManager", "Saving settings with the application...");
        String e = e();
        SharedPreferences.Editor edit = a().edit();
        synchronized (this.d) {
            for (by byVar : av.a()) {
                Object obj = this.d[byVar.a()];
                if (obj != null) {
                    String str = e + byVar.b();
                    if (obj instanceof Boolean) {
                        edit.putBoolean(str, ((Boolean) obj).booleanValue());
                    } else if (obj instanceof Float) {
                        edit.putFloat(str, ((Float) obj).floatValue());
                    } else if (obj instanceof Integer) {
                        edit.putInt(str, ((Integer) obj).intValue());
                    } else if (obj instanceof Long) {
                        edit.putLong(str, ((Long) obj).longValue());
                    } else {
                        if (!(obj instanceof String)) {
                            throw new RuntimeException("SDK Error: unknown value: " + obj.getClass());
                        }
                        edit.putString(str, (String) obj);
                    }
                }
            }
        }
        edit.commit();
        this.f441b.d("SettingsManager", "Settings saved with the application.");
    }

    void c() {
        Object valueOf;
        if (this.c == null) {
            throw new IllegalArgumentException("No context specified");
        }
        this.f441b.i("SettingsManager", "Loading settings saved with the application...");
        String e = e();
        SharedPreferences a2 = a();
        synchronized (this.d) {
            for (by byVar : av.a()) {
                try {
                    String str = e + byVar.b();
                    Object c = byVar.c();
                    if (c instanceof Boolean) {
                        valueOf = Boolean.valueOf(a2.getBoolean(str, ((Boolean) c).booleanValue()));
                    } else if (c instanceof Float) {
                        valueOf = Float.valueOf(a2.getFloat(str, ((Float) c).floatValue()));
                    } else if (c instanceof Integer) {
                        valueOf = Integer.valueOf(a2.getInt(str, ((Integer) c).intValue()));
                    } else if (c instanceof Long) {
                        valueOf = Long.valueOf(a2.getLong(str, ((Long) c).longValue()));
                    } else {
                        if (!(c instanceof String)) {
                            throw new RuntimeException("SDK Error: unknown value: " + c.getClass());
                        }
                        valueOf = a2.getString(str, (String) c);
                    }
                    this.d[byVar.a()] = valueOf;
                } catch (Exception e2) {
                    this.f441b.e("SettingsManager", "Unable to load \"" + byVar.b() + "\"", e2);
                }
            }
        }
    }

    void d() {
        synchronized (this.d) {
            Arrays.fill(this.d, (Object) null);
        }
        SharedPreferences.Editor edit = a().edit();
        edit.clear();
        edit.commit();
    }
}
