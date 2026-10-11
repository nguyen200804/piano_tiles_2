package com.applovin.sdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppLovinSdkSettings {

    /* renamed from: a, reason: collision with root package name */
    private boolean f571a;

    /* renamed from: b, reason: collision with root package name */
    private long f572b = -1;
    private String c;
    private String d;

    public String getAutoPreloadSizes() {
        return this.c;
    }

    public String getAutoPreloadTypes() {
        return this.d;
    }

    public long getBannerAdRefreshSeconds() {
        return this.f572b;
    }

    public boolean isVerboseLoggingEnabled() {
        return this.f571a;
    }

    public void setAutoPreloadSizes(String str) {
        this.c = str;
    }

    public void setAutoPreloadTypes(String str) {
        this.d = str;
    }

    public void setBannerAdRefreshSeconds(long j) {
        this.f572b = j;
    }

    public void setVerboseLogging(boolean z) {
        this.f571a = z;
    }
}
