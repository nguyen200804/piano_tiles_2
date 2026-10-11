package com.facebook.ads;

import android.content.Context;
import android.view.View;
import com.facebook.ads.internal.DisplayAdController;
import com.facebook.ads.internal.a;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.d;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.g;
import java.util.EnumSet;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class InterstitialAd implements Ad {

    /* renamed from: a, reason: collision with root package name */
    private static final d f2475a = d.ADS;

    /* renamed from: b, reason: collision with root package name */
    private final Context f2476b;
    private final String c;
    private DisplayAdController d;
    private boolean e;
    private boolean f;
    private InterstitialAdListener g;

    public InterstitialAd(Context context, String str) {
        this.f2476b = context;
        this.c = str;
    }

    private void a(EnumSet<CacheFlag> enumSet, String str) {
        this.e = false;
        if (this.f) {
            throw new IllegalStateException("InterstitialAd cannot be loaded while being displayed. Make sure your adapter calls adapterListener.onInterstitialDismissed().");
        }
        if (this.d != null) {
            this.d.c();
            this.d = null;
        }
        AdSize adSize = AdSize.INTERSTITIAL;
        this.d = new DisplayAdController(this.f2476b, this.c, g.a(AdSize.INTERSTITIAL), AdPlacementType.INTERSTITIAL, adSize, f2475a, 1, true, enumSet);
        this.d.a(new a() { // from class: com.facebook.ads.InterstitialAd.1
            @Override // com.facebook.ads.internal.a
            public void a() {
                if (InterstitialAd.this.g != null) {
                    InterstitialAd.this.g.onAdClicked(InterstitialAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(View view) {
            }

            @Override // com.facebook.ads.internal.a
            public void a(AdAdapter adAdapter) {
                InterstitialAd.this.e = true;
                if (InterstitialAd.this.g != null) {
                    InterstitialAd.this.g.onAdLoaded(InterstitialAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(b bVar) {
                if (InterstitialAd.this.g != null) {
                    InterstitialAd.this.g.onError(InterstitialAd.this, bVar.b());
                }
            }

            @Override // com.facebook.ads.internal.a
            public void b() {
                if (InterstitialAd.this.g != null) {
                    InterstitialAd.this.g.onLoggingImpression(InterstitialAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void d() {
                if (InterstitialAd.this.g != null) {
                    InterstitialAd.this.g.onInterstitialDisplayed(InterstitialAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void e() {
                InterstitialAd.this.f = false;
                if (InterstitialAd.this.d != null) {
                    InterstitialAd.this.d.c();
                    InterstitialAd.this.d = null;
                }
                if (InterstitialAd.this.g != null) {
                    InterstitialAd.this.g.onInterstitialDismissed(InterstitialAd.this);
                }
            }
        });
        this.d.a(str);
    }

    @Override // com.facebook.ads.Ad
    public void destroy() {
        if (this.d != null) {
            this.d.b(true);
            this.d = null;
        }
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
        EnumSet.of(CacheFlag.NONE);
    }

    public void loadAd(EnumSet<CacheFlag> enumSet) {
        a(enumSet, (String) null);
    }

    @Override // com.facebook.ads.Ad
    public void loadAdFromBid(String str) {
        a(EnumSet.of(CacheFlag.NONE), str);
    }

    public void loadAdFromBid(EnumSet<CacheFlag> enumSet, String str) {
        a(enumSet, str);
    }

    public void setAdListener(InterstitialAdListener interstitialAdListener) {
        this.g = interstitialAdListener;
    }

    public boolean show() {
        if (this.e) {
            this.d.b();
            this.f = true;
            this.e = false;
            return true;
        }
        if (this.g == null) {
            return false;
        }
        this.g.onError(this, AdError.INTERNAL_ERROR);
        return false;
    }
}
