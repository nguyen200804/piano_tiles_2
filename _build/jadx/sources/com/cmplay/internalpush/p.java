package com.cmplay.internalpush;

import android.content.Context;
import com.cmplay.internalpush.i;

/* compiled from: ResultPage.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class p implements i {

    /* renamed from: a, reason: collision with root package name */
    private int f1485a;

    /* renamed from: b, reason: collision with root package name */
    private i.a f1486b;

    /* compiled from: ResultPage.java */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static p f1487a = new p();
    }

    public static p a() {
        return a.f1487a;
    }

    public boolean a(Context context, int i, boolean z) {
        o.a().a(2, 19, "", 0L, "", 0, 0, 0L);
        this.f1485a = i;
        boolean a2 = com.cmplay.internalpush.data.p.a(context).a(z, true);
        if (!a2) {
            com.cmplay.internalpush.data.p.a(context).b();
        }
        return a2;
    }

    public String a(Context context) {
        return com.cmplay.internalpush.data.p.a(context).b(true);
    }

    public void a(Context context, com.cmplay.internalpush.data.d dVar) {
        if (dVar != null) {
            com.cmplay.base.util.g.a("internal_push", "ResultPage.onClickAd()  proId:" + dVar.d());
            com.cmplay.internalpush.a.b.a(context, dVar, null);
            com.cmplay.internalpush.data.p.a(context).a(dVar.d(), 2);
            if (this.f1486b != null) {
                this.f1486b.a();
            }
            o.a().a(2, 2, dVar.f(), dVar.d(), "", b(), 0, dVar.m());
        }
    }

    public int b() {
        return this.f1485a;
    }
}
