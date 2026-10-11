package com.applovin.impl.sdk;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bd extends au {
    bd(AppLovinSdkImpl appLovinSdkImpl) {
        super("SubmitData", appLovinSdkImpl);
    }

    void a(JSONObject jSONObject) {
        try {
            JSONObject a2 = cx.a(jSONObject);
            az settingsManager = this.f.getSettingsManager();
            settingsManager.a(av.c, a2.getString("device_id"));
            settingsManager.a(av.e, a2.getString("device_token"));
            settingsManager.a(av.d, a2.getString("publisher_id"));
            settingsManager.b();
            cx.a(a2, this.f);
            if (a2.has("adserver_parameters")) {
                settingsManager.a(av.y, a2.getJSONObject("adserver_parameters").toString());
            }
        } catch (JSONException e) {
            this.g.e(this.e, "Unable to parse API response", e);
        }
    }

    void b(JSONObject jSONObject) {
        cy dataCollector = this.f.getDataCollector();
        da b2 = dataCollector.b();
        dc a2 = dataCollector.a();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("model", a2.f523a);
        jSONObject2.put("os", a2.f524b);
        jSONObject2.put("brand", a2.c);
        jSONObject2.put("sdk_version", a2.e);
        jSONObject2.put("revision", a2.d);
        jSONObject2.put("country_code", a2.f);
        jSONObject2.put("carrier", a2.g);
        jSONObject2.put(VastExtensionXmlManager.TYPE, "android");
        cz c = dataCollector.c();
        String str = c.f517b;
        boolean z = c.f516a;
        if ((!z || ((Boolean) this.f.getSettingsManager().a(av.be)).booleanValue()) && AppLovinSdkUtils.isValidString(str)) {
            jSONObject2.put("idfa", str);
        }
        jSONObject2.put("dnt", z);
        Locale locale = a2.h;
        if (locale != null) {
            jSONObject2.put("locale", locale.toString());
        }
        jSONObject.put("device_info", jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("package_name", b2.c);
        jSONObject3.put("app_name", b2.f519a);
        jSONObject3.put("app_version", b2.f520b);
        jSONObject3.put("installed_at", b2.d);
        jSONObject3.put("applovin_sdk_version", AppLovinSdk.VERSION);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.h);
        String string = defaultSharedPreferences.getString("com.applovin.sdk.impl.isFirstRun", null);
        if (AppLovinSdkUtils.isValidString(string)) {
            jSONObject3.put("first_install", string);
            if (string.equalsIgnoreCase(Boolean.toString(true))) {
                defaultSharedPreferences.edit().putString("com.applovin.sdk.impl.isFirstRun", Boolean.toString(false)).apply();
            }
        }
        String str2 = (String) this.f.a(av.F);
        if (str2 != null && str2.length() > 0) {
            jSONObject3.put("plugin_version", str2);
        }
        jSONObject.put("app_info", jSONObject3);
        if (((Boolean) this.f.a(av.N)).booleanValue()) {
            Map a3 = ((cu) this.f.getTargetingData()).a();
            if (a3 != null && !a3.isEmpty()) {
                jSONObject.put("targeting", ax.a(a3));
            }
            jSONObject.put("stats", this.f.b().b());
        }
    }

    void c(JSONObject jSONObject) {
        be beVar = new be(this, "Repeat" + this.e, av.g, this.f, jSONObject);
        beVar.a(av.k);
        beVar.run();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.g.i(this.e, "Submitting user data...");
            JSONObject jSONObject = new JSONObject();
            b(jSONObject);
            c(jSONObject);
        } catch (JSONException e) {
            this.g.e(this.e, "Unable to build JSON message with collected data", e);
        }
    }
}
