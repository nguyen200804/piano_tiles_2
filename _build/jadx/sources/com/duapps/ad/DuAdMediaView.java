package com.duapps.ad;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.facebook.ads.NativeAd;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DuAdMediaView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private boolean f1979a;

    /* renamed from: b, reason: collision with root package name */
    private MediaView f1980b;
    private d c;

    public DuAdMediaView(Context context) {
        super(context);
    }

    public DuAdMediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a(com.duapps.ad.entity.a.a aVar) {
        b(aVar);
    }

    public void a(f fVar) {
        if (fVar == null) {
            setVisibility(8);
        } else {
            b(fVar.m());
        }
    }

    public void a(boolean z) {
        this.f1979a = z;
        if (this.f1980b != null) {
            this.f1980b.setAutoplay(z);
        }
    }

    private void b(com.duapps.ad.entity.a.a aVar) {
        if (aVar == null) {
            setVisibility(8);
            return;
        }
        Object m = aVar.m();
        if (m == null) {
            setVisibility(8);
            return;
        }
        if (aVar.j() == 2) {
            NativeAd nativeAd = (NativeAd) m;
            if (this.f1980b == null) {
                this.f1980b = new MediaView(getContext());
                this.f1980b.setAutoplay(this.f1979a);
                this.f1980b.setFocusable(false);
                this.f1980b.setClickable(false);
                addView(this.f1980b, new RelativeLayout.LayoutParams(-1, -1));
            }
            this.f1980b.setNativeAd(nativeAd);
            this.f1980b.setListener(new MediaViewListener() { // from class: com.duapps.ad.DuAdMediaView.1
                @Override // com.facebook.ads.MediaViewListener
                public void onVolumeChange(MediaView mediaView, float f) {
                    if (DuAdMediaView.this.c != null) {
                        DuAdMediaView.this.c.a(DuAdMediaView.this, f);
                    }
                }

                @Override // com.facebook.ads.MediaViewListener
                public void onPause(MediaView mediaView) {
                    if (DuAdMediaView.this.c != null) {
                        DuAdMediaView.this.c.a(DuAdMediaView.this);
                    }
                }

                @Override // com.facebook.ads.MediaViewListener
                public void onPlay(MediaView mediaView) {
                    if (DuAdMediaView.this.c != null) {
                        DuAdMediaView.this.c.b(DuAdMediaView.this);
                    }
                }

                @Override // com.facebook.ads.MediaViewListener
                public void onExitFullscreen(MediaView mediaView) {
                    if (DuAdMediaView.this.c != null) {
                        DuAdMediaView.this.c.c(DuAdMediaView.this);
                    }
                }

                @Override // com.facebook.ads.MediaViewListener
                public void onEnterFullscreen(MediaView mediaView) {
                    if (DuAdMediaView.this.c != null) {
                        DuAdMediaView.this.c.d(DuAdMediaView.this);
                    }
                }

                @Override // com.facebook.ads.MediaViewListener
                public void onComplete(MediaView mediaView) {
                    if (DuAdMediaView.this.c != null) {
                        DuAdMediaView.this.c.e(DuAdMediaView.this);
                    }
                }

                @Override // com.facebook.ads.MediaViewListener
                public void onFullscreenBackground(MediaView mediaView) {
                    if (DuAdMediaView.this.c != null) {
                        DuAdMediaView.this.c.f(DuAdMediaView.this);
                    }
                }

                @Override // com.facebook.ads.MediaViewListener
                public void onFullscreenForeground(MediaView mediaView) {
                    if (DuAdMediaView.this.c != null) {
                        DuAdMediaView.this.c.g(DuAdMediaView.this);
                    }
                }
            });
        }
    }
}
