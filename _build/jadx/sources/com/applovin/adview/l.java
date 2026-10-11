package com.applovin.adview;

import android.media.MediaPlayer;
import android.os.Handler;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class l implements MediaPlayer.OnErrorListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f316a;

    l(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f316a = appLovinInterstitialActivity;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Handler handler;
        handler = this.f316a.u;
        handler.post(new m(this, i, i2));
        return true;
    }
}
