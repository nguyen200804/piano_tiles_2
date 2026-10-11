package com.applovin.adview;

import android.media.MediaPlayer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class k implements MediaPlayer.OnCompletionListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f315a;

    k(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f315a = appLovinInterstitialActivity;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.f315a.m = true;
        this.f315a.t();
    }
}
