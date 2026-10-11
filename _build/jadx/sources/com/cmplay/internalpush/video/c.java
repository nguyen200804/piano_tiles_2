package com.cmplay.internalpush.video;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.view.Surface;

/* compiled from: InnerPushPlayer.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends MediaPlayer {
    @TargetApi(14)
    public void a(SurfaceTexture surfaceTexture) {
        if (surfaceTexture != null) {
            super.setSurface(new Surface(surfaceTexture));
        }
    }
}
