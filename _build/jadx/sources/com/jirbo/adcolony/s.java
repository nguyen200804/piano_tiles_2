package com.jirbo.adcolony;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    boolean f3848a;

    /* renamed from: b, reason: collision with root package name */
    String f3849b;
    int c;

    s(boolean z, String str, int i) {
        this.f3848a = z;
        this.f3849b = str;
        this.c = i;
    }

    public String a() {
        return this.f3849b;
    }

    public int b() {
        return this.c;
    }

    public String toString() {
        return this.f3848a ? this.f3849b + ":" + this.c : "no reward";
    }
}
