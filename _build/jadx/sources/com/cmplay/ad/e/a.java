package com.cmplay.ad.e;

import android.app.Activity;
import android.util.Log;
import com.cmcm.orion.adsdk.e;
import com.cmcm.orion.picks.b.b;
import com.cmplay.ad.b;
import com.cmplay.ad.c;
import java.lang.ref.WeakReference;

/* compiled from: OrionVideoAds.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends b implements b.a {

    /* renamed from: a, reason: collision with root package name */
    private static WeakReference<Activity> f1157a;

    /* renamed from: b, reason: collision with root package name */
    private static a f1158b;
    private c d;
    private com.cmcm.orion.picks.b.b e;
    private String c = "OrionVideoAds";
    private int f = 1;

    private a() {
    }

    public Activity d() {
        if (f1157a == null) {
            return null;
        }
        return f1157a.get();
    }

    public static a e() {
        if (f1158b == null) {
            synchronized (a.class) {
                if (f1158b == null) {
                    f1158b = new a();
                }
            }
        }
        return f1158b;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void setListener(c l) {
        this.d = l;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean canShow(int reportFrom) {
        Log.d(this.c, this.e + " " + this.e.b());
        if (this.e != null && this.e.b()) {
            Log.d(this.c, "canshow true");
            return true;
        }
        Log.d(this.c, "canshow false");
        return false;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean show(int reportFrom) {
        if (!canShow(reportFrom)) {
            return false;
        }
        this.e.c();
        return true;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onCreate(Activity activity) {
        Log.d(this.c, "onCreate");
        super.onCreate(activity);
        f1157a = new WeakReference<>(activity);
        e.a(activity.getApplication(), "144");
        e.a(new com.cmcm.orion.adsdk.c() { // from class: com.cmplay.ad.e.a.1
        });
        f();
        this.f = 1;
        new com.cmplay.util.c.a.e().a(1, 0, this.f, 7, com.cmplay.ad.a.f);
    }

    private void f() {
        this.e = new com.cmcm.orion.picks.b.b(d(), "144100");
        this.e.a(this);
        this.e.a();
    }

    @Override // com.cmcm.orion.picks.b.b.a
    public void a() {
        if (this.d != null) {
            Log.d(this.c, "on ad start");
            this.d.a();
        }
    }

    @Override // com.cmcm.orion.picks.b.b.a
    public void b() {
        if (this.d != null) {
            Log.d(this.c, "on ad onFinished");
            this.d.a(false);
        }
        f();
        this.f = 2;
        new com.cmplay.util.c.a.e().a(1, 0, this.f, 7, com.cmplay.ad.a.f);
    }

    @Override // com.cmcm.orion.picks.b.b.a
    public void a(String str) {
        if (this.d != null) {
            Log.d(this.c, "on ad onViewShowFail");
            this.d.a(true);
        }
        f();
        this.f = 4;
        new com.cmplay.util.c.a.e().a(1, 0, this.f, 7, com.cmplay.ad.a.f);
    }

    @Override // com.cmcm.orion.picks.b.b.a
    public void a(int i) {
        Log.d(this.c, "on ad load fail:" + i);
        new com.cmplay.util.c.a.e().a(3, i, this.f, 7, com.cmplay.ad.a.f);
    }

    @Override // com.cmcm.orion.picks.b.b.a
    public void c() {
        Log.d(this.c, "on ad load success");
        new com.cmplay.util.c.a.e().a(2, 0, this.f, 7, com.cmplay.ad.a.f);
    }
}
