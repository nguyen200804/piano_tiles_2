package com.facebook.ads.internal.view.d.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.MediaController;
import com.facebook.ads.VideoStartReason;

@TargetApi(14)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends TextureView implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener, c {
    private static final String r = b.class.getSimpleName();

    /* renamed from: a, reason: collision with root package name */
    private Uri f3039a;

    /* renamed from: b, reason: collision with root package name */
    private e f3040b;
    private Surface c;

    @Nullable
    private MediaPlayer d;
    private MediaController e;
    private d f;
    private d g;
    private d h;
    private View i;
    private int j;
    private long k;
    private int l;
    private int m;
    private float n;
    private boolean o;
    private int p;
    private boolean q;
    private int s;
    private boolean t;
    private VideoStartReason u;
    private final MediaController.MediaPlayerControl v;

    public b(Context context) {
        super(context);
        this.f = d.IDLE;
        this.g = d.IDLE;
        this.h = d.IDLE;
        this.j = 0;
        this.l = 0;
        this.m = 0;
        this.n = 1.0f;
        this.o = false;
        this.p = 3;
        this.q = false;
        this.s = 0;
        this.t = false;
        this.u = VideoStartReason.NOT_STARTED;
        this.v = new MediaController.MediaPlayerControl() { // from class: com.facebook.ads.internal.view.d.c.b.1
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
                if (b.this.d != null) {
                    return b.this.d.getAudioSessionId();
                }
                return 0;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public int getBufferPercentage() {
                return 0;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public int getCurrentPosition() {
                return b.this.getCurrentPosition();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public int getDuration() {
                return b.this.getDuration();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public boolean isPlaying() {
                return b.this.d != null && b.this.d.isPlaying();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public void pause() {
                b.this.a(true);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public void seekTo(int i) {
                b.this.a(i);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public void start() {
                b.this.a(VideoStartReason.USER_STARTED);
            }
        };
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = d.IDLE;
        this.g = d.IDLE;
        this.h = d.IDLE;
        this.j = 0;
        this.l = 0;
        this.m = 0;
        this.n = 1.0f;
        this.o = false;
        this.p = 3;
        this.q = false;
        this.s = 0;
        this.t = false;
        this.u = VideoStartReason.NOT_STARTED;
        this.v = new MediaController.MediaPlayerControl() { // from class: com.facebook.ads.internal.view.d.c.b.1
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
                if (b.this.d != null) {
                    return b.this.d.getAudioSessionId();
                }
                return 0;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public int getBufferPercentage() {
                return 0;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public int getCurrentPosition() {
                return b.this.getCurrentPosition();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public int getDuration() {
                return b.this.getDuration();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public boolean isPlaying() {
                return b.this.d != null && b.this.d.isPlaying();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public void pause() {
                b.this.a(true);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public void seekTo(int i) {
                b.this.a(i);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public void start() {
                b.this.a(VideoStartReason.USER_STARTED);
            }
        };
    }

    public b(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = d.IDLE;
        this.g = d.IDLE;
        this.h = d.IDLE;
        this.j = 0;
        this.l = 0;
        this.m = 0;
        this.n = 1.0f;
        this.o = false;
        this.p = 3;
        this.q = false;
        this.s = 0;
        this.t = false;
        this.u = VideoStartReason.NOT_STARTED;
        this.v = new MediaController.MediaPlayerControl() { // from class: com.facebook.ads.internal.view.d.c.b.1
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
                if (b.this.d != null) {
                    return b.this.d.getAudioSessionId();
                }
                return 0;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public int getBufferPercentage() {
                return 0;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public int getCurrentPosition() {
                return b.this.getCurrentPosition();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public int getDuration() {
                return b.this.getDuration();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public boolean isPlaying() {
                return b.this.d != null && b.this.d.isPlaying();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public void pause() {
                b.this.a(true);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public void seekTo(int i2) {
                b.this.a(i2);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public void start() {
                b.this.a(VideoStartReason.USER_STARTED);
            }
        };
    }

    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    public b(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f = d.IDLE;
        this.g = d.IDLE;
        this.h = d.IDLE;
        this.j = 0;
        this.l = 0;
        this.m = 0;
        this.n = 1.0f;
        this.o = false;
        this.p = 3;
        this.q = false;
        this.s = 0;
        this.t = false;
        this.u = VideoStartReason.NOT_STARTED;
        this.v = new MediaController.MediaPlayerControl() { // from class: com.facebook.ads.internal.view.d.c.b.1
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
                if (b.this.d != null) {
                    return b.this.d.getAudioSessionId();
                }
                return 0;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public int getBufferPercentage() {
                return 0;
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public int getCurrentPosition() {
                return b.this.getCurrentPosition();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public int getDuration() {
                return b.this.getDuration();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public boolean isPlaying() {
                return b.this.d != null && b.this.d.isPlaying();
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public void pause() {
                b.this.a(true);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public void seekTo(int i22) {
                b.this.a(i22);
            }

            @Override // android.widget.MediaController.MediaPlayerControl
            public void start() {
                b.this.a(VideoStartReason.USER_STARTED);
            }
        };
    }

    private boolean e() {
        return this.f == d.PREPARED || this.f == d.STARTED || this.f == d.PAUSED || this.f == d.PLAYBACK_COMPLETED;
    }

    private boolean f() {
        return (this.f == d.PREPARING || this.f == d.PREPARED) ? false : true;
    }

    private void setVideoState(d dVar) {
        if (dVar != this.f) {
            this.f = dVar;
            if (this.f3040b != null) {
                this.f3040b.a(dVar);
            }
        }
    }

    public void a() {
        if (this.q) {
            return;
        }
        a(false);
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void a(int i) {
        if (this.d == null || !e()) {
            this.j = i;
        } else {
            if (i >= getDuration() || i <= 0) {
                return;
            }
            this.s = getCurrentPosition();
            this.j = i;
            this.d.seekTo(i);
        }
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void a(VideoStartReason videoStartReason) {
        this.g = d.STARTED;
        this.u = videoStartReason;
        if (this.f == d.STARTED || this.f == d.PREPARED || this.f == d.IDLE || this.f == d.PAUSED || this.f == d.PLAYBACK_COMPLETED) {
            if (this.d == null) {
                setup(this.f3039a);
            } else {
                if (this.j > 0) {
                    this.d.seekTo(this.j);
                }
                this.d.start();
                setVideoState(d.STARTED);
            }
        }
        if (isAvailable()) {
            onSurfaceTextureAvailable(getSurfaceTexture(), 0, 0);
        }
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void a(boolean z) {
        this.g = d.PAUSED;
        if (this.d == null) {
            setVideoState(d.IDLE);
            return;
        }
        if (f()) {
            if (z) {
                this.h = d.PAUSED;
            }
            this.d.pause();
            if (this.f != d.PLAYBACK_COMPLETED) {
                setVideoState(d.PAUSED);
            }
        }
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void b() {
        setVideoState(d.PLAYBACK_COMPLETED);
        c();
        this.j = 0;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void b(boolean z) {
        if (this.e != null) {
            this.e.setVisibility(8);
        }
        this.t = true;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void c() {
        this.g = d.IDLE;
        if (this.d != null) {
            int currentPosition = this.d.getCurrentPosition();
            if (currentPosition > 0) {
                this.j = currentPosition;
            }
            this.d.stop();
            this.d.reset();
            this.d.release();
            this.d = null;
            if (this.e != null) {
                this.e.hide();
                this.e.setEnabled(false);
            }
        }
        setVideoState(d.IDLE);
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void d() {
        if (this.d != null) {
            this.d.setSurface(null);
            this.d.setOnBufferingUpdateListener(null);
            this.d.setOnCompletionListener(null);
            this.d.setOnErrorListener(null);
            this.d.setOnInfoListener(null);
            this.d.setOnPreparedListener(null);
            this.d.setOnVideoSizeChangedListener(null);
            this.d.setOnSeekCompleteListener(null);
            this.d.reset();
            this.d = null;
        }
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public int getCurrentPosition() {
        if (this.d != null) {
            return this.d.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public int getDuration() {
        if (this.d == null) {
            return 0;
        }
        if (getState() == d.STARTED || getState() == d.PAUSED || getState() == d.PREPARED || getState() == d.PLAYBACK_COMPLETED) {
            return this.d.getDuration();
        }
        return 0;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public long getInitialBufferTime() {
        return this.k;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public VideoStartReason getStartReason() {
        return this.u;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public d getState() {
        return this.f;
    }

    public d getTargetState() {
        return this.g;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public int getVideoHeight() {
        return this.m;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public int getVideoWidth() {
        return this.l;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public float getVolume() {
        return this.n;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        if (this.d != null) {
            this.d.pause();
        }
        setVideoState(d.PLAYBACK_COMPLETED);
        a(0);
        this.j = 0;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        if (this.p <= 0 || getState() != d.STARTED) {
            setVideoState(d.ERROR);
            c();
            return true;
        }
        this.p--;
        c();
        a(this.u);
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        switch (i) {
            case 701:
                setVideoState(d.BUFFERING);
                break;
            case 702:
                setVideoState(d.STARTED);
                break;
        }
        return false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.l, i);
        int defaultSize2 = getDefaultSize(this.m, i2);
        if (this.l > 0 && this.m > 0) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            defaultSize2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                if (this.l * defaultSize2 < this.m * size) {
                    defaultSize = (this.l * defaultSize2) / this.m;
                } else if (this.l * defaultSize2 > this.m * size) {
                    defaultSize2 = (this.m * size) / this.l;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode == 1073741824) {
                int i3 = (this.m * size) / this.l;
                if (mode2 != Integer.MIN_VALUE || i3 <= defaultSize2) {
                    defaultSize2 = i3;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode2 == 1073741824) {
                defaultSize = (this.l * defaultSize2) / this.m;
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize = size;
                }
            } else {
                int i4 = this.l;
                int i5 = this.m;
                if (mode2 != Integer.MIN_VALUE || i5 <= defaultSize2) {
                    defaultSize2 = i5;
                    defaultSize = i4;
                } else {
                    defaultSize = (this.l * defaultSize2) / this.m;
                }
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize2 = (this.m * size) / this.l;
                    defaultSize = size;
                }
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        setVideoState(d.PREPARED);
        if (this.o && !this.t) {
            this.e = new MediaController(getContext());
            this.e.setAnchorView(this.i == null ? this : this.i);
            this.e.setMediaPlayer(this.v);
            this.e.setEnabled(true);
        }
        setRequestedVolume(this.n);
        this.l = mediaPlayer.getVideoWidth();
        this.m = mediaPlayer.getVideoHeight();
        if (this.j > 0) {
            if (this.j >= this.d.getDuration()) {
                this.j = 0;
            }
            this.d.seekTo(this.j);
            this.j = 0;
        }
        if (this.g == d.STARTED) {
            a(this.u);
        }
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        if (this.f3040b == null) {
            return;
        }
        this.f3040b.a(this.s, this.j);
        this.j = 0;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.c == null) {
            this.c = new Surface(surfaceTexture);
        }
        if (this.d == null) {
            return;
        }
        this.d.setSurface(this.c);
        if (this.f != d.PAUSED || this.h == d.PAUSED) {
            return;
        }
        a(this.u);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        if (this.c != null) {
            this.c.release();
            this.c = null;
        }
        this.h = this.o ? d.STARTED : this.f;
        if (this.f == d.PAUSED) {
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

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        this.l = mediaPlayer.getVideoWidth();
        this.m = mediaPlayer.getVideoHeight();
        if (this.l == 0 || this.m == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.d == null) {
            return;
        }
        if (this.e == null || !this.e.isShowing()) {
            if (z) {
                if (this.f != d.PAUSED || this.h == d.PAUSED) {
                    return;
                }
                a(this.u);
                return;
            }
            this.h = this.o ? d.STARTED : this.f;
            if (this.f != d.PAUSED) {
                a();
            }
        }
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setBackgroundPlaybackEnabled(boolean z) {
        this.q = z;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setControlsAnchorView(View view) {
        this.i = view;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.d.c.b.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (!b.this.t && b.this.e != null && motionEvent.getAction() == 1) {
                    if (b.this.e.isShowing()) {
                        b.this.e.hide();
                    } else {
                        b.this.e.show();
                    }
                }
                return true;
            }
        });
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setFullScreen(boolean z) {
        this.o = z;
        if (!this.o || this.t) {
            return;
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.d.c.b.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (!b.this.t && b.this.e != null && motionEvent.getAction() == 1) {
                    if (b.this.e.isShowing()) {
                        b.this.e.hide();
                    } else {
                        b.this.e.show();
                    }
                }
                return true;
            }
        });
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setRequestedVolume(float f) {
        this.n = f;
        if (this.d == null || this.f == d.PREPARING || this.f == d.IDLE) {
            return;
        }
        this.d.setVolume(f, f);
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setVideoMPD(String str) {
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setVideoStateChangeListener(e eVar) {
        this.f3040b = eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.facebook.ads.internal.view.d.c.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setup(android.net.Uri r9) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.view.d.c.b.setup(android.net.Uri):void");
    }
}
