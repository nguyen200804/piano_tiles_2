package com.duapps.ad.offerwall.ui;

import android.content.Context;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;

/* compiled from: IToolView.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class d extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    protected Context f2231a;

    /* renamed from: b, reason: collision with root package name */
    protected List<com.duapps.ad.entity.a.a> f2232b;
    protected com.duapps.ad.stats.d c;
    protected boolean d;
    protected int e;

    public abstract d a();

    public abstract List<com.duapps.ad.entity.a.a> a(List<com.duapps.ad.entity.a.a> list);

    public abstract List<com.duapps.ad.entity.a.a> b(List<com.duapps.ad.entity.a.a> list);

    public abstract void b();

    public abstract boolean c();

    public void a(int i) {
        this.e = i;
    }

    public d(Context context) {
        super(context);
        this.f2232b = new ArrayList();
        this.d = true;
        this.e = 0;
        this.f2231a = context;
    }

    protected void a(com.duapps.ad.entity.a.a aVar) {
        if (this.c == null) {
            this.c = new com.duapps.ad.stats.d(this.f2231a);
        }
        if (aVar instanceof com.duapps.ad.entity.c) {
            this.c.a(new com.duapps.ad.stats.f(((com.duapps.ad.entity.c) aVar).a(), "offerwall"));
        }
    }

    public void d() {
    }

    public void e() {
    }

    public void f() {
    }
}
