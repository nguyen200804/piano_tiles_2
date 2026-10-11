package com.applovin.impl.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinTargetingData;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class cu implements AppLovinTargetingData {

    /* renamed from: a, reason: collision with root package name */
    private final Context f509a;

    cu(AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f509a = appLovinSdkImpl.getApplicationContext();
    }

    private static String a(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            if (AppLovinSdkUtils.isValidString(str)) {
                sb.append(dh.c(str));
                sb.append(",");
            }
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    private void a(String str, String str2) {
        if (AppLovinSdkUtils.isValidString(str)) {
            SharedPreferences.Editor edit = this.f509a.getSharedPreferences("applovin.sdk.targeting", 0).edit();
            edit.putString(str, dh.c(str2));
            edit.commit();
        }
    }

    Map a() {
        HashMap hashMap = new HashMap();
        Map<String, ?> all = this.f509a.getSharedPreferences("applovin.sdk.targeting", 0).getAll();
        if (all != null && all.size() > 0) {
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                hashMap.put(entry.getKey(), String.valueOf(entry.getValue()));
            }
        }
        return hashMap;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void clearData() {
        SharedPreferences.Editor edit = this.f509a.getSharedPreferences("applovin.sdk.targeting", 0).edit();
        edit.clear();
        edit.commit();
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void putExtra(String str, String str2) {
        if (AppLovinSdkUtils.isValidString(str) && AppLovinSdkUtils.isValidString(str2)) {
            a("ex_" + str, str2);
        }
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setBirthYear(int i) {
        if (i >= 9999 || i <= 1900) {
            return;
        }
        a("yob", Integer.toString(i));
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setCarrier(String str) {
        if (AppLovinSdkUtils.isValidString(str)) {
            a("carrier", str);
        }
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setCountry(String str) {
        if (AppLovinSdkUtils.isValidString(str) && str.length() == 2) {
            a("country", str.toUpperCase(Locale.ENGLISH));
        }
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setGender(char c) {
        a("gender", c == 'm' ? "m" : c == 'f' ? "f" : "u");
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setInterests(String... strArr) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        a("interests", a(strArr));
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setKeywords(String... strArr) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        a("keywords", a(strArr));
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setLanguage(String str) {
        if (AppLovinSdkUtils.isValidString(str)) {
            a("language", str.toLowerCase(Locale.ENGLISH));
        }
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setLocation(Location location) {
        if (location != null) {
            a("lat", Double.toString(location.getLatitude()));
            a("lon", Double.toString(location.getLongitude()));
        }
    }
}
