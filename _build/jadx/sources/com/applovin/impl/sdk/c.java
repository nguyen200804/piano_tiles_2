package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private AppLovinAdSize f484a;

    /* renamed from: b, reason: collision with root package name */
    private AppLovinAdType f485b;

    public c(AppLovinAd appLovinAd) {
        this.f484a = appLovinAd.getSize();
        this.f485b = appLovinAd.getType();
    }

    public c(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType) {
        this.f484a = appLovinAdSize;
        this.f485b = appLovinAdType;
    }

    public AppLovinAdSize a() {
        return this.f484a;
    }

    public AppLovinAdType b() {
        return this.f485b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f484a == null ? cVar.f484a == null : this.f484a.equals(cVar.f484a)) {
            if (this.f485b != null) {
                if (this.f485b.equals(cVar.f485b)) {
                    return true;
                }
            } else if (cVar.f485b == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f484a != null ? this.f484a.hashCode() : 0) * 31) + (this.f485b != null ? this.f485b.hashCode() : 0);
    }

    public String toString() {
        return "AdSpec{size=" + this.f484a + ", type=" + this.f485b + '}';
    }
}
