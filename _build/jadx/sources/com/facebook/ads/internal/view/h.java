package com.facebook.ads.internal.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.view.MotionEventCompat;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.NativeAd;
import com.facebook.ads.VideoStartReason;
import com.facebook.ads.internal.j.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class h extends MediaViewVideoRenderer {
    private static final String d = h.class.getSimpleName();
    private final com.facebook.ads.internal.view.d.b.f e;
    private final com.facebook.ads.internal.j.a f;

    @Nullable
    private j g;
    private boolean h;
    private boolean i;
    private boolean j;

    public h(Context context) {
        super(context);
        this.e = new com.facebook.ads.internal.view.d.b.f(context);
        this.f = b();
        a();
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new com.facebook.ads.internal.view.d.b.f(context);
        this.f = b();
        a();
    }

    public h(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new com.facebook.ads.internal.view.d.b.f(context);
        this.f = b();
        a();
    }

    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    public h(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.e = new com.facebook.ads.internal.view.d.b.f(context);
        this.f = b();
        a();
    }

    private void a() {
        setVolume(0.0f);
        float f = getResources().getDisplayMetrics().density;
        int i = (int) (2.0f * f);
        int i2 = (int) (f * 25.0f);
        com.facebook.ads.internal.view.d.b.g gVar = new com.facebook.ads.internal.view.d.b.g(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(9);
        layoutParams.addRule(12);
        gVar.setPadding(i, i2, i2, i);
        gVar.setLayoutParams(layoutParams);
        int i3 = 0;
        while (true) {
            if (i3 >= getChildCount()) {
                break;
            }
            View childAt = getChildAt(0);
            if (childAt instanceof j) {
                this.g = (j) childAt;
                break;
            }
            i3++;
        }
        if (this.g == null) {
            Log.e(d, "Unable to find MediaViewVideo child.");
        } else {
            this.g.a(this.e);
            this.g.a(gVar);
        }
        this.f.a(0);
        this.f.b(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
    }

    private com.facebook.ads.internal.j.a b() {
        return new com.facebook.ads.internal.j.a(this, 50, true, new a.AbstractC0076a() { // from class: com.facebook.ads.internal.view.h.1
            @Override // com.facebook.ads.internal.j.a.AbstractC0076a
            public void a() {
                if (h.this.g == null) {
                    return;
                }
                if (!h.this.j && (h.this.i || h.this.shouldAutoplay())) {
                    h.this.play(VideoStartReason.AUTO_STARTED);
                }
                h.this.i = false;
                h.this.j = false;
            }

            @Override // com.facebook.ads.internal.j.a.AbstractC0076a
            public void b() {
                if (h.this.g == null) {
                    return;
                }
                if (h.this.g.getState() == com.facebook.ads.internal.view.d.c.d.PAUSED) {
                    h.this.j = true;
                } else if (h.this.g.getState() == com.facebook.ads.internal.view.d.c.d.STARTED) {
                    h.this.i = true;
                }
                h.this.pause(h.this.j);
            }
        });
    }

    private void c() {
        if (getVisibility() == 0 && this.h && hasWindowFocus()) {
            this.f.a();
            return;
        }
        if (this.g != null && this.g.getState() == com.facebook.ads.internal.view.d.c.d.PAUSED) {
            this.j = true;
        }
        this.f.b();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.h = true;
        c();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.h = false;
        c();
        super.onDetachedFromWindow();
    }

    @Override // com.facebook.ads.MediaViewVideoRenderer
    public void onPrepared() {
        super.onPrepared();
        setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.h.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (h.this.g != null && motionEvent.getAction() == 1) {
                    h.this.g.c();
                }
                return true;
            }
        });
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        c();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        c();
    }

    @Override // com.facebook.ads.MediaViewVideoRenderer
    public void setNativeAd(NativeAd nativeAd) {
        super.setNativeAd(nativeAd);
        this.i = false;
        this.j = false;
        this.e.setImage(nativeAd.getAdCoverImage() != null ? nativeAd.getAdCoverImage().getUrl() : null);
        this.f.a();
    }
}
