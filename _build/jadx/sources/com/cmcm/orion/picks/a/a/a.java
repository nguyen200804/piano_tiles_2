package com.cmcm.orion.picks.a.a;

import android.text.TextUtils;
import java.io.Serializable;

/* compiled from: Ad.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a implements Serializable {
    private String A;
    private int B;
    private int C;
    private String E;
    private int G;
    private String H;
    private long I;
    private int K;
    private int L;

    /* renamed from: a, reason: collision with root package name */
    private String f820a;

    /* renamed from: b, reason: collision with root package name */
    private String f821b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private double h;
    private String i;
    private int j;
    private int k;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private int r;
    private String s;
    private String t;
    private long u;
    private String v;
    private String x;
    private String y;
    private l z;
    private int l = -1;
    private boolean w = false;
    private String D = "0";
    private boolean F = false;
    private int J = 100;

    public final int a() {
        return this.G;
    }

    public final void a(int i) {
        this.G = i;
    }

    public final String b() {
        return this.s;
    }

    public final void a(String str) {
        this.s = str;
    }

    public final String c() {
        return this.t;
    }

    public final void b(String str) {
        this.t = str;
    }

    public final String d() {
        return this.v;
    }

    public final void c(String str) {
        this.v = str;
    }

    public final String e() {
        return this.x;
    }

    public final void d(String str) {
        this.x = str;
    }

    public final long f() {
        return this.u;
    }

    public final void a(long j) {
        this.u = j;
    }

    public final int g() {
        return this.r;
    }

    public final void b(int i) {
        this.r = i;
    }

    public final String h() {
        return this.q;
    }

    public final void e(String str) {
        this.q = str;
    }

    public final void f(String str) {
        this.f820a = str;
    }

    public final String i() {
        return this.f820a;
    }

    public final void g(String str) {
        this.f821b = str;
    }

    public final String j() {
        return this.f821b;
    }

    public final void h(String str) {
        this.c = str;
    }

    public final String k() {
        return this.c;
    }

    public final void i(String str) {
        this.d = str;
    }

    public final String l() {
        return this.d;
    }

    public final void j(String str) {
        this.e = str;
    }

    public final String m() {
        return this.e;
    }

    public final void k(String str) {
        this.f = str;
    }

    public final String n() {
        return this.f;
    }

    public final void l(String str) {
        this.g = str;
    }

    public final String o() {
        return this.g;
    }

    public final void m(String str) {
        this.i = str;
    }

    public final String p() {
        return this.i;
    }

    public final void c(int i) {
        this.j = i;
    }

    public final int q() {
        return this.j;
    }

    public final double r() {
        return this.h;
    }

    public final void a(double d) {
        this.h = d;
    }

    public final void d(int i) {
        this.k = i;
    }

    public final int s() {
        return this.k;
    }

    public final int t() {
        return this.l;
    }

    public final void e(int i) {
        this.l = i;
    }

    public final boolean u() {
        return this.k == 512;
    }

    public final boolean v() {
        return this.k == 8;
    }

    public final String w() {
        return this.A;
    }

    public final void n(String str) {
        this.A = str;
    }

    public final int x() {
        return this.B;
    }

    public final void f(int i) {
        this.B = i;
    }

    public final boolean y() {
        if (com.cmcm.orion.utils.b.a(this.p, false)) {
            return true;
        }
        return System.currentTimeMillis() - this.u < h.c(this.v);
    }

    public final void a(boolean z) {
        this.w = z;
    }

    public final boolean z() {
        return this.w;
    }

    public final boolean A() {
        return this.G == com.cmcm.orion.adsdk.a.NORMAL.c;
    }

    public final void o(String str) {
        this.m = str;
    }

    public final String B() {
        return this.m;
    }

    public final String C() {
        return this.n;
    }

    public final void p(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.n = str.trim();
        } else {
            this.n = str;
        }
    }

    public final String D() {
        return this.p;
    }

    public final void q(String str) {
        this.p = str;
    }

    public final String E() {
        return this.o;
    }

    public final void r(String str) {
        this.o = str;
    }

    public final boolean F() {
        return this.k == 256 || this.k == 512 || this.k == 8 || this.k == 64;
    }

    public final String G() {
        return this.y;
    }

    public final void s(String str) {
        this.y = str;
    }

    public final void a(l lVar) {
        this.z = lVar;
    }

    public final void t(String str) {
        this.D = str;
    }

    public final String H() {
        return this.D;
    }

    public final void u(String str) {
        this.E = str;
    }

    public final String I() {
        return this.E;
    }

    public final int J() {
        return this.C;
    }

    public final void g(int i) {
        this.C = i;
    }

    public final boolean equals(Object o) {
        return ((a) o).B == this.B;
    }

    public final void v(String str) {
        this.H = str;
    }

    public final String K() {
        return this.H;
    }

    public final void b(long j) {
        this.I = j;
    }

    public final long L() {
        return this.I;
    }

    public final void h(int i) {
        this.K = i;
    }

    public final int M() {
        return this.K;
    }

    public final void i(int i) {
        this.L = i;
    }

    public final int N() {
        return this.L;
    }

    public final void j(int i) {
        this.J = i;
    }

    public final int O() {
        return this.J;
    }
}
