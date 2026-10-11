package com.facebook.ads;

import android.content.Context;
import android.util.Log;
import com.facebook.ads.internal.DisplayAdController;
import com.facebook.ads.internal.a;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.x;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.d;
import com.facebook.ads.internal.f;
import com.facebook.ads.internal.server.AdPlacementType;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class RewardedVideoAd implements Ad {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2529a = RewardedVideoAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final Context f2530b;
    private final String c;
    private DisplayAdController d;
    private boolean e = false;
    private RewardedVideoAdListener f;
    private RewardData g;

    public RewardedVideoAd(Context context, String str) {
        this.f2530b = context;
        this.c = str;
    }

    private void a(String str, boolean z) {
        try {
            b(str, z);
        } catch (Exception e) {
            Log.e(f2529a, "Error loading rewarded video ad", e);
            if (this.f != null) {
                this.f.onError(this, AdError.INTERNAL_ERROR);
            }
        }
    }

    private final void a(boolean z) {
        if (this.d != null) {
            this.d.b(z);
            this.d = null;
        }
    }

    private void b(String str, boolean z) {
        a(false);
        this.e = false;
        this.d = new DisplayAdController(this.f2530b, this.c, f.REWARDED_VIDEO, AdPlacementType.REWARDED_VIDEO, AdSize.INTERSTITIAL, d.ADS, 1, true);
        this.d.a(z);
        this.d.a(new a() { // from class: com.facebook.ads.RewardedVideoAd.1
            @Override // com.facebook.ads.internal.a
            public void a() {
                if (RewardedVideoAd.this.f != null) {
                    RewardedVideoAd.this.f.onAdClicked(RewardedVideoAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(AdAdapter adAdapter) {
                if (RewardedVideoAd.this.g != null) {
                    ((x) adAdapter).a(RewardedVideoAd.this.g);
                }
                RewardedVideoAd.this.e = true;
                if (RewardedVideoAd.this.f != null) {
                    RewardedVideoAd.this.f.onAdLoaded(RewardedVideoAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(b bVar) {
                if (RewardedVideoAd.this.f != null) {
                    RewardedVideoAd.this.f.onError(RewardedVideoAd.this, bVar.b());
                }
            }

            @Override // com.facebook.ads.internal.a
            public void b() {
                if (RewardedVideoAd.this.f != null) {
                    RewardedVideoAd.this.f.onLoggingImpression(RewardedVideoAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void f() {
                RewardedVideoAd.this.f.onRewardedVideoCompleted();
            }

            @Override // com.facebook.ads.internal.a
            public void g() {
                if (RewardedVideoAd.this.f != null) {
                    RewardedVideoAd.this.f.onRewardedVideoClosed();
                }
            }

            @Override // com.facebook.ads.internal.a
            public void h() {
                if (RewardedVideoAd.this.f instanceof S2SRewardedVideoAdListener) {
                    ((S2SRewardedVideoAdListener) RewardedVideoAd.this.f).onRewardServerFailed();
                }
            }

            @Override // com.facebook.ads.internal.a
            public void i() {
                if (RewardedVideoAd.this.f instanceof S2SRewardedVideoAdListener) {
                    ((S2SRewardedVideoAdListener) RewardedVideoAd.this.f).onRewardServerSuccess();
                }
            }
        });
        this.d.a(str);
    }

    @Override // com.facebook.ads.Ad
    public void destroy() {
        a(true);
    }

    @Override // com.facebook.ads.Ad
    public String getPlacementId() {
        return this.c;
    }

    public boolean isAdLoaded() {
        return this.e;
    }

    @Override // com.facebook.ads.Ad
    public void loadAd() {
        a((String) null, false);
    }

    public void loadAd(boolean z) {
        a((String) null, z);
    }

    @Override // com.facebook.ads.Ad
    public void loadAdFromBid(String str) {
        a(str, false);
    }

    public void loadAdFromBid(String str, boolean z) {
        a(str, z);
    }

    public void setAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.f = rewardedVideoAdListener;
    }

    public void setRewardData(RewardData rewardData) {
        this.g = rewardData;
    }

    public boolean show() {
        if (this.e) {
            this.d.b();
            this.e = false;
            return true;
        }
        if (this.f == null) {
            return false;
        }
        this.f.onError(this, AdError.INTERNAL_ERROR);
        return false;
    }
}
