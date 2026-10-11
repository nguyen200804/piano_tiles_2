package com.applovin.sdk;

import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppLovinAdType {

    /* renamed from: a, reason: collision with root package name */
    private final String f568a;
    public static final AppLovinAdType REGULAR = new AppLovinAdType("REGULAR");
    public static final AppLovinAdType INCENTIVIZED = new AppLovinAdType("VIDEOA");

    public AppLovinAdType(String str) {
        this.f568a = str;
    }

    public static Set allTypes() {
        HashSet hashSet = new HashSet(2);
        hashSet.add(REGULAR);
        hashSet.add(INCENTIVIZED);
        return hashSet;
    }

    public static AppLovinAdType fromString(String str) {
        return str.toUpperCase(Locale.ENGLISH).equals(INCENTIVIZED.getLabel()) ? INCENTIVIZED : REGULAR;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AppLovinAdType appLovinAdType = (AppLovinAdType) obj;
        if (this.f568a != null) {
            if (this.f568a.equals(appLovinAdType.f568a)) {
                return true;
            }
        } else if (appLovinAdType.f568a == null) {
            return true;
        }
        return false;
    }

    public String getLabel() {
        return this.f568a.toUpperCase(Locale.ENGLISH);
    }

    public int hashCode() {
        if (this.f568a != null) {
            return this.f568a.hashCode();
        }
        return 0;
    }

    public String toString() {
        return getLabel();
    }
}
