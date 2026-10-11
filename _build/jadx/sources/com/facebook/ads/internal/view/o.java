package com.facebook.ads.internal.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.facebook.ads.VideoStartReason;
import com.facebook.ads.internal.util.ak;
import com.facebook.ads.internal.view.d.a.w;
import com.facebook.ads.internal.view.d.a.x;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class o extends RelativeLayout implements ak.a, com.facebook.ads.internal.view.d.c.e {

    /* renamed from: b, reason: collision with root package name */
    private static final com.facebook.ads.internal.view.d.a.l f3082b = new com.facebook.ads.internal.view.d.a.l();
    private static final com.facebook.ads.internal.view.d.a.d c = new com.facebook.ads.internal.view.d.a.d();
    private static final com.facebook.ads.internal.view.d.a.b d = new com.facebook.ads.internal.view.d.a.b();
    private static final com.facebook.ads.internal.view.d.a.n e = new com.facebook.ads.internal.view.d.a.n();
    private static final com.facebook.ads.internal.view.d.a.r f = new com.facebook.ads.internal.view.d.a.r();
    private static final com.facebook.ads.internal.view.d.a.h g = new com.facebook.ads.internal.view.d.a.h();
    private static final com.facebook.ads.internal.view.d.a.s h = new com.facebook.ads.internal.view.d.a.s();
    private static final com.facebook.ads.internal.view.d.a.j i = new com.facebook.ads.internal.view.d.a.j();
    private static final com.facebook.ads.internal.view.d.a.u j = new com.facebook.ads.internal.view.d.a.u();
    private static final x k = new x();
    private static final w l = new w();

    /* renamed from: a, reason: collision with root package name */
    protected final com.facebook.ads.internal.view.d.c.c f3083a;
    private final List<com.facebook.ads.internal.view.d.b.m> m;
    private final Handler n;
    private final com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q> o;
    private boolean p;
    private boolean q;
    private final View.OnTouchListener r;

    public o(Context context) {
        super(context);
        this.m = new ArrayList();
        this.n = new Handler();
        this.o = new com.facebook.ads.internal.g.r<>();
        this.r = new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.o.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                o.this.o.a((com.facebook.ads.internal.g.r) new com.facebook.ads.internal.view.d.a.t(view, motionEvent));
                return false;
            }
        };
        if (com.facebook.ads.internal.j.a(context)) {
            this.f3083a = new com.facebook.ads.internal.view.d.c.a(context);
        } else {
            this.f3083a = new com.facebook.ads.internal.view.d.c.b(context);
        }
        c();
    }

    public o(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m = new ArrayList();
        this.n = new Handler();
        this.o = new com.facebook.ads.internal.g.r<>();
        this.r = new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.o.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                o.this.o.a((com.facebook.ads.internal.g.r) new com.facebook.ads.internal.view.d.a.t(view, motionEvent));
                return false;
            }
        };
        if (com.facebook.ads.internal.j.a(context)) {
            this.f3083a = new com.facebook.ads.internal.view.d.c.a(context, attributeSet);
        } else {
            this.f3083a = new com.facebook.ads.internal.view.d.c.b(context, attributeSet);
        }
        c();
    }

    public o(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.m = new ArrayList();
        this.n = new Handler();
        this.o = new com.facebook.ads.internal.g.r<>();
        this.r = new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.o.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                o.this.o.a((com.facebook.ads.internal.g.r) new com.facebook.ads.internal.view.d.a.t(view, motionEvent));
                return false;
            }
        };
        if (com.facebook.ads.internal.j.a(context)) {
            this.f3083a = new com.facebook.ads.internal.view.d.c.a(context, attributeSet, i2);
        } else {
            this.f3083a = new com.facebook.ads.internal.view.d.c.b(context, attributeSet, i2);
        }
        c();
    }

    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    public o(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.m = new ArrayList();
        this.n = new Handler();
        this.o = new com.facebook.ads.internal.g.r<>();
        this.r = new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.o.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                o.this.o.a((com.facebook.ads.internal.g.r) new com.facebook.ads.internal.view.d.a.t(view, motionEvent));
                return false;
            }
        };
        if (com.facebook.ads.internal.j.a(context)) {
            this.f3083a = new com.facebook.ads.internal.view.d.c.a(context, attributeSet, i2, i3);
        } else {
            this.f3083a = new com.facebook.ads.internal.view.d.c.b(context, attributeSet, i2, i3);
        }
        c();
    }

    private void c() {
        this.f3083a.setRequestedVolume(1.0f);
        this.f3083a.setVideoStateChangeListener(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView((View) this.f3083a, layoutParams);
        setOnTouchListener(this.r);
    }

    public void a(int i2) {
        this.f3083a.a(i2);
    }

    @Override // com.facebook.ads.internal.view.d.c.e
    public void a(int i2, int i3) {
        this.o.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) new com.facebook.ads.internal.view.d.a.p(i2, i3));
    }

    public void a(VideoStartReason videoStartReason) {
        if (this.p && this.f3083a.getState() == com.facebook.ads.internal.view.d.c.d.PLAYBACK_COMPLETED) {
            this.p = false;
        }
        this.f3083a.a(videoStartReason);
    }

    public void a(com.facebook.ads.internal.view.d.b.m mVar) {
        this.m.add(mVar);
    }

    @Override // com.facebook.ads.internal.view.d.c.e
    public void a(com.facebook.ads.internal.view.d.c.d dVar) {
        if (dVar == com.facebook.ads.internal.view.d.c.d.PREPARED) {
            this.o.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) f3082b);
            return;
        }
        if (dVar == com.facebook.ads.internal.view.d.c.d.ERROR) {
            this.p = true;
            this.o.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) c);
            return;
        }
        if (dVar == com.facebook.ads.internal.view.d.c.d.PLAYBACK_COMPLETED) {
            this.p = true;
            this.n.removeCallbacksAndMessages(null);
            this.o.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) d);
        } else if (dVar == com.facebook.ads.internal.view.d.c.d.STARTED) {
            this.o.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) i);
            this.n.removeCallbacksAndMessages(null);
            this.n.postDelayed(new Runnable() { // from class: com.facebook.ads.internal.view.o.1
                @Override // java.lang.Runnable
                public void run() {
                    if (o.this.p) {
                        return;
                    }
                    o.this.o.a((com.facebook.ads.internal.g.r) o.e);
                    o.this.n.postDelayed(this, 250L);
                }
            }, 250L);
        } else if (dVar == com.facebook.ads.internal.view.d.c.d.PAUSED) {
            this.o.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) g);
            this.n.removeCallbacksAndMessages(null);
        } else if (dVar == com.facebook.ads.internal.view.d.c.d.IDLE) {
            this.o.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) h);
            this.n.removeCallbacksAndMessages(null);
        }
    }

    public void a(boolean z) {
        this.f3083a.a(z);
    }

    @Override // com.facebook.ads.internal.util.ak.a
    public boolean a() {
        return com.facebook.ads.internal.j.a(getContext());
    }

    @Override // com.facebook.ads.internal.util.ak.a
    public boolean b() {
        return this.q;
    }

    public void e() {
        getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) f);
        this.f3083a.b();
    }

    public void f() {
        this.f3083a.c();
    }

    public void g() {
        this.f3083a.b(true);
    }

    @Override // com.facebook.ads.internal.util.ak.a
    public int getCurrentPosition() {
        return this.f3083a.getCurrentPosition();
    }

    public int getDuration() {
        return this.f3083a.getDuration();
    }

    @NonNull
    public com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q> getEventBus() {
        return this.o;
    }

    @Override // com.facebook.ads.internal.util.ak.a
    public long getInitialBufferTime() {
        return this.f3083a.getInitialBufferTime();
    }

    public com.facebook.ads.internal.view.d.c.d getState() {
        return this.f3083a.getState();
    }

    public TextureView getTextureView() {
        return (TextureView) this.f3083a;
    }

    public int getVideoHeight() {
        return this.f3083a.getVideoHeight();
    }

    @Override // com.facebook.ads.internal.util.ak.a
    public VideoStartReason getVideoStartReason() {
        return this.f3083a.getStartReason();
    }

    public View getVideoView() {
        return this.f3083a.getView();
    }

    public int getVideoWidth() {
        return this.f3083a.getVideoWidth();
    }

    @Override // com.facebook.ads.internal.util.ak.a
    public float getVolume() {
        return this.f3083a.getVolume();
    }

    public void h() {
        this.f3083a.setVideoStateChangeListener(null);
        this.f3083a.d();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        this.o.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) l);
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.o.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) k);
        super.onDetachedFromWindow();
    }

    public void setControlsAnchorView(View view) {
        if (this.f3083a != null) {
            this.f3083a.setControlsAnchorView(view);
        }
    }

    public void setIsFullScreen(boolean z) {
        this.q = z;
        this.f3083a.setFullScreen(z);
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
    }

    public void setVideoMPD(String str) {
        this.f3083a.setVideoMPD(str);
    }

    public void setVideoURI(Uri uri) {
        for (com.facebook.ads.internal.view.d.b.m mVar : this.m) {
            if (mVar instanceof com.facebook.ads.internal.view.d.b.n) {
                com.facebook.ads.internal.view.d.b.n nVar = (com.facebook.ads.internal.view.d.b.n) mVar;
                if (nVar.getParent() == null) {
                    addView(nVar);
                    nVar.a(this);
                }
            } else {
                mVar.a(this);
            }
        }
        this.p = false;
        this.f3083a.setup(uri);
    }

    public void setVideoURI(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVolume(float f2) {
        this.f3083a.setRequestedVolume(f2);
        getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) j);
    }
}
