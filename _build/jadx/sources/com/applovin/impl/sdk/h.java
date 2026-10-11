package com.applovin.impl.sdk;

import android.app.Activity;
import android.os.Handler;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class h implements AppLovinAdClickListener, AppLovinAdDisplayListener, AppLovinAdRewardListener, AppLovinAdVideoPlaybackListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f535a;

    /* renamed from: b, reason: collision with root package name */
    private final Activity f536b;
    private final AppLovinAdDisplayListener c;
    private final AppLovinAdClickListener d;
    private final AppLovinAdVideoPlaybackListener e;
    private final AppLovinAdRewardListener f;

    private h(z zVar, Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        this.f535a = zVar;
        this.c = appLovinAdDisplayListener;
        this.d = appLovinAdClickListener;
        this.e = appLovinAdVideoPlaybackListener;
        this.f = appLovinAdRewardListener;
        this.f536b = activity;
    }

    /* synthetic */ h(z zVar, Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener, d dVar) {
        this(zVar, activity, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        Handler handler;
        if (this.d != null) {
            handler = this.f535a.e;
            handler.post(new k(this, appLovinAd));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        if (this.c != null) {
            this.c.adDisplayed(appLovinAd);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001b  */
    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void adHidden(com.applovin.sdk.AppLovinAd r5) {
        /*
            r4 = this;
            com.applovin.impl.sdk.z r0 = r4.f535a
            java.lang.String r2 = r0.c()
            if (r2 == 0) goto L4a
            com.applovin.impl.sdk.z r0 = r4.f535a
            boolean r0 = com.applovin.impl.sdk.z.a(r0)
            if (r0 == 0) goto L4a
            com.applovin.impl.sdk.z r0 = r4.f535a
            android.app.Activity r1 = r4.f536b
            r0.a(r2, r1)
        L17:
            com.applovin.sdk.AppLovinAdDisplayListener r0 = r4.c
            if (r0 == 0) goto L29
            com.applovin.impl.sdk.z r0 = r4.f535a
            android.os.Handler r0 = com.applovin.impl.sdk.z.c(r0)
            com.applovin.impl.sdk.j r1 = new com.applovin.impl.sdk.j
            r1.<init>(r4, r5)
            r0.post(r1)
        L29:
            com.applovin.impl.sdk.bz r0 = new com.applovin.impl.sdk.bz
            com.applovin.impl.sdk.z r1 = r4.f535a
            com.applovin.impl.sdk.AppLovinSdkImpl r1 = com.applovin.impl.sdk.z.d(r1)
            r0.<init>(r1, r5)
            com.applovin.impl.sdk.z r1 = r4.f535a
            com.applovin.impl.sdk.AppLovinSdkImpl r1 = com.applovin.impl.sdk.z.d(r1)
            com.applovin.impl.sdk.bo r1 = r1.a()
            com.applovin.impl.sdk.bp r2 = com.applovin.impl.sdk.bp.BACKGROUND
            r1.a(r0, r2)
            com.applovin.impl.sdk.z r0 = r4.f535a
            r1 = 0
            com.applovin.impl.sdk.z.a(r0, r1)
            return
        L4a:
            com.applovin.impl.sdk.z r0 = r4.f535a
            com.applovin.impl.sdk.cj r0 = com.applovin.impl.sdk.z.b(r0)
            r1 = 1
            r0.a(r1)
            com.applovin.impl.sdk.z r0 = r4.f535a
            boolean r0 = com.applovin.impl.sdk.z.a(r0)
            if (r0 == 0) goto L85
            java.lang.String r1 = "network_timeout"
            r0 = -500(0xfffffffffffffe0c, float:NaN)
        L60:
            com.applovin.impl.sdk.bl r3 = com.applovin.impl.sdk.bl.a()
            r3.a(r5, r1)
            com.applovin.impl.sdk.z r1 = r4.f535a
            boolean r1 = com.applovin.impl.sdk.z.a(r1)
            if (r1 == 0) goto L76
            com.applovin.impl.sdk.z r1 = r4.f535a
            android.app.Activity r3 = r4.f536b
            r1.a(r2, r3)
        L76:
            com.applovin.impl.sdk.z r1 = r4.f535a
            android.os.Handler r1 = com.applovin.impl.sdk.z.c(r1)
            com.applovin.impl.sdk.i r2 = new com.applovin.impl.sdk.i
            r2.<init>(r4, r5, r0)
            r1.post(r2)
            goto L17
        L85:
            java.lang.String r1 = "user_closed_video"
            r0 = -600(0xfffffffffffffda8, float:NaN)
            goto L60
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.h.adHidden(com.applovin.sdk.AppLovinAd):void");
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userDeclinedToViewAd(AppLovinAd appLovinAd) {
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userOverQuota(AppLovinAd appLovinAd, Map map) {
        Handler handler;
        this.f535a.b("quota_exceeded");
        if (this.f != null) {
            handler = this.f535a.e;
            handler.post(new p(this, appLovinAd, map));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardRejected(AppLovinAd appLovinAd, Map map) {
        Handler handler;
        this.f535a.b("rejected");
        if (this.f != null) {
            handler = this.f535a.e;
            handler.post(new q(this, appLovinAd, map));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardVerified(AppLovinAd appLovinAd, Map map) {
        Handler handler;
        this.f535a.b("accepted");
        if (this.f != null) {
            handler = this.f535a.e;
            handler.post(new o(this, appLovinAd, map));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
        Handler handler;
        this.f535a.b("network_timeout");
        if (this.f != null) {
            handler = this.f535a.e;
            handler.post(new r(this, appLovinAd, i));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        Handler handler;
        if (this.e != null) {
            handler = this.f535a.e;
            handler.post(new l(this, appLovinAd));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        Handler handler;
        if (this.e != null) {
            handler = this.f535a.e;
            handler.post(new m(this, appLovinAd, d, z));
        }
        this.f535a.i = z;
    }
}
