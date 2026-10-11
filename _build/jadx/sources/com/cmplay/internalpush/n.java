package com.cmplay.internalpush;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.cmplay.base.util.webview.ui.WebViewActivity;
import com.cmplay.internalpush.i;
import com.cmplay.internalpush.ui.OpenScreenActivity;
import com.cmplay.internalpush.ui.OpenScreenVideoActivity;

/* compiled from: OpenScreen.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n implements i {

    /* renamed from: a, reason: collision with root package name */
    private int f1479a;

    /* renamed from: b, reason: collision with root package name */
    private i.a f1480b;

    /* compiled from: OpenScreen.java */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static n f1483a = new n();
    }

    public static n a() {
        return a.f1483a;
    }

    public boolean a(Context context, int i, boolean z) {
        o.a().a(1, 19, "", 0L, "", 0, 0, 0L);
        this.f1479a = i;
        boolean a2 = com.cmplay.internalpush.data.n.a(context).a(z, true);
        if (!a2) {
            com.cmplay.internalpush.data.n.a(context).b();
        }
        return a2;
    }

    public String a(Context context) {
        return com.cmplay.internalpush.data.n.a(context).b(true);
    }

    public void a(Activity activity) {
        String a2 = a((Context) activity);
        if (!TextUtils.isEmpty(a2)) {
            switch (new com.cmplay.internalpush.data.g(a2).l()) {
                case 1:
                case 3:
                    OpenScreenActivity.a(activity, a2);
                    break;
                case 2:
                    OpenScreenVideoActivity.a(activity, a2);
                    break;
                default:
                    OpenScreenActivity.a(activity, a2);
                    break;
            }
        }
    }

    public void a(Context context, final com.cmplay.internalpush.data.d dVar) {
        if (dVar != null) {
            com.cmplay.base.util.g.a("internal_push", "OpenScreen.onClickAd()  proId:" + dVar.d());
            if (dVar.h() == 1) {
                com.cmplay.internalpush.a.b.a(context, dVar, new com.cmplay.base.util.t() { // from class: com.cmplay.internalpush.n.1
                    @Override // com.cmplay.base.util.t
                    public void a(boolean z) {
                        if (z) {
                            o.a().a(1, 2, dVar.f(), dVar.d(), "", 1, 0, dVar.m());
                        } else {
                            o.a().a(1, 2, dVar.f(), dVar.d(), "", 2, 0, dVar.m());
                        }
                    }
                });
            } else {
                com.cmplay.internalpush.a.b.a(context, dVar, null);
                o.a().a(1, 2, dVar.f(), dVar.d(), "", b(), 0, dVar.m());
            }
            com.cmplay.internalpush.data.n.a(context).a(dVar.d(), 2);
            if (this.f1480b != null) {
                this.f1480b.a();
            }
        }
    }

    public void b(Context context, com.cmplay.internalpush.data.d dVar) {
        WebViewActivity.StartWebViewActivity(context, dVar.k(), 0);
        o.a().a(1, 15, dVar.f(), dVar.d(), "", b(), 0, dVar.m());
    }

    public boolean c(Context context, com.cmplay.internalpush.data.d dVar) {
        if (this.f1480b != null) {
            this.f1480b.a();
        }
        if (dVar != null) {
            o.a().a(1, 3, dVar.f(), dVar.d(), "", b(), 0, dVar.m());
        }
        return false;
    }

    public void d(Context context, com.cmplay.internalpush.data.d dVar) {
        if (this.f1480b != null) {
            this.f1480b.a();
        }
        if (dVar != null) {
            o.a().a(1, 3, dVar.f(), dVar.d(), "", b(), 0, dVar.m());
        }
    }

    public void a(i.a aVar) {
        this.f1480b = aVar;
    }

    public int b() {
        return this.f1479a;
    }
}
