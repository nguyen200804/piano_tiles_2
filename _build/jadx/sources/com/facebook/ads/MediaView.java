package com.facebook.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.view.MotionEventCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.g.f;
import com.facebook.ads.internal.g.g;
import com.facebook.ads.internal.util.q;
import com.facebook.ads.internal.view.e;
import com.facebook.ads.internal.view.h;
import com.facebook.ads.internal.view.hscroll.b;
import com.facebook.ads.internal.view.k;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MediaView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2478a = MediaView.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static final int f2479b = Color.argb(51, 145, DrawableConstants.CtaButton.WIDTH_DIPS, 165);
    private e c;
    private b d;
    private MediaViewVideoRenderer e;

    @Nullable
    private MediaViewListener f;
    private boolean g;

    @Deprecated
    private boolean h;

    public MediaView(Context context) {
        super(context);
        this.h = true;
        setImageRenderer(new e(context));
        setCarouselRenderer(new b(context));
        setVideoRenderer(new h(context));
        a();
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = true;
        setImageRenderer(new e(context, attributeSet));
        setCarouselRenderer(new b(context, attributeSet));
        setVideoRenderer(new h(context, attributeSet));
        a();
    }

    public MediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = true;
        setImageRenderer(new e(context, attributeSet, i));
        setCarouselRenderer(new b(context, attributeSet, i));
        setVideoRenderer(new h(context, attributeSet, i));
        a();
    }

    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    public MediaView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.h = true;
        setImageRenderer(new e(context, attributeSet, i, i2));
        setCarouselRenderer(new b(context, attributeSet, i));
        setVideoRenderer(new h(context, attributeSet, i, i2));
        a();
    }

    private void a() {
        setBackgroundColor(f2479b);
    }

    private boolean a(NativeAd nativeAd) {
        return Build.VERSION.SDK_INT >= 14 && !TextUtils.isEmpty(nativeAd.c());
    }

    private boolean b(NativeAd nativeAd) {
        if (nativeAd.g() == null) {
            return false;
        }
        Iterator<NativeAd> it = nativeAd.g().iterator();
        while (it.hasNext()) {
            if (it.next().getAdCoverImage() == null) {
                return false;
            }
        }
        return true;
    }

    private void setCarouselRenderer(b bVar) {
        if (this.g) {
            throw new IllegalStateException("Carousel renderer must be set before nativeAd.");
        }
        if (this.d != null) {
            removeView(this.d);
        }
        float f = getResources().getDisplayMetrics().density;
        int round = Math.round(4.0f * f);
        int round2 = Math.round(f * 12.0f);
        bVar.setChildSpacing(round);
        bVar.setPadding(0, round2, 0, round2);
        bVar.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(bVar, layoutParams);
        this.d = bVar;
    }

    private void setImageRenderer(e eVar) {
        if (this.g) {
            throw new IllegalStateException("Image renderer must be set before nativeAd.");
        }
        if (this.c != null) {
            removeView(this.c);
        }
        eVar.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(eVar, layoutParams);
        this.c = eVar;
    }

    public void destroy() {
        this.e.pause(false);
        this.e.destroy();
    }

    protected f getAdEventManager() {
        return g.a(getContext());
    }

    @Deprecated
    public boolean isAutoplay() {
        return this.e.shouldAutoplay();
    }

    @Deprecated
    public void setAutoplay(boolean z) {
        this.h = z;
        if (!(this.e instanceof h)) {
            throw new IllegalStateException("MediaView only supports setAutoplay for backwards compatibility. New MediaViewVideoRenderer classes should implement their own autoplay handling.");
        }
        this.e.setAutoplay(z);
    }

    @Deprecated
    public void setAutoplayOnMobile(boolean z) {
        if (!(this.e instanceof h)) {
            throw new IllegalStateException("MediaView only supports setAutoplayOnMobile for backwards compatibility. New MediaViewVideoRenderer classes should implement their own autoplay handling.");
        }
        this.e.setAutoplayOnMobile(z);
    }

    public void setListener(final MediaViewListener mediaViewListener) {
        this.f = mediaViewListener;
        if (mediaViewListener == null) {
            this.e.setListener(null);
        } else {
            this.e.setListener(new k() { // from class: com.facebook.ads.MediaView.1
                @Override // com.facebook.ads.internal.view.k
                public void a() {
                    mediaViewListener.onVolumeChange(MediaView.this, MediaView.this.e.getVolume());
                }

                @Override // com.facebook.ads.internal.view.k
                public void b() {
                    mediaViewListener.onPause(MediaView.this);
                }

                @Override // com.facebook.ads.internal.view.k
                public void c() {
                    mediaViewListener.onPlay(MediaView.this);
                }

                @Override // com.facebook.ads.internal.view.k
                public void d() {
                    mediaViewListener.onFullscreenBackground(MediaView.this);
                }

                @Override // com.facebook.ads.internal.view.k
                public void e() {
                    mediaViewListener.onFullscreenForeground(MediaView.this);
                }

                @Override // com.facebook.ads.internal.view.k
                public void f() {
                    mediaViewListener.onExitFullscreen(MediaView.this);
                }

                @Override // com.facebook.ads.internal.view.k
                public void g() {
                    mediaViewListener.onEnterFullscreen(MediaView.this);
                }

                @Override // com.facebook.ads.internal.view.k
                public void h() {
                    mediaViewListener.onComplete(MediaView.this);
                }
            });
        }
    }

    public void setNativeAd(NativeAd nativeAd) {
        this.g = true;
        nativeAd.a(this);
        nativeAd.setMediaViewAutoplay(this.h);
        if (b(nativeAd)) {
            this.c.setVisibility(8);
            this.e.setVisibility(8);
            this.d.setVisibility(0);
            bringChildToFront(this.d);
            this.d.setCurrentPosition(0);
            this.d.setAdapter(new com.facebook.ads.internal.adapters.g(this.d, nativeAd.g()));
            return;
        }
        if (a(nativeAd)) {
            this.e.setNativeAd(nativeAd);
            this.c.setVisibility(8);
            this.e.setVisibility(0);
            this.d.setVisibility(8);
            bringChildToFront(this.e);
            this.g = true;
            return;
        }
        if (nativeAd.getAdCoverImage() != null) {
            this.c.setVisibility(0);
            this.e.setVisibility(8);
            this.d.setVisibility(8);
            bringChildToFront(this.c);
            this.g = true;
            new q(this.c).a(nativeAd.getAdCoverImage().getUrl());
        }
    }

    public void setVideoRenderer(MediaViewVideoRenderer mediaViewVideoRenderer) {
        if (this.g) {
            throw new IllegalStateException("Video renderer must be set before nativeAd.");
        }
        if (this.e != null) {
            removeView(this.e);
            this.e.destroy();
        }
        mediaViewVideoRenderer.setAdEventManager(getAdEventManager());
        mediaViewVideoRenderer.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(mediaViewVideoRenderer, layoutParams);
        this.e = mediaViewVideoRenderer;
    }
}
