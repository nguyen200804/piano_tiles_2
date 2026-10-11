package com.cmplay.ad.b;

import android.app.Activity;
import android.util.Log;
import com.cmplay.ad.b;
import com.cmplay.ad.c;
import com.cmplay.util.c.a.e;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;
import java.lang.ref.WeakReference;

/* compiled from: FacebookVideoAds.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends b implements RewardedVideoAdListener {

    /* renamed from: b, reason: collision with root package name */
    private static WeakReference<Activity> f1150b;
    private static a c;

    /* renamed from: a, reason: collision with root package name */
    private RewardedVideoAd f1151a;
    private c e;
    private boolean d = false;
    private int f = 1;

    private a() {
    }

    public Activity a() {
        if (f1150b == null) {
            return null;
        }
        return f1150b.get();
    }

    public static a b() {
        if (c == null) {
            synchronized (a.class) {
                if (c == null) {
                    c = new a();
                }
            }
        }
        return c;
    }

    private void c() {
        a("loadRewardedVideoAd");
        if (a() != null) {
            if (this.f1151a == null) {
                this.f1151a = new RewardedVideoAd(a(), "1642150546050422_1885510361714438");
                this.f1151a.setAdListener(this);
                RewardedVideoAd rewardedVideoAd = this.f1151a;
                return;
            }
            RewardedVideoAd rewardedVideoAd2 = this.f1151a;
        }
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onCreate(Activity activity) {
        super.onCreate(activity);
        f1150b = new WeakReference<>(activity);
        this.f = 1;
        c();
        new e().a(1, 0, this.f, 6, com.cmplay.ad.a.f);
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public void onRewardedVideoCompleted() {
        a("onRewardedVideoCompleted");
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public void onRewardedVideoClosed() {
        a("onRewardedVideoClosed");
        this.f = 2;
        if (this.e != null) {
            this.e.a(false);
        }
        c();
        new e().a(1, 0, this.f, 6, com.cmplay.ad.a.f);
    }

    @Override // com.facebook.ads.RewardedVideoAdListener, com.facebook.ads.AdListener
    public void onLoggingImpression(Ad ad) {
        a("onLoggingImpression" + ad.getPlacementId());
        if (this.e != null) {
            this.e.a();
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        a("onError" + adError.getErrorMessage());
        new e().a(3, adError.getErrorCode(), this.f, 6, com.cmplay.ad.a.f);
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        a("onAdLoaded" + ad.getPlacementId());
        new e().a(2, 0, this.f, 6, com.cmplay.ad.a.f);
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        a("onAdClicked" + ad.getPlacementId());
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onResume(Activity activity) {
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onPaused(Activity activity) {
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean canShow(int reportFrom) {
        a("canshow()" + (this.f1151a != null && this.f1151a.isAdLoaded()));
        return this.f1151a != null && this.f1151a.isAdLoaded();
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean show(int reportFrom) {
        if (this.f1151a == null || !this.f1151a.isAdLoaded()) {
            return false;
        }
        return this.f1151a.show();
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void prepare() {
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void setListener(c l) {
        this.e = l;
    }

    private void a(String str) {
        if (this.d) {
            Log.d("FacebookVideoAds", str);
        }
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onDestroy(Activity activity) {
        if (this.f1151a != null) {
            this.f1151a.destroy();
            this.f1151a = null;
        }
        super.onDestroy(activity);
    }
}
