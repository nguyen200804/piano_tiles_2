package com.cmcm.dmc.sdk.a;

import android.os.Handler;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private Handler f682a;

    /* renamed from: b, reason: collision with root package name */
    private int f683b;
    private int c;
    private Runnable d;
    private long e;
    private Runnable f;

    public l() {
        this(Integer.MAX_VALUE, new Handler());
    }

    public l(int i) {
        this(i, new Handler());
    }

    public l(int i, Handler handler) {
        this.f683b = Math.max(1, i);
        this.f682a = handler;
    }

    public l(Handler handler) {
        this(Integer.MAX_VALUE, handler);
    }

    static /* synthetic */ int b(l lVar) {
        int i = lVar.c + 1;
        lVar.c = i;
        return i;
    }

    public void a(long j) {
        this.e = j;
    }

    public void a(Runnable runnable, long j) {
        if (runnable == null) {
            throw new RuntimeException("invalid parameters");
        }
        b();
        this.d = runnable;
        this.c = 0;
        a(j);
        if (this.f == null) {
            this.f = new Runnable() { // from class: com.cmcm.dmc.sdk.a.l.1
                @Override // java.lang.Runnable
                public void run() {
                    if (l.this.d != null) {
                        l.this.d.run();
                        l.b(l.this);
                        if (l.this.c < l.this.f683b) {
                            l.this.f682a.postDelayed(l.this.f, l.this.e);
                        } else {
                            l.this.d = null;
                        }
                    }
                }
            };
        }
        this.f682a.postDelayed(this.f, this.e);
    }

    public boolean a() {
        return this.d != null;
    }

    public void b() {
        if (a()) {
            this.d = null;
            this.f682a.removeCallbacks(this.f);
        }
    }
}
