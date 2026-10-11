package com.cmplay.internalpush;

import android.content.Context;
import android.text.TextUtils;
import com.cmplay.internalpush.i;

/* compiled from: Family.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g implements i {

    /* renamed from: a, reason: collision with root package name */
    private int f1471a;

    /* renamed from: b, reason: collision with root package name */
    private i.a f1472b;

    /* compiled from: Family.java */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static g f1473a = new g();
    }

    public static g a() {
        return a.f1473a;
    }

    public boolean a(Context context) {
        return com.cmplay.internalpush.data.b.a(context).e();
    }

    public boolean b(Context context) {
        o.a().a(7, 19, "", 0L, "", 0, 0, 0L);
        boolean z = TextUtils.isEmpty(com.cmplay.internalpush.data.b.a(context).a(false)) ? false : true;
        if (!z) {
            com.cmplay.internalpush.data.b.a(context).b();
        }
        return z;
    }

    public String c(Context context) {
        return com.cmplay.internalpush.data.b.a(context).a(true);
    }

    public boolean d(Context context) {
        return com.cmplay.internalpush.data.b.a(context).f();
    }

    public void a(Context context, com.cmplay.internalpush.data.d dVar) {
        if (dVar != null) {
            com.cmplay.internalpush.a.b.a(context, dVar, null);
            com.cmplay.internalpush.data.b.a(context).a(dVar.d(), 2);
            if (this.f1472b != null) {
                this.f1472b.a();
            }
            o.a().a(7, 2, dVar.f(), dVar.d(), "", com.cmplay.internalpush.a.b.a(context, dVar.f()) ? 2 : 1, 0, dVar.m());
        }
    }

    public int b() {
        return this.f1471a;
    }
}
