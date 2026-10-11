package com.applovin.impl.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bn implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f460a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinLogger f461b;
    private final Context c;
    private final AppLovinSdkSettings d;

    bn(AppLovinSdkImpl appLovinSdkImpl, AppLovinSdkSettings appLovinSdkSettings) {
        this.f460a = appLovinSdkImpl;
        this.c = appLovinSdkImpl.getApplicationContext();
        this.d = appLovinSdkSettings;
        this.f461b = appLovinSdkImpl.getLogger();
    }

    private void c() {
        String str = (String) this.f460a.a(av.J);
        if (str.length() > 0) {
            String[] split = str.split(",");
            for (String str2 : split) {
                this.f460a.c().d(new c(AppLovinAdSize.fromString(str2), AppLovinAdType.REGULAR));
            }
        }
        if (((Boolean) this.f460a.a(av.K)).booleanValue()) {
            this.f460a.c().d(new c(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED));
        }
        if (((Boolean) this.f460a.a(av.aM)).booleanValue()) {
            this.f460a.d().d(NativeAdImpl.SPEC_NATIVE);
        }
    }

    private void d() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.c);
        try {
            if (defaultSharedPreferences.getInt("com.applovin.sdk.impl.lastKnownVersionCode", 0) < 614) {
                Log.i("TaskInitializeSdk", "SDK has been updated since last run. Continuing...");
                this.f460a.getSettingsManager().d();
                this.f460a.getSettingsManager().b();
            } else {
                Log.d("TaskInitializeSdk", "SDK has not been updated since last run. Continuing...");
            }
        } catch (Exception e) {
            this.f460a.getLogger().e("TaskInitializeSdk", "Unable to check for SDK update", e);
        } finally {
            defaultSharedPreferences.edit().putInt("com.applovin.sdk.impl.lastKnownVersionCode", AppLovinSdk.VERSION_CODE).apply();
        }
    }

    boolean a() {
        if (cy.a("android.permission.INTERNET", this.c)) {
            return true;
        }
        this.f461b.userError("TaskInitializeSdk", "Unable to enable AppLovin SDK: no android.permission.INTERNET");
        return false;
    }

    void b() {
        this.f460a.a().a(new bd(this.f460a), bp.MAIN, 500L);
    }

    @Override // java.lang.Runnable
    public void run() {
        long currentTimeMillis = System.currentTimeMillis();
        this.f461b.d("TaskInitializeSdk", "Initializing AppLovin SDK 6.1.4...");
        try {
            try {
                if (a()) {
                    d();
                    az settingsManager = this.f460a.getSettingsManager();
                    settingsManager.c();
                    if (((Boolean) settingsManager.a(av.f439b)).booleanValue()) {
                        settingsManager.a(this.d);
                        settingsManager.b();
                    }
                    bc b2 = this.f460a.b();
                    b2.c();
                    b2.c("ad_imp_session");
                    a.b(this.f460a);
                    this.f460a.getFileManager().d(this.c);
                    c();
                    b();
                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.c);
                    if (!AppLovinSdkUtils.isValidString(defaultSharedPreferences.getString("com.applovin.sdk.impl.isFirstRun", null))) {
                        defaultSharedPreferences.edit().putString("com.applovin.sdk.impl.isFirstRun", Boolean.toString(true)).commit();
                    }
                    this.f460a.getPersistentPostbackManager().a();
                    this.f460a.getEventService().trackEvent("landing");
                    this.f460a.a(true);
                } else {
                    this.f460a.a(false);
                }
                this.f461b.d("TaskInitializeSdk", "AppLovin SDK 6.1.4 initialization " + (this.f460a.isEnabled() ? "succeeded" : "failed") + " in " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
            } catch (Throwable th) {
                this.f461b.e("TaskInitializeSdk", "Unable to intialize SDK, disabling the SDK", th);
                this.f460a.a(false);
                this.f461b.d("TaskInitializeSdk", "AppLovin SDK 6.1.4 initialization " + (this.f460a.isEnabled() ? "succeeded" : "failed") + " in " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
            }
        } catch (Throwable th2) {
            this.f461b.d("TaskInitializeSdk", "AppLovin SDK 6.1.4 initialization " + (this.f460a.isEnabled() ? "succeeded" : "failed") + " in " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
            throw th2;
        }
    }
}
