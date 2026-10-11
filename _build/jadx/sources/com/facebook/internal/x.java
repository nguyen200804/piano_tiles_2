package com.facebook.internal;

import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* compiled from: ProfileInformationCache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class x {

    /* renamed from: a, reason: collision with root package name */
    private static final ConcurrentHashMap<String, JSONObject> f3265a = new ConcurrentHashMap<>();

    public static JSONObject a(String str) {
        return f3265a.get(str);
    }

    public static void a(String str, JSONObject jSONObject) {
        f3265a.put(str, jSONObject);
    }
}
