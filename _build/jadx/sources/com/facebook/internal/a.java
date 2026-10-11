package com.facebook.internal;

import android.content.Intent;
import java.util.UUID;

/* compiled from: AppCall.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f3155a;

    /* renamed from: b, reason: collision with root package name */
    private UUID f3156b;
    private Intent c;
    private int d;

    public static a a() {
        return f3155a;
    }

    public static synchronized a a(UUID uuid, int i) {
        a a2;
        synchronized (a.class) {
            a2 = a();
            if (a2 != null && a2.c().equals(uuid) && a2.d() == i) {
                a((a) null);
            } else {
                a2 = null;
            }
        }
        return a2;
    }

    private static synchronized boolean a(a aVar) {
        boolean z;
        synchronized (a.class) {
            a a2 = a();
            f3155a = aVar;
            z = a2 != null;
        }
        return z;
    }

    public a(int i) {
        this(i, UUID.randomUUID());
    }

    public a(int i, UUID uuid) {
        this.f3156b = uuid;
        this.d = i;
    }

    public Intent b() {
        return this.c;
    }

    public UUID c() {
        return this.f3156b;
    }

    public int d() {
        return this.d;
    }

    public void a(Intent intent) {
        this.c = intent;
    }

    public boolean e() {
        return a(this);
    }
}
