package com.mnt.impl.d;

import java.io.Serializable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public String f3959a;

    public a() {
    }

    public a(String str) {
        this.f3959a = str;
    }

    public final int hashCode() {
        return (this.f3959a == null ? 0 : this.f3959a.hashCode()) + 31;
    }

    public final boolean equals(Object obj) {
        return obj != null && (obj instanceof a) && ((a) obj).f3959a.equals(this.f3959a);
    }
}
