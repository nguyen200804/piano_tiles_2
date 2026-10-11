package com.facebook.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.facebook.ads.internal.g.f;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import com.facebook.ads.internal.util.y;
import com.facebook.ads.internal.view.d.a.b;
import com.facebook.ads.internal.view.d.a.c;
import com.facebook.ads.internal.view.d.a.d;
import com.facebook.ads.internal.view.d.a.e;
import com.facebook.ads.internal.view.d.a.h;
import com.facebook.ads.internal.view.d.a.i;
import com.facebook.ads.internal.view.d.a.k;
import com.facebook.ads.internal.view.d.a.l;
import com.facebook.ads.internal.view.d.a.m;
import com.facebook.ads.internal.view.d.a.p;
import com.facebook.ads.internal.view.d.a.q;
import com.facebook.ads.internal.view.d.a.u;
import com.facebook.ads.internal.view.d.a.v;
import com.facebook.ads.internal.view.j;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class MediaViewVideoRenderer extends FrameLayout {
    private static final String d = MediaViewVideoRenderer.class.getSimpleName();

    /* renamed from: a, reason: collision with root package name */
    protected NativeAd f2482a;

    /* renamed from: b, reason: collision with root package name */
    protected VideoAutoplayBehavior f2483b;
    final j c;
    private final m e;
    private final k f;
    private final i g;
    private final q h;
    private final c i;
    private final v j;
    private final e k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;

    public MediaViewVideoRenderer(Context context) {
        super(context);
        this.e = new m() { // from class: com.facebook.ads.MediaViewVideoRenderer.1
            @Override // com.facebook.ads.internal.g.s
            public void a(l lVar) {
                MediaViewVideoRenderer.this.onPrepared();
            }
        };
        this.f = new k() { // from class: com.facebook.ads.MediaViewVideoRenderer.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                MediaViewVideoRenderer.this.onPlayed();
            }
        };
        this.g = new i() { // from class: com.facebook.ads.MediaViewVideoRenderer.3
            @Override // com.facebook.ads.internal.g.s
            public void a(h hVar) {
                MediaViewVideoRenderer.this.onPaused();
            }
        };
        this.h = new q() { // from class: com.facebook.ads.MediaViewVideoRenderer.4
            @Override // com.facebook.ads.internal.g.s
            public void a(p pVar) {
                MediaViewVideoRenderer.this.onSeek();
            }
        };
        this.i = new c() { // from class: com.facebook.ads.MediaViewVideoRenderer.5
            @Override // com.facebook.ads.internal.g.s
            public void a(b bVar) {
                MediaViewVideoRenderer.this.onCompleted();
            }
        };
        this.j = new v() { // from class: com.facebook.ads.MediaViewVideoRenderer.6
            @Override // com.facebook.ads.internal.g.s
            public void a(u uVar) {
                MediaViewVideoRenderer.this.onVolumeChanged();
            }
        };
        this.k = new e() { // from class: com.facebook.ads.MediaViewVideoRenderer.7
            @Override // com.facebook.ads.internal.g.s
            public void a(d dVar) {
                MediaViewVideoRenderer.this.onError();
            }
        };
        this.n = true;
        this.o = true;
        this.c = new j(context);
        a();
    }

    public MediaViewVideoRenderer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new m() { // from class: com.facebook.ads.MediaViewVideoRenderer.1
            @Override // com.facebook.ads.internal.g.s
            public void a(l lVar) {
                MediaViewVideoRenderer.this.onPrepared();
            }
        };
        this.f = new k() { // from class: com.facebook.ads.MediaViewVideoRenderer.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                MediaViewVideoRenderer.this.onPlayed();
            }
        };
        this.g = new i() { // from class: com.facebook.ads.MediaViewVideoRenderer.3
            @Override // com.facebook.ads.internal.g.s
            public void a(h hVar) {
                MediaViewVideoRenderer.this.onPaused();
            }
        };
        this.h = new q() { // from class: com.facebook.ads.MediaViewVideoRenderer.4
            @Override // com.facebook.ads.internal.g.s
            public void a(p pVar) {
                MediaViewVideoRenderer.this.onSeek();
            }
        };
        this.i = new c() { // from class: com.facebook.ads.MediaViewVideoRenderer.5
            @Override // com.facebook.ads.internal.g.s
            public void a(b bVar) {
                MediaViewVideoRenderer.this.onCompleted();
            }
        };
        this.j = new v() { // from class: com.facebook.ads.MediaViewVideoRenderer.6
            @Override // com.facebook.ads.internal.g.s
            public void a(u uVar) {
                MediaViewVideoRenderer.this.onVolumeChanged();
            }
        };
        this.k = new e() { // from class: com.facebook.ads.MediaViewVideoRenderer.7
            @Override // com.facebook.ads.internal.g.s
            public void a(d dVar) {
                MediaViewVideoRenderer.this.onError();
            }
        };
        this.n = true;
        this.o = true;
        this.c = new j(context, attributeSet);
        a();
    }

    public MediaViewVideoRenderer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new m() { // from class: com.facebook.ads.MediaViewVideoRenderer.1
            @Override // com.facebook.ads.internal.g.s
            public void a(l lVar) {
                MediaViewVideoRenderer.this.onPrepared();
            }
        };
        this.f = new k() { // from class: com.facebook.ads.MediaViewVideoRenderer.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                MediaViewVideoRenderer.this.onPlayed();
            }
        };
        this.g = new i() { // from class: com.facebook.ads.MediaViewVideoRenderer.3
            @Override // com.facebook.ads.internal.g.s
            public void a(h hVar) {
                MediaViewVideoRenderer.this.onPaused();
            }
        };
        this.h = new q() { // from class: com.facebook.ads.MediaViewVideoRenderer.4
            @Override // com.facebook.ads.internal.g.s
            public void a(p pVar) {
                MediaViewVideoRenderer.this.onSeek();
            }
        };
        this.i = new c() { // from class: com.facebook.ads.MediaViewVideoRenderer.5
            @Override // com.facebook.ads.internal.g.s
            public void a(b bVar) {
                MediaViewVideoRenderer.this.onCompleted();
            }
        };
        this.j = new v() { // from class: com.facebook.ads.MediaViewVideoRenderer.6
            @Override // com.facebook.ads.internal.g.s
            public void a(u uVar) {
                MediaViewVideoRenderer.this.onVolumeChanged();
            }
        };
        this.k = new e() { // from class: com.facebook.ads.MediaViewVideoRenderer.7
            @Override // com.facebook.ads.internal.g.s
            public void a(d dVar) {
                MediaViewVideoRenderer.this.onError();
            }
        };
        this.n = true;
        this.o = true;
        this.c = new j(context, attributeSet, i);
        a();
    }

    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    public MediaViewVideoRenderer(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.e = new m() { // from class: com.facebook.ads.MediaViewVideoRenderer.1
            @Override // com.facebook.ads.internal.g.s
            public void a(l lVar) {
                MediaViewVideoRenderer.this.onPrepared();
            }
        };
        this.f = new k() { // from class: com.facebook.ads.MediaViewVideoRenderer.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                MediaViewVideoRenderer.this.onPlayed();
            }
        };
        this.g = new i() { // from class: com.facebook.ads.MediaViewVideoRenderer.3
            @Override // com.facebook.ads.internal.g.s
            public void a(h hVar) {
                MediaViewVideoRenderer.this.onPaused();
            }
        };
        this.h = new q() { // from class: com.facebook.ads.MediaViewVideoRenderer.4
            @Override // com.facebook.ads.internal.g.s
            public void a(p pVar) {
                MediaViewVideoRenderer.this.onSeek();
            }
        };
        this.i = new c() { // from class: com.facebook.ads.MediaViewVideoRenderer.5
            @Override // com.facebook.ads.internal.g.s
            public void a(b bVar) {
                MediaViewVideoRenderer.this.onCompleted();
            }
        };
        this.j = new v() { // from class: com.facebook.ads.MediaViewVideoRenderer.6
            @Override // com.facebook.ads.internal.g.s
            public void a(u uVar) {
                MediaViewVideoRenderer.this.onVolumeChanged();
            }
        };
        this.k = new e() { // from class: com.facebook.ads.MediaViewVideoRenderer.7
            @Override // com.facebook.ads.internal.g.s
            public void a(d dVar) {
                MediaViewVideoRenderer.this.onError();
            }
        };
        this.n = true;
        this.o = true;
        this.c = new j(context, attributeSet, i, i2);
        a();
    }

    private void a() {
        this.c.setEnableBackgroundVideo(shouldAllowBackgroundPlayback());
        this.c.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        addView(this.c);
        this.c.getEventBus().a((r<s, com.facebook.ads.internal.g.q>) this.e);
        this.c.getEventBus().a((r<s, com.facebook.ads.internal.g.q>) this.f);
        this.c.getEventBus().a((r<s, com.facebook.ads.internal.g.q>) this.g);
        this.c.getEventBus().a((r<s, com.facebook.ads.internal.g.q>) this.h);
        this.c.getEventBus().a((r<s, com.facebook.ads.internal.g.q>) this.i);
        this.c.getEventBus().a((r<s, com.facebook.ads.internal.g.q>) this.j);
        this.c.getEventBus().a((r<s, com.facebook.ads.internal.g.q>) this.k);
    }

    public void destroy() {
        this.c.h();
    }

    public final void disengageSeek(VideoStartReason videoStartReason) {
        if (!this.l) {
            Log.w(d, "disengageSeek called without engageSeek.");
            return;
        }
        this.l = false;
        if (this.m) {
            this.c.a(videoStartReason);
        }
        onSeekDisengaged();
    }

    public final void engageSeek() {
        if (this.l) {
            Log.w(d, "engageSeek called without disengageSeek.");
            return;
        }
        this.l = true;
        this.m = com.facebook.ads.internal.view.d.c.d.STARTED.equals(this.c.getState());
        this.c.a(false);
        onSeekEngaged();
    }

    @IntRange(from = 0)
    public final int getCurrentTimeMs() {
        return this.c.getCurrentPosition();
    }

    @IntRange(from = 0)
    public final int getDuration() {
        return this.c.getDuration();
    }

    @FloatRange(from = 0.0d, to = 0.0d)
    public final float getVolume() {
        return this.c.getVolume();
    }

    public void onCompleted() {
    }

    public void onError() {
    }

    public void onPaused() {
    }

    public void onPlayed() {
    }

    public void onPrepared() {
    }

    public void onSeek() {
    }

    public void onSeekDisengaged() {
    }

    public void onSeekEngaged() {
    }

    public void onVolumeChanged() {
    }

    public final void pause(boolean z) {
        this.c.a(z);
    }

    public final void play(VideoStartReason videoStartReason) {
        this.c.a(videoStartReason);
    }

    public final void seekTo(@IntRange(from = 0) int i) {
        if (this.l) {
            this.c.a(i);
        } else {
            Log.w(d, "Seeking must be preceded by a call to engageSeek, and followed by a call to disengageSeek.");
        }
    }

    final void setAdEventManager(f fVar) {
        this.c.setAdEventManager(fVar);
    }

    @Deprecated
    void setAutoplay(boolean z) {
        this.n = z;
    }

    @Deprecated
    void setAutoplayOnMobile(boolean z) {
        this.o = z;
    }

    final void setListener(com.facebook.ads.internal.view.k kVar) {
        this.c.setListener(kVar);
    }

    public void setNativeAd(NativeAd nativeAd) {
        this.f2482a = nativeAd;
        this.c.a(nativeAd.e(), nativeAd.h());
        this.c.setVideoMPD(nativeAd.d());
        this.c.setVideoURI(nativeAd.c());
        this.c.setVideoCTA(nativeAd.getAdCallToAction());
        this.c.setNativeAd(nativeAd);
        this.f2483b = nativeAd.f();
    }

    public final void setVolume(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.c.setVolume(f);
    }

    public boolean shouldAllowBackgroundPlayback() {
        return false;
    }

    public boolean shouldAutoplay() {
        if (this.c == null || this.c.getState() == com.facebook.ads.internal.view.d.c.d.PLAYBACK_COMPLETED) {
            return false;
        }
        return this.f2483b == VideoAutoplayBehavior.DEFAULT ? this.n && (this.o || y.c(getContext()) == y.a.MOBILE_INTERNET) : this.f2483b == VideoAutoplayBehavior.ON;
    }
}
