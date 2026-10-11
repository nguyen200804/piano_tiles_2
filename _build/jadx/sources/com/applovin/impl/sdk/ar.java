package com.applovin.impl.sdk;

import java.util.LinkedList;
import java.util.Queue;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ar {

    /* renamed from: a, reason: collision with root package name */
    private final int f434a;

    /* renamed from: b, reason: collision with root package name */
    private final Queue f435b;
    private final Object c;

    ar(int i) {
        this.f434a = i > 10 ? 10 : i;
        this.f435b = new LinkedList();
        this.c = new Object();
    }

    int a() {
        int size;
        synchronized (this.c) {
            size = this.f435b.size();
        }
        return size;
    }

    void a(ay ayVar) {
        synchronized (this.c) {
            if (!c()) {
                this.f435b.offer(ayVar);
            }
        }
    }

    int b() {
        return this.f434a;
    }

    boolean c() {
        boolean z;
        synchronized (this.c) {
            z = a() >= this.f434a;
        }
        return z;
    }

    boolean d() {
        boolean z;
        synchronized (this.c) {
            z = a() == 0;
        }
        return z;
    }

    ay e() {
        ay ayVar;
        try {
            synchronized (this.c) {
                ayVar = !d() ? (ay) this.f435b.poll() : null;
            }
            return ayVar;
        } catch (Exception e) {
            return null;
        }
    }
}
