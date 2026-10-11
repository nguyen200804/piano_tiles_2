package com.cmplay.base.util.gif;

import android.graphics.Canvas;
import android.graphics.SurfaceTexture;
import android.support.annotation.RequiresApi;
import android.view.Surface;
import android.view.TextureView;
import com.cmplay.base.util.gif.GifTextureView;

@RequiresApi(14)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class PlaceholderDrawingSurfaceTextureListener implements TextureView.SurfaceTextureListener {
    private final GifTextureView.PlaceholderDrawListener mDrawer;

    PlaceholderDrawingSurfaceTextureListener(GifTextureView.PlaceholderDrawListener drawer) {
        this.mDrawer = drawer;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int width, int height) {
        Surface surface = new Surface(surfaceTexture);
        Canvas lockCanvas = surface.lockCanvas(null);
        this.mDrawer.onDrawPlaceholder(lockCanvas);
        surface.unlockCanvasAndPost(lockCanvas);
        surface.release();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int width, int height) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
