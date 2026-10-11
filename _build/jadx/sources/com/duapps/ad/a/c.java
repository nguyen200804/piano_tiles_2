package com.duapps.ad.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.duapps.ad.e;
import com.duapps.ad.stats.h;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.formats.NativeAppInstallAdView;
import com.google.android.gms.ads.formats.NativeContentAdView;

/* compiled from: NativeAdAMWrapper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends AdListener implements com.duapps.ad.entity.a.a {

    /* renamed from: a, reason: collision with root package name */
    private b f1994a;

    /* renamed from: b, reason: collision with root package name */
    private Context f1995b;
    private int c;
    private com.duapps.ad.b d;
    private d e;
    private long f;
    private String g;

    public c(Context context, int i, String str) {
        this.f1995b = context.getApplicationContext();
        this.c = i;
        this.g = str;
    }

    public void a(b bVar) {
        this.f1994a = bVar;
        this.f = System.currentTimeMillis();
    }

    private boolean n() {
        return this.f1994a != null;
    }

    public boolean a() {
        long currentTimeMillis = System.currentTimeMillis() - this.f;
        return currentTimeMillis > 0 && currentTimeMillis < 3600000;
    }

    @Override // com.duapps.ad.entity.a.a
    public void a(View view) {
        b(view);
    }

    @Override // com.duapps.ad.entity.a.a
    public void b() {
    }

    @Override // com.duapps.ad.entity.a.a
    public void c() {
    }

    @Override // com.duapps.ad.entity.a.a
    public String d() {
        if (n()) {
            return this.f1994a.f();
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public String e() {
        if (n()) {
            return this.f1994a.g();
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public String f() {
        if (n()) {
            return this.f1994a.e();
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public String g() {
        if (n()) {
            return this.f1994a.d();
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public String h() {
        if (n()) {
            return this.f1994a.c();
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public float i() {
        if (n()) {
            return this.f1994a.h();
        }
        return 0.0f;
    }

    @Override // com.duapps.ad.entity.a.a
    public int j() {
        if (n()) {
            if (this.f1994a.a()) {
                return 4;
            }
            return 5;
        }
        return -1;
    }

    @Override // com.duapps.ad.entity.a.a
    public Object k() {
        return this.f1994a;
    }

    @Override // com.duapps.ad.entity.a.a
    public void a(e eVar) {
    }

    private void b(View view) {
        if (view != null) {
            if (n() && (this.f1994a.f1993b != null || this.f1994a.f1992a != null)) {
                a(view, this.f1994a);
            }
            h.a(this.f1995b, this.c, this.g);
        }
    }

    private void a(View view, b bVar) {
        if (view instanceof NativeAppInstallAdView) {
            ((NativeAppInstallAdView) view).setNativeAd(bVar.f1993b);
        } else if (view instanceof NativeContentAdView) {
            ((NativeContentAdView) view).setNativeAd(bVar.f1992a);
        } else if (view instanceof ViewGroup) {
            a(((ViewGroup) view).getChildAt(0), bVar);
        }
    }

    public void a(d dVar) {
        this.e = dVar;
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        if (this.e != null) {
            this.e.d();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(int i) {
        if (this.e != null) {
            this.e.a(i);
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLeftApplication() {
        if (this.e != null) {
            this.e.c();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        if (this.d != null) {
            this.d.a();
        }
        if (this.e != null) {
            this.e.a();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        if (this.e != null) {
            this.e.b();
        }
    }

    @Override // com.duapps.ad.entity.a.a
    public String l() {
        return "admob";
    }

    @Override // com.duapps.ad.entity.a.a
    public Object m() {
        return this.f1994a;
    }

    @Override // com.duapps.ad.entity.a.a
    public void a(String str) {
        this.g = str;
    }
}
