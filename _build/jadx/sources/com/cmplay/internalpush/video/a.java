package com.cmplay.internalpush.video;

import android.content.Context;
import com.cmplay.base.util.t;

/* compiled from: InnerPushAgent.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private int f1530a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f1531b;
    private boolean c;
    private boolean d;
    private boolean e = false;
    private String f;

    public void a(boolean z) {
        if (!z) {
            this.e = true;
        }
        this.f1530a = 0;
        this.f1531b = false;
        this.d = false;
        this.c = false;
    }

    public int a() {
        return this.f1530a;
    }

    public void a(int i) {
        this.f1530a = i;
    }

    public boolean b() {
        return this.d;
    }

    public void b(boolean z) {
        this.d = z;
    }

    public void c(boolean z) {
        this.c = z;
    }

    public String c() {
        return this.f;
    }

    public void a(String str) {
        this.f = str;
    }

    public boolean d() {
        return this.f1531b && !this.d;
    }

    public void a(boolean z, int i, boolean z2) {
        if (!this.f1531b) {
            this.f1531b = z;
        }
    }

    public boolean e() {
        return this.e;
    }

    public void d(boolean z) {
        this.e = z;
    }

    public void a(Context context, com.cmplay.internalpush.data.d dVar, t tVar) {
        com.cmplay.internalpush.a.b.a(context, dVar, tVar);
    }
}
