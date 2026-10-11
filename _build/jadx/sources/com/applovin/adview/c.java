package com.applovin.adview;

import android.media.MediaPlayer;
import android.os.Handler;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class c implements MediaPlayer.OnErrorListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f304a;

    c(b bVar) {
        this.f304a = bVar;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Handler handler;
        handler = this.f304a.f303a.u;
        handler.post(new d(this, i, i2));
        return true;
    }
}
