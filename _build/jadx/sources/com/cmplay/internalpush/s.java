package com.cmplay.internalpush;

import android.content.Context;
import android.text.TextUtils;
import com.cmplay.internalpush.i;

/* compiled from: Setting.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class s implements i {

    /* renamed from: a, reason: collision with root package name */
    private int f1490a;

    /* renamed from: b, reason: collision with root package name */
    private i.a f1491b;

    /* compiled from: Setting.java */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static s f1492a = new s();
    }

    public static s a() {
        return a.f1492a;
    }

    public boolean a(Context context) {
        return com.cmplay.internalpush.data.q.a(context).e();
    }

    public boolean b(Context context) {
        o.a().a(3, 19, "", 0L, "", 0, 0, 0L);
        boolean z = TextUtils.isEmpty(com.cmplay.internalpush.data.q.a(context).b(false)) ? false : true;
        if (!z) {
            com.cmplay.internalpush.data.q.a(context).b();
        }
        return z;
    }

    public String c(Context context) {
        return com.cmplay.internalpush.data.q.a(context).b(true);
    }

    public void a(Context context, com.cmplay.internalpush.data.d dVar) {
        if (dVar != null) {
            com.cmplay.internalpush.a.b.a(context, dVar, null);
            com.cmplay.internalpush.data.q.a(context).a(dVar.d(), 2);
            if (this.f1491b != null) {
                this.f1491b.a();
            }
            o.a().a(3, 2, dVar.f(), dVar.d(), "", b(), 0, dVar.m());
        }
    }

    public int b() {
        return this.f1490a;
    }
}
