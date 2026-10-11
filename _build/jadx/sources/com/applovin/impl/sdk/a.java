package com.applovin.impl.sdk;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    private static final Object f403a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private static final Map f404b = new HashMap();

    static Map a(AppLovinSdkImpl appLovinSdkImpl) {
        Map c;
        synchronized (f403a) {
            appLovinSdkImpl.getLogger().d("AdDataCache", "Reading cached device data...");
            c = c(appLovinSdkImpl);
        }
        return c;
    }

    private static void a(String str, Map map) {
        String[] split = str.split("=");
        if (split.length == 2) {
            map.put(split[0], split[1]);
        }
    }

    static void a(Map map, AppLovinSdkImpl appLovinSdkImpl) {
        b(map, appLovinSdkImpl);
    }

    static void b(AppLovinSdkImpl appLovinSdkImpl) {
        synchronized (f403a) {
            appLovinSdkImpl.getLogger().d("AdDataCache", "Clearing old device data cache...");
            a(new HashMap(0), appLovinSdkImpl);
        }
    }

    private static void b(Map map, AppLovinSdkImpl appLovinSdkImpl) {
        if (map == null) {
            throw new IllegalArgumentException("No ad aata specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        try {
            synchronized (f404b) {
                Map map2 = (Map) f404b.get("ad_data_cache");
                if (map2 == null) {
                    map2 = new HashMap();
                }
                map2.clear();
                map2.putAll(map);
                f404b.put("ad_data_cache", map2);
            }
            SharedPreferences.Editor edit = appLovinSdkImpl.getSettingsManager().a().edit();
            edit.putString("ad_data_cache", dh.a(map));
            edit.commit();
            appLovinSdkImpl.getLogger().d("AdDataCache", map.size() + " ad_data_cache entries saved in cache");
        } catch (Exception e) {
            appLovinSdkImpl.getLogger().e("AdDataCache", "Unable to save ad data entries", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.Map c(com.applovin.impl.sdk.AppLovinSdkImpl r7) {
        /*
            java.util.Map r1 = com.applovin.impl.sdk.a.f404b
            monitor-enter(r1)
            java.util.Map r0 = com.applovin.impl.sdk.a.f404b     // Catch: java.lang.Throwable -> L3f
            java.lang.String r2 = "ad_data_cache"
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Throwable -> L3f
            java.util.Map r0 = (java.util.Map) r0     // Catch: java.lang.Throwable -> L3f
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L3f
            if (r0 != 0) goto Laa
            com.applovin.impl.sdk.az r1 = r7.getSettingsManager()
            android.content.SharedPreferences r2 = r1.a()
            java.lang.String r1 = "ad_data_cache"
            java.lang.String r3 = ""
            java.lang.String r3 = r2.getString(r1, r3)
            if (r3 == 0) goto Laa
            int r1 = r3.length()
            if (r1 <= 0) goto Laa
            java.util.HashMap r1 = new java.util.HashMap     // Catch: java.lang.Exception -> La5
            r1.<init>()     // Catch: java.lang.Exception -> La5
            java.lang.String r0 = "&"
            java.lang.String[] r3 = r3.split(r0)     // Catch: java.lang.Exception -> L84
            int r4 = r3.length     // Catch: java.lang.Exception -> L84
            r0 = 0
        L35:
            if (r0 >= r4) goto L42
            r5 = r3[r0]     // Catch: java.lang.Exception -> L84
            a(r5, r1)     // Catch: java.lang.Exception -> L84
            int r0 = r0 + 1
            goto L35
        L3f:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L3f
            throw r0
        L42:
            java.util.Map r3 = com.applovin.impl.sdk.a.f404b     // Catch: java.lang.Exception -> L84
            monitor-enter(r3)     // Catch: java.lang.Exception -> L84
            java.util.Map r0 = com.applovin.impl.sdk.a.f404b     // Catch: java.lang.Throwable -> L81
            java.lang.String r4 = "ad_data_cache"
            r0.put(r4, r1)     // Catch: java.lang.Throwable -> L81
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L81
            com.applovin.sdk.AppLovinLogger r0 = r7.getLogger()     // Catch: java.lang.Exception -> L84
            java.lang.String r3 = "AdDataCache"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L84
            r4.<init>()     // Catch: java.lang.Exception -> L84
            int r5 = r1.size()     // Catch: java.lang.Exception -> L84
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Exception -> L84
            java.lang.String r5 = " "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Exception -> L84
            java.lang.String r5 = "ad_data_cache"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Exception -> L84
            java.lang.String r5 = " entries loaded from cache"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Exception -> L84
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L84
            r0.d(r3, r4)     // Catch: java.lang.Exception -> L84
        L79:
            if (r1 == 0) goto L9f
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>(r1)
        L80:
            return r0
        L81:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L81
            throw r0     // Catch: java.lang.Exception -> L84
        L84:
            r0 = move-exception
        L85:
            com.applovin.sdk.AppLovinLogger r3 = r7.getLogger()
            java.lang.String r4 = "AdDataCache"
            java.lang.String r5 = "Unable to load ad data"
            r3.e(r4, r5, r0)
            android.content.SharedPreferences$Editor r0 = r2.edit()
            java.lang.String r2 = "ad_data_cache"
            java.lang.String r3 = ""
            r0.putString(r2, r3)
            r0.commit()
            goto L79
        L9f:
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            goto L80
        La5:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L85
        Laa:
            r1 = r0
            goto L79
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.a.c(com.applovin.impl.sdk.AppLovinSdkImpl):java.util.Map");
    }
}
