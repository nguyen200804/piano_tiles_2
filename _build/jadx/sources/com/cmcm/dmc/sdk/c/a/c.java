package com.cmcm.dmc.sdk.c.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends a {

    /* renamed from: a, reason: collision with root package name */
    private int f709a;

    /* renamed from: b, reason: collision with root package name */
    private int f710b;
    private long c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;

    public void a(int i) {
        this.f709a = i;
    }

    public void b(int i) {
        this.f710b = i;
    }

    public void b(String str) {
        this.d = str;
    }

    public void c(String str) {
        this.e = str;
    }

    public void d(long j) {
        this.c = j;
    }

    public void d(String str) {
        this.f = str;
    }

    public int e() {
        return this.f709a;
    }

    public void e(String str) {
        this.g = str;
    }

    public int f() {
        return this.f710b;
    }

    public void f(String str) {
        this.h = str;
    }

    public String g() {
        return this.d;
    }

    public void g(String str) {
        this.i = str;
    }

    public String h() {
        return this.e;
    }

    public String i() {
        return this.f;
    }

    public String j() {
        return this.g;
    }

    public String k() {
        return this.h;
    }

    public String l() {
        return this.i;
    }

    public String toString() {
        return "Music:\nid:" + a() + "\nwidth:" + this.f709a + "\nheight:" + this.f710b + "\nsize:" + b() + "\ncreateTime:" + c() + "\nlastModified:" + this.c + "\nlatitude:" + this.d + "\nlongitude:" + this.e + "\nname:" + this.f + "\ndata:" + d() + "\nbucketName:" + this.g + "\ntype:" + this.h + "\ndescription:" + this.i;
    }
}
