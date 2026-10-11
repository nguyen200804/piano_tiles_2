package com.applovin.adview;

import android.media.MediaPlayer;
import com.applovin.impl.adview.AppLovinVideoView;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class b implements MediaPlayer.OnPreparedListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f303a;

    b(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f303a = appLovinInterstitialActivity;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        boolean d;
        AppLovinVideoView appLovinVideoView;
        AppLovinVideoView appLovinVideoView2;
        this.f303a.E = new WeakReference(mediaPlayer);
        d = this.f303a.d();
        int i = d ? 0 : 1;
        mediaPlayer.setVolume(i, i);
        int videoWidth = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.f303a.t = (int) TimeUnit.MILLISECONDS.toSeconds(mediaPlayer.getDuration());
        appLovinVideoView = this.f303a.w;
        appLovinVideoView.setVideoSize(videoWidth, videoHeight);
        appLovinVideoView2 = this.f303a.w;
        mediaPlayer.setDisplay(appLovinVideoView2.getHolder());
        mediaPlayer.setOnErrorListener(new c(this));
        this.f303a.n();
        this.f303a.i();
        this.f303a.p();
        this.f303a.g();
    }
}
