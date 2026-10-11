package com.duapps.ad.entity.a;

import android.content.Context;

/* compiled from: BaseChannel.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b<T> {

    /* renamed from: a, reason: collision with root package name */
    private boolean f2127a;
    public volatile boolean c;
    public volatile boolean d;
    public volatile boolean e;
    public long f;
    public long g;
    protected Context h;
    protected int i;
    protected d j;
    public String k;
    public volatile boolean l;
    public int m;
    protected com.duapps.ad.b n;

    public b(Context context, int i, long j) {
        this(context, i, j, "");
    }

    public b(Context context, int i, long j, String str) {
        this.n = new com.duapps.ad.b() { // from class: com.duapps.ad.entity.a.b.1
            @Override // com.duapps.ad.b
            public void a(a aVar) {
            }

            @Override // com.duapps.ad.b
            public void a(com.duapps.ad.a aVar) {
                if (b.this.j != null && b.this.f2127a) {
                    b.this.j.a(b.this, aVar);
                }
            }

            @Override // com.duapps.ad.b
            public void a() {
                if (b.this.j != null) {
                    b.this.j.a(b.this);
                }
            }
        };
        this.f = j;
        this.h = context;
        this.i = i;
        this.k = str;
        com.duapps.ad.c.b.c.a(i);
    }

    public int b() {
        return 0;
    }

    public void a(boolean z) {
        this.f2127a = z;
    }

    public T d() {
        return null;
    }

    public int c() {
        return 0;
    }

    public void a(d dVar) {
        this.j = dVar;
    }
}
