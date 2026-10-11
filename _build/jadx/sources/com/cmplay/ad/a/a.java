package com.cmplay.ad.a;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.cmplay.ad.b;
import com.cmplay.ad.c;
import com.cmplay.util.c.a.e;
import com.cmplay.util.v;
import com.jirbo.adcolony.f;
import com.jirbo.adcolony.g;
import com.jirbo.adcolony.h;
import com.jirbo.adcolony.i;
import com.jirbo.adcolony.p;
import com.jirbo.adcolony.q;
import com.jirbo.adcolony.s;

/* compiled from: AdColonyAds.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends b implements h, i, q {
    private static a e = null;
    private c c;

    /* renamed from: a, reason: collision with root package name */
    private final String f1148a = "app3de8e4a1fb3148c191";

    /* renamed from: b, reason: collision with root package name */
    private final String f1149b = "vzf0da13c6e25c4973ba";
    private Context d = null;

    private a() {
    }

    public static a a() {
        if (e == null) {
            synchronized (a.class) {
                if (e == null) {
                    e = new a();
                }
            }
        }
        return e;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onCreate(Activity activity) {
        this.d = activity.getApplicationContext();
        f.a(activity, "version:" + String.valueOf(v.d(activity, activity.getPackageName())) + ",store:google", "app3de8e4a1fb3148c191", "vzf0da13c6e25c4973ba");
        f.a((h) this);
        f.a((q) this);
        new e().a(1, 0, 1, 5, com.cmplay.ad.a.f);
    }

    @Override // com.jirbo.adcolony.h
    public void a(boolean z, String str) {
    }

    @Override // com.jirbo.adcolony.i
    public void a(g gVar) {
        if (this.c != null) {
            this.c.a(gVar.a() || gVar.b());
        }
    }

    @Override // com.jirbo.adcolony.i
    public void b(g gVar) {
        if (this.c != null) {
            this.c.a();
        }
    }

    @Override // com.jirbo.adcolony.q
    public void a(s sVar) {
        sVar.b();
        sVar.a();
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void setListener(c l) {
        this.c = l;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean canShow(int reportFrom) {
        return TextUtils.equals(f.c("vzf0da13c6e25c4973ba"), "active");
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean show(int reportFrom) {
        if (!canShow(reportFrom)) {
            return false;
        }
        new p().a(this).k();
        return true;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onResume(Activity activity) {
        f.a(activity);
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onPaused(Activity activity) {
        f.c();
    }
}
