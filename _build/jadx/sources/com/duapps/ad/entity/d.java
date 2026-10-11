package com.duapps.ad.entity;

import android.content.Context;
import android.view.View;
import com.duapps.ad.base.h;
import com.duapps.ad.base.m;
import com.duapps.ad.e;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.NativeAd;

/* compiled from: NativeAdFBWrapper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d implements com.duapps.ad.entity.a.a, AdListener {
    private static final a g = new a() { // from class: com.duapps.ad.entity.d.1
        @Override // com.duapps.ad.entity.a
        public void a(d dVar, boolean z) {
        }

        @Override // com.duapps.ad.entity.a
        public void a(d dVar) {
        }

        @Override // com.duapps.ad.entity.a
        public void a(int i, String str) {
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private NativeAd f2142a;
    private String c;
    private Context e;
    private int f;
    private String i;

    /* renamed from: b, reason: collision with root package name */
    private a f2143b = g;
    private volatile boolean d = false;
    private long h = 0;

    public boolean a() {
        long currentTimeMillis = System.currentTimeMillis() - this.h;
        h.c("NativeAdFBWrapper", "isValid()...ttl : " + currentTimeMillis + ", FacebookCacheTime : " + m.q(this.e));
        return currentTimeMillis < m.q(this.e) && currentTimeMillis > 0;
    }

    public d(Context context, String str, int i, String str2) {
        this.e = context;
        this.c = str;
        this.f = i;
        this.f2142a = new NativeAd(context, str);
        this.f2142a.setAdListener(this);
        this.i = str2;
    }

    public void n() {
        if (this.f2142a.isAdLoaded()) {
            this.f2143b.a(this, true);
        } else if (!this.d) {
            this.d = true;
            try {
                NativeAd nativeAd = this.f2142a;
            } catch (Exception e) {
            }
        }
    }

    public void a(a aVar) {
        if (aVar == null) {
            this.f2143b = g;
        } else {
            this.f2143b = aVar;
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        this.f2143b.a(adError.getErrorCode(), adError.getErrorMessage());
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        this.h = System.currentTimeMillis();
        this.f2143b.a(this, false);
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        this.f2143b.a(this);
        com.duapps.ad.stats.h.d(this.e, this.f, this.i);
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(Ad ad) {
    }

    @Override // com.duapps.ad.entity.a.a
    public void c() {
        this.f2143b = g;
        this.f2142a.destroy();
    }

    public String o() {
        return this.c;
    }

    @Override // com.duapps.ad.entity.a.a
    public float i() {
        NativeAd.Rating adStarRating = this.f2142a.getAdStarRating();
        if (adStarRating != null) {
            h.c("NativeAdFBWrapper", "getAdStarRating rating.getValue() : " + adStarRating.getValue());
            return (float) adStarRating.getValue();
        }
        h.c("NativeAdFBWrapper", "getAdStarRating no rating, we get default rating.");
        return 4.555f;
    }

    @Override // com.duapps.ad.entity.a.a
    public String d() {
        return this.f2142a.getAdCoverImage().getUrl();
    }

    @Override // com.duapps.ad.entity.a.a
    public String e() {
        return this.f2142a.getAdIcon().getUrl();
    }

    @Override // com.duapps.ad.entity.a.a
    public String f() {
        return this.f2142a.getAdCallToAction();
    }

    @Override // com.duapps.ad.entity.a.a
    public String g() {
        return this.f2142a.getAdBody();
    }

    @Override // com.duapps.ad.entity.a.a
    public String h() {
        return this.f2142a.getAdTitle();
    }

    @Override // com.duapps.ad.entity.a.a
    public void b() {
        this.f2142a.unregisterView();
    }

    @Override // com.duapps.ad.entity.a.a
    public void a(View view) {
        try {
            this.f2142a.registerViewForInteraction(view);
        } catch (Exception e) {
        }
        com.duapps.ad.stats.h.c(this.e, this.f, this.i);
    }

    @Override // com.duapps.ad.entity.a.a
    public void a(e eVar) {
    }

    @Override // com.duapps.ad.entity.a.a
    public int j() {
        return 2;
    }

    @Override // com.duapps.ad.entity.a.a
    public String l() {
        return "fb";
    }

    @Override // com.duapps.ad.entity.a.a
    public Object k() {
        return this.f2142a;
    }

    @Override // com.duapps.ad.entity.a.a
    public Object m() {
        return this.f2142a;
    }

    @Override // com.duapps.ad.entity.a.a
    public void a(String str) {
        this.i = str;
    }
}
