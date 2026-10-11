package com.applovin.impl.sdk;

import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class db {

    /* renamed from: a, reason: collision with root package name */
    private static final db f521a = new db();
    private final Map c = new HashMap(2);

    /* renamed from: b, reason: collision with root package name */
    private final Object f522b = new Object();

    private db() {
    }

    static db a() {
        return f521a;
    }

    cg a(String str) {
        cg cgVar;
        synchronized (this.f522b) {
            cgVar = (cg) this.c.remove(str);
        }
        return cgVar;
    }

    void a(String str, long j, String str2, boolean z) {
        cg cgVar = new cg(this, str2, j, z);
        synchronized (this.f522b) {
            this.c.put(str, cgVar);
        }
    }
}
