package com.example.luckywheel.d;

import android.os.Handler;
import android.os.Looper;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private int f2339a;

    /* renamed from: b, reason: collision with root package name */
    private int f2340b;
    private c c;
    private final Timer d;
    private volatile boolean e;
    private TimerTask f;
    private Handler g;

    public b() {
        this(1, 0);
    }

    public b(int i, int i2) {
        this.d = new Timer();
        this.f = new h(this);
        this.g = new i(this, Looper.getMainLooper());
        this.f2339a = i;
        this.f2340b = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        switch (this.f2339a) {
            case 1:
                this.f2340b++;
                if (this.c != null) {
                    this.c.a(this.f2340b);
                    break;
                }
                break;
            case 2:
                this.f2340b--;
                if (this.f2340b < 0) {
                    b();
                    break;
                } else if (this.c != null) {
                    this.c.a(this.f2340b);
                    break;
                }
                break;
        }
    }

    public void a() {
        if (this.e) {
            return;
        }
        this.e = true;
        this.d.schedule(this.f, 1000L, 1000L);
        if (this.c != null) {
            this.c.a();
        }
    }

    public void a(c cVar) {
        this.c = cVar;
    }

    public void b() {
        this.d.cancel();
        this.f.cancel();
        this.e = false;
        if (this.c != null) {
            this.c.b();
        }
    }
}
