package com.applovin.impl.sdk;

import android.util.Log;
import com.applovin.sdk.AppLovinLogger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class cs implements AppLovinLogger {

    /* renamed from: a, reason: collision with root package name */
    private az f507a;

    /* renamed from: b, reason: collision with root package name */
    private ct f508b;

    cs() {
    }

    void a(az azVar) {
        this.f507a = azVar;
    }

    void a(ct ctVar) {
        this.f508b = ctVar;
    }

    boolean a() {
        if (this.f507a != null) {
            return ((Boolean) this.f507a.a(av.j)).booleanValue();
        }
        return false;
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void d(String str, String str2) {
        if (a()) {
            Log.d(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2);
        }
        if (this.f508b != null) {
            this.f508b.a("DEBUG  [" + str + "] " + str2);
        }
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void e(String str, String str2) {
        e(str, str2, null);
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void e(String str, String str2, Throwable th) {
        if (a()) {
            Log.e(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2, th);
        }
        if (this.f508b != null) {
            this.f508b.a("ERROR  [" + str + "] " + str2 + (th != null ? ": " + th.getMessage() : ""));
        }
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void i(String str, String str2) {
        if (a()) {
            Log.i(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2);
        }
        if (this.f508b != null) {
            this.f508b.a("INFO  [" + str + "] " + str2);
        }
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void userError(String str, String str2) {
        userError(str, str2, null);
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void userError(String str, String str2, Throwable th) {
        Log.e(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2, th);
        if (this.f508b != null) {
            this.f508b.a("USER  [" + str + "] " + str2 + (th != null ? ": " + th.getMessage() : ""));
        }
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void w(String str, String str2) {
        w(str, str2, null);
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void w(String str, String str2, Throwable th) {
        if (a()) {
            Log.w(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2, th);
        }
        if (this.f508b != null) {
            this.f508b.a("WARN  [" + str + "] " + str2);
        }
    }
}
