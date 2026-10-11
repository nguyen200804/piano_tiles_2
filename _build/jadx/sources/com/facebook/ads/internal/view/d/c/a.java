package com.facebook.ads.internal.view.d.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.MediaController;
import com.facebook.ads.AdSettings;
import com.facebook.ads.VideoStartReason;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.ExoPlayerFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.trackselection.AdaptiveVideoTrackSelection;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.util.Util;

@TargetApi(14)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends TextureView implements TextureView.SurfaceTextureListener, c, ExoPlayer.EventListener, SimpleExoPlayer.VideoListener {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3034a = a.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final Handler f3035b;
    private Uri c;
    private String d;
    private e e;
    private Surface f;

    @Nullable
    private SimpleExoPlayer g;
    private MediaController h;
    private d i;
    private d j;
    private d k;
    private View l;
    private boolean m;
    private boolean n;
    private long o;
    private long p;
    private long q;
    private int r;
    private int s;
    private float t;
    private int u;
    private boolean v;
    private boolean w;
    private VideoStartReason x;

    public a(Context context) {
        super(context);
        this.f3035b = new Handler();
        this.i = d.IDLE;
        this.j = d.IDLE;
        this.k = d.IDLE;
        this.m = false;
        this.n = false;
        this.t = 1.0f;
        this.u = -1;
        this.v = false;
        this.w = false;
        this.x = VideoStartReason.NOT_STARTED;
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3035b = new Handler();
        this.i = d.IDLE;
        this.j = d.IDLE;
        this.k = d.IDLE;
        this.m = false;
        this.n = false;
        this.t = 1.0f;
        this.u = -1;
        this.v = false;
        this.w = false;
        this.x = VideoStartReason.NOT_STARTED;
    }

    public a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3035b = new Handler();
        this.i = d.IDLE;
        this.j = d.IDLE;
        this.k = d.IDLE;
        this.m = false;
        this.n = false;
        this.t = 1.0f;
        this.u = -1;
        this.v = false;
        this.w = false;
        this.x = VideoStartReason.NOT_STARTED;
    }

    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    public a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f3035b = new Handler();
        this.i = d.IDLE;
        this.j = d.IDLE;
        this.k = d.IDLE;
        this.m = false;
        this.n = false;
        this.t = 1.0f;
        this.u = -1;
        this.v = false;
        this.w = false;
        this.x = VideoStartReason.NOT_STARTED;
    }

    private void e() {
        DefaultBandwidthMeter defaultBandwidthMeter = new DefaultBandwidthMeter();
        this.g = ExoPlayerFactory.newSimpleInstance(getContext(), new DefaultTrackSelector(this.f3035b, new AdaptiveVideoTrackSelection.Factory(defaultBandwidthMeter)), new DefaultLoadControl());
        this.g.setVideoListener(this);
        this.g.addListener(this);
        this.g.setPlayWhenReady(false);
        if (this.n && !this.v) {
            this.h = new MediaController(getContext());
            this.h.setAnchorView(this.l == null ? this : this.l);
            this.h.setMediaPlayer(new MediaController.MediaPlayerControl() { // from class: com.facebook.ads.internal.view.d.c.a.1
                @Override // android.widget.MediaController.MediaPlayerControl
                public boolean canPause() {
                    return true;
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public boolean canSeekBackward() {
                    return true;
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public boolean canSeekForward() {
                    return true;
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public int getAudioSessionId() {
                    if (a.this.g != null) {
                        return a.this.g.getAudioSessionId();
                    }
                    return 0;
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public int getBufferPercentage() {
                    if (a.this.g != null) {
                        return a.this.g.getBufferedPercentage();
                    }
                    return 0;
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public int getCurrentPosition() {
                    return a.this.getCurrentPosition();
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public int getDuration() {
                    return a.this.getDuration();
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public boolean isPlaying() {
                    return a.this.g != null && a.this.g.getPlayWhenReady();
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public void pause() {
                    a.this.a(true);
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public void seekTo(int i) {
                    a.this.a(i);
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public void start() {
                    a.this.a(VideoStartReason.USER_STARTED);
                }
            });
            this.h.setEnabled(true);
        }
        if (this.d == null || this.d.length() <= 0 || AdSettings.isTestMode(getContext())) {
            this.g.prepare(new ExtractorMediaSource(this.c, new DefaultDataSourceFactory(getContext(), Util.getUserAgent(getContext(), "ads"), defaultBandwidthMeter), new DefaultExtractorsFactory(), (Handler) null, (ExtractorMediaSource.EventListener) null));
        }
        setVideoState(d.PREPARING);
        if (isAvailable()) {
            onSurfaceTextureAvailable(getSurfaceTexture(), 0, 0);
        }
    }

    private void f() {
        if (this.f != null) {
            this.f.release();
            this.f = null;
        }
        if (this.g != null) {
            this.g.release();
            this.g = null;
        }
        this.h = null;
        this.m = false;
        setVideoState(d.IDLE);
    }

    private void setVideoState(d dVar) {
        if (dVar != this.i) {
            this.i = dVar;
            if (this.i == d.STARTED) {
                this.m = true;
            }
            if (this.e != null) {
                this.e.a(dVar);
            }
        }
    }

    public void a() {
        if (this.w) {
            return;
        }
        a(false);
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void a(int i) {
        if (this.g == null) {
            this.q = i;
        } else {
            this.u = getCurrentPosition();
            this.g.seekTo(i);
        }
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void a(VideoStartReason videoStartReason) {
        this.j = d.STARTED;
        this.x = videoStartReason;
        if (this.g == null) {
            setup(this.c);
        } else if (this.i == d.PREPARED || this.i == d.PAUSED || this.i == d.PLAYBACK_COMPLETED) {
            this.g.setPlayWhenReady(true);
            setVideoState(d.STARTED);
        }
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void a(boolean z) {
        if (this.g != null) {
            this.g.setPlayWhenReady(false);
        } else {
            setVideoState(d.IDLE);
        }
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void b() {
        setVideoState(d.PLAYBACK_COMPLETED);
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void b(boolean z) {
        this.v = z;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void c() {
        this.j = d.IDLE;
        if (this.g != null) {
            this.g.stop();
            this.g.release();
            this.g = null;
        }
        setVideoState(d.IDLE);
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void d() {
        f();
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public int getCurrentPosition() {
        if (this.g != null) {
            return (int) this.g.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public int getDuration() {
        if (this.g == null) {
            return 0;
        }
        return (int) this.g.getDuration();
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public long getInitialBufferTime() {
        return this.p;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public VideoStartReason getStartReason() {
        return this.x;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public d getState() {
        return this.i;
    }

    public d getTargetState() {
        return this.j;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public int getVideoHeight() {
        return this.s;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public int getVideoWidth() {
        return this.r;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public float getVolume() {
        return this.t;
    }

    public void onLoadingChanged(boolean z) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.r, i);
        int defaultSize2 = getDefaultSize(this.s, i2);
        if (this.r > 0 && this.s > 0) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            defaultSize2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                if (this.r * defaultSize2 < this.s * size) {
                    defaultSize = (this.r * defaultSize2) / this.s;
                } else if (this.r * defaultSize2 > this.s * size) {
                    defaultSize2 = (this.s * size) / this.r;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode == 1073741824) {
                int i3 = (this.s * size) / this.r;
                if (mode2 != Integer.MIN_VALUE || i3 <= defaultSize2) {
                    defaultSize2 = i3;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode2 == 1073741824) {
                defaultSize = (this.r * defaultSize2) / this.s;
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize = size;
                }
            } else {
                int i4 = this.r;
                int i5 = this.s;
                if (mode2 != Integer.MIN_VALUE || i5 <= defaultSize2) {
                    defaultSize2 = i5;
                    defaultSize = i4;
                } else {
                    defaultSize = (this.r * defaultSize2) / this.s;
                }
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize2 = (this.s * size) / this.r;
                    defaultSize = size;
                }
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        setVideoState(d.ERROR);
        exoPlaybackException.printStackTrace();
        com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(exoPlaybackException, "[ExoPlayer] Error during playback of ExoPlayer"));
    }

    public void onPlayerStateChanged(boolean z, int i) {
        switch (i) {
            case 1:
                setVideoState(d.IDLE);
                break;
            case 2:
                if (this.u >= 0) {
                    int i2 = this.u;
                    this.u = -1;
                    this.e.a(i2, getCurrentPosition());
                    break;
                }
                break;
            case 3:
                if (this.o != 0) {
                    this.p = System.currentTimeMillis() - this.o;
                }
                setRequestedVolume(this.t);
                if (this.q > 0 && this.q < this.g.getDuration()) {
                    this.g.seekTo(this.q);
                    this.q = 0L;
                }
                if (this.g.getCurrentPosition() != 0 && !z && this.m) {
                    setVideoState(d.PAUSED);
                    break;
                } else if (!z && this.i != d.PLAYBACK_COMPLETED) {
                    setVideoState(d.PREPARED);
                    if (this.j == d.STARTED) {
                        a(this.x);
                        this.j = d.IDLE;
                        break;
                    }
                }
                break;
            case 4:
                if (z) {
                    setVideoState(d.PLAYBACK_COMPLETED);
                }
                if (this.g != null) {
                    this.g.setPlayWhenReady(false);
                    if (!z) {
                        this.g.seekToDefaultPosition();
                    }
                }
                this.m = false;
                break;
        }
    }

    public void onPositionDiscontinuity() {
    }

    public void onRenderedFirstFrame() {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.f != null) {
            this.f.release();
        }
        this.f = new Surface(surfaceTexture);
        if (this.g == null) {
            return;
        }
        this.g.setVideoSurface(this.f);
        if (this.i != d.PAUSED || this.k == d.PAUSED) {
            return;
        }
        a(this.x);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        if (this.f != null) {
            this.f.release();
            this.f = null;
            if (this.g != null) {
                this.g.setVideoSurface((Surface) null);
            }
        }
        this.k = this.n ? d.STARTED : this.i;
        if (this.i == d.PAUSED) {
            return true;
        }
        a(false);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void onTimelineChanged(Timeline timeline, Object obj) {
    }

    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        this.r = i;
        this.s = i2;
        if (this.r == 0 || this.s == 0) {
            return;
        }
        requestLayout();
    }

    public void onVideoTracksDisabled() {
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.g == null) {
            return;
        }
        if (this.h == null || !this.h.isShowing()) {
            if (z) {
                if (this.i != d.PAUSED || this.k == d.PAUSED) {
                    return;
                }
                a(this.x);
                return;
            }
            this.k = this.n ? d.STARTED : this.i;
            if (this.i != d.PAUSED) {
                a();
            }
        }
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setBackgroundPlaybackEnabled(boolean z) {
        this.w = z;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setControlsAnchorView(View view) {
        this.l = view;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.d.c.a.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (a.this.h != null && motionEvent.getAction() == 1) {
                    if (a.this.h.isShowing()) {
                        a.this.h.hide();
                    } else {
                        a.this.h.show();
                    }
                }
                return true;
            }
        });
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setFullScreen(boolean z) {
        this.n = z;
        if (!z || this.v) {
            return;
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.d.c.a.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (a.this.h != null && motionEvent.getAction() == 1) {
                    if (a.this.h.isShowing()) {
                        a.this.h.hide();
                    } else {
                        a.this.h.show();
                    }
                }
                return true;
            }
        });
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setRequestedVolume(float f) {
        this.t = f;
        if (this.g == null || this.i == d.PREPARING || this.i == d.IDLE) {
            return;
        }
        this.g.setVolume(f);
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setVideoMPD(String str) {
        this.d = str;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setVideoStateChangeListener(e eVar) {
        this.e = eVar;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setup(Uri uri) {
        if (this.g != null) {
            f();
        }
        this.c = uri;
        setSurfaceTextureListener(this);
        e();
    }
}
