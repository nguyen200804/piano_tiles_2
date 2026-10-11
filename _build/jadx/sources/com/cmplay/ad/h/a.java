package com.cmplay.ad.h;

import android.app.Activity;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.cmplay.ad.b;
import com.cmplay.ad.c;
import com.cmplay.tile2.ui.AppActivity;
import com.cmplay.util.c.a.e;

/* compiled from: ApplovinVideoADS.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends b {

    /* renamed from: a, reason: collision with root package name */
    private static a f1164a;

    /* renamed from: b, reason: collision with root package name */
    private c f1165b;
    private AppLovinIncentivizedInterstitial c;
    private int d = 1;

    private a() {
    }

    public static a a() {
        if (f1164a == null) {
            synchronized (a.class) {
                if (f1164a == null) {
                    f1164a = new a();
                }
            }
        }
        return f1164a;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onCreate(Activity activity) {
        super.onCreate(activity);
        this.c = AppLovinIncentivizedInterstitial.create(activity);
        this.c.preload(new AppLovinAdLoadListener() { // from class: com.cmplay.ad.h.a.1
            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void adReceived(AppLovinAd appLovinAd) {
                com.cmplay.util.c.b("ApplovinVideoADS", "----applovin video  ok");
                new e().a(2, 0, a.this.d, 4, com.cmplay.ad.a.f);
            }

            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void failedToReceiveAd(int i) {
                com.cmplay.util.c.b("ApplovinVideoADS", "----applovin video  failed---" + i);
                new e().a(3, i, a.this.d, 4, com.cmplay.ad.a.f);
            }
        });
        this.d = 1;
        new e().a(1, 0, this.d, 4, com.cmplay.ad.a.f);
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean canShow(int reportFrom) {
        if (this.c == null) {
            this.c = AppLovinIncentivizedInterstitial.create(AppActivity.c());
        }
        return this.c.isAdReadyToDisplay();
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean show(int reportFrom) {
        try {
            this.c.show(AppActivity.c(), null, new AppLovinAdVideoPlaybackListener() { // from class: com.cmplay.ad.h.a.2
                @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
                public void videoPlaybackBegan(AppLovinAd appLovinAd) {
                }

                @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
                public void videoPlaybackEnded(AppLovinAd appLovinAd, double v, boolean b2) {
                    if (a.this.f1165b != null) {
                        a.this.f1165b.a(!b2);
                    }
                }
            }, new AppLovinAdDisplayListener() { // from class: com.cmplay.ad.h.a.3
                @Override // com.applovin.sdk.AppLovinAdDisplayListener
                public void adDisplayed(AppLovinAd appLovinAd) {
                    a.this.f1165b.a();
                }

                @Override // com.applovin.sdk.AppLovinAdDisplayListener
                public void adHidden(AppLovinAd appLovinAd) {
                    a.this.c.preload(null);
                    a.this.d = 1;
                    new e().a(1, 0, a.this.d, 4, com.cmplay.ad.a.f);
                }
            });
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void setListener(c l) {
        this.f1165b = l;
    }
}
