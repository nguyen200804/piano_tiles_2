package com.applovin.impl.sdk;

import android.app.Activity;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import java.util.Timer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class t {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f556a;

    /* renamed from: b, reason: collision with root package name */
    private final z f557b;
    private Activity c;
    private AppLovinAdDisplayListener d;
    private AppLovinAdVideoPlaybackListener e;
    private AppLovinAdClickListener f;
    private AppLovinAdRewardListener g;
    private final Timer h = new Timer("IncentivizedAdLauncher");

    t(AppLovinSdkImpl appLovinSdkImpl, z zVar) {
        this.f556a = appLovinSdkImpl;
        this.f557b = zVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f557b.b(this.c, this.g, this.e, this.d, this.f);
    }

    void a() {
        this.c.runOnUiThread(new u(this));
    }

    public void a(Activity activity) {
        this.c = activity;
    }

    public void a(AppLovinAdClickListener appLovinAdClickListener) {
        this.f = appLovinAdClickListener;
    }

    public void a(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.d = appLovinAdDisplayListener;
    }

    public void a(AppLovinAdRewardListener appLovinAdRewardListener) {
        this.g = appLovinAdRewardListener;
    }

    public void a(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.e = appLovinAdVideoPlaybackListener;
    }
}
