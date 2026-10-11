package com.cmcm.dmc.sdk.c.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends a {

    /* renamed from: a, reason: collision with root package name */
    private long f707a;

    /* renamed from: b, reason: collision with root package name */
    private long f708b;
    private long c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;

    public void b(String str) {
        this.d = str;
    }

    public void c(String str) {
        this.e = str;
    }

    public void d(long j) {
        this.f707a = j;
    }

    public void d(String str) {
        this.f = str;
    }

    public long e() {
        return this.f707a;
    }

    public void e(long j) {
        this.f708b = j;
    }

    public void e(String str) {
        this.g = str;
    }

    public long f() {
        return this.f708b;
    }

    public void f(long j) {
        this.c = j;
    }

    public void f(String str) {
        this.h = str;
    }

    public String g() {
        return this.d;
    }

    public String h() {
        return this.e;
    }

    public String i() {
        return this.f;
    }

    public String j() {
        return this.h;
    }

    public String toString() {
        return "Music:\nid:" + a() + "\nyear:" + this.f707a + "\nduration:" + this.f708b + "\nsize:" + b() + "\ncreateTime:" + c() + "\nlastModified:" + this.c + "\nartist:" + this.d + "\nname:" + this.e + "\nalbum:" + this.f + "\ndata:" + d() + "\ndisplayName:" + this.g + "\ntype:" + this.h;
    }
}
