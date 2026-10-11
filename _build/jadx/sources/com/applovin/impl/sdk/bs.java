package com.applovin.impl.sdk;

import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class bs {

    /* renamed from: a, reason: collision with root package name */
    private final String f469a;

    /* renamed from: b, reason: collision with root package name */
    private final Map f470b;
    private final long c;
    private final String d;

    public bs(String str, Map map, long j, String str2) {
        this.f469a = str;
        this.f470b = map;
        this.c = j;
        this.d = str2;
    }

    public String a() {
        return this.f469a;
    }

    public Map b() {
        return this.f470b;
    }

    public long c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        bs bsVar = (bs) obj;
        if (this.c != bsVar.c) {
            return false;
        }
        if (this.f469a != null) {
            if (!this.f469a.equals(bsVar.f469a)) {
                return false;
            }
        } else if (bsVar.f469a != null) {
            return false;
        }
        if (this.f470b != null) {
            if (!this.f470b.equals(bsVar.f470b)) {
                return false;
            }
        } else if (bsVar.f470b != null) {
            return false;
        }
        if (this.d == null ? bsVar.d != null : !this.d.equals(bsVar.d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((((this.f470b != null ? this.f470b.hashCode() : 0) + ((this.f469a != null ? this.f469a.hashCode() : 0) * 31)) * 31) + ((int) (this.c ^ (this.c >>> 32)))) * 31) + (this.d != null ? this.d.hashCode() : 0);
    }

    public String toString() {
        return "SdkEvent{eventType='" + this.f469a + "', parameters=" + this.f470b + ", creationTsMillis=" + this.c + ", uniqueIdentifier='" + this.d + "'}";
    }
}
