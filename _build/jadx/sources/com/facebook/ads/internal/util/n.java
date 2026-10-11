package com.facebook.ads.internal.util;

import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    private final String f2896a;

    /* renamed from: b, reason: collision with root package name */
    private final String f2897b;
    private final String c;

    public n(String str, String str2) {
        this(str, str2, false);
    }

    public n(String str, String str2, boolean z) {
        this.f2896a = str;
        this.f2897b = str2;
        this.c = z ? "1" : "0";
    }

    public Map<String, String> a() {
        HashMap hashMap = new HashMap();
        hashMap.put("stacktrace", this.f2896a);
        hashMap.put("app_crashed_version", this.f2897b);
        hashMap.put("caught_exception", this.c);
        return hashMap;
    }
}
