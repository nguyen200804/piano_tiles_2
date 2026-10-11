package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class bl {
    private static bl d;

    /* renamed from: a, reason: collision with root package name */
    private final Map f456a = new HashMap(1);

    /* renamed from: b, reason: collision with root package name */
    private final Map f457b = new HashMap(1);
    private final Object c = new Object();

    private bl() {
    }

    public static synchronized bl a() {
        bl blVar;
        synchronized (bl.class) {
            if (d == null) {
                d = new bl();
            }
            blVar = d;
        }
        return blVar;
    }

    public Map a(AppLovinAd appLovinAd) {
        Map map;
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        synchronized (this.c) {
            map = (Map) this.f457b.remove(appLovinAdImpl);
        }
        return map;
    }

    public void a(AppLovinAd appLovinAd, String str) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        synchronized (this.c) {
            this.f456a.put(appLovinAdImpl, str);
        }
    }

    public void a(AppLovinAd appLovinAd, Map map) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        synchronized (this.c) {
            this.f457b.put(appLovinAdImpl, map);
        }
    }

    public String b(AppLovinAd appLovinAd) {
        String str;
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        synchronized (this.c) {
            str = (String) this.f456a.remove(appLovinAdImpl);
        }
        return str;
    }
}
