package com.cmplay.internalpush;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.cmplay.internalpush.i;
import com.cmplay.internalpush.ui.InsertScreenActivity;

/* compiled from: InsertScreen.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j implements i {

    /* renamed from: a, reason: collision with root package name */
    private int f1474a;

    /* renamed from: b, reason: collision with root package name */
    private i.a f1475b;

    /* compiled from: InsertScreen.java */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static j f1476a = new j();
    }

    public static j a() {
        return a.f1476a;
    }

    public boolean a(Context context, int i, boolean z) {
        o.a().a(6, 19, "", 0L, "", 0, 0, 0L);
        this.f1474a = i;
        boolean a2 = com.cmplay.internalpush.data.k.a(context).a(z, true);
        if (!a2) {
            com.cmplay.internalpush.data.k.a(context).b();
        }
        return a2;
    }

    public String a(Context context) {
        return com.cmplay.internalpush.data.k.a(context).b(true);
    }

    public void a(Activity activity) {
        String a2 = a((Context) activity);
        if (!TextUtils.isEmpty(a2)) {
            com.cmplay.base.util.g.a("插屏json-----" + a2);
            InsertScreenActivity.a(activity, a2);
        }
    }

    public void a(Context context, com.cmplay.internalpush.data.d dVar) {
        if (dVar != null) {
            com.cmplay.internalpush.a.b.a(context, dVar, null);
            com.cmplay.internalpush.data.k.a(context).a(dVar.d(), 2);
            if (this.f1475b != null) {
                this.f1475b.a();
            }
            o.a().a(6, 2, dVar.f(), dVar.d(), "", b(), 0, dVar.m());
        }
    }

    public boolean b(Context context, com.cmplay.internalpush.data.d dVar) {
        if (this.f1475b != null) {
            this.f1475b.a();
        }
        o.a().a(6, 3, dVar.f(), dVar.d(), "", b(), 0, dVar.m());
        return false;
    }

    public void c(Context context, com.cmplay.internalpush.data.d dVar) {
        if (this.f1475b != null) {
            this.f1475b.a();
        }
        o.a().a(6, 3, dVar.f(), dVar.d(), "", b(), 0, dVar.m());
    }

    public int b() {
        return this.f1474a;
    }
}
