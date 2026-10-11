package com.jirbo.adcolony;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.MediaController;
import java.io.FileDescriptor;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class e extends SurfaceView implements MediaController.MediaPlayerControl {
    private MediaPlayer.OnCompletionListener A;
    private MediaPlayer.OnErrorListener B;
    private MediaPlayer.OnBufferingUpdateListener C;

    /* renamed from: a, reason: collision with root package name */
    String f3818a;

    /* renamed from: b, reason: collision with root package name */
    Uri f3819b;
    FileDescriptor c;
    int d;
    int e;
    int f;
    SurfaceHolder g;
    MediaPlayer h;
    int i;
    int j;
    int k;
    int l;
    MediaController m;
    MediaPlayer.OnCompletionListener n;
    MediaPlayer.OnPreparedListener o;
    int p;
    MediaPlayer.OnErrorListener q;
    int r;
    boolean s;
    boolean t;
    boolean u;
    boolean v;
    int w;
    MediaPlayer.OnVideoSizeChangedListener x;
    MediaPlayer.OnPreparedListener y;
    SurfaceHolder.Callback z;

    e(Context context) {
        super(context);
        this.f3818a = "ADCCustomVideoView";
        this.e = 0;
        this.f = 0;
        this.g = null;
        this.h = null;
        this.x = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.jirbo.adcolony.e.1
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mp, int width, int height) {
                e.this.i = mp.getVideoWidth();
                e.this.j = mp.getVideoHeight();
                if (e.this.i != 0 && e.this.j != 0) {
                    e.this.getHolder().setFixedSize(e.this.i, e.this.j);
                }
            }
        };
        this.y = new MediaPlayer.OnPreparedListener() { // from class: com.jirbo.adcolony.e.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mp) {
                e.this.e = 2;
                e eVar = e.this;
                e eVar2 = e.this;
                e.this.u = true;
                eVar2.t = true;
                eVar.s = true;
                if (e.this.o != null) {
                    e.this.o.onPrepared(e.this.h);
                }
                if (e.this.m != null) {
                    e.this.m.setEnabled(true);
                }
                e.this.i = mp.getVideoWidth();
                e.this.j = mp.getVideoHeight();
                int i = e.this.r;
                if (i != 0) {
                    e.this.seekTo(i);
                }
                if (e.this.i != 0 && e.this.j != 0) {
                    e.this.getHolder().setFixedSize(e.this.i, e.this.j);
                    if (e.this.k == e.this.i && e.this.l == e.this.j) {
                        if (e.this.f == 3) {
                            e.this.start();
                            if (e.this.m != null) {
                                e.this.m.show();
                                return;
                            }
                            return;
                        }
                        if (!e.this.isPlaying()) {
                            if ((i != 0 || e.this.getCurrentPosition() > 0) && e.this.m != null) {
                                e.this.m.show(0);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (e.this.f == 3) {
                    e.this.start();
                }
            }
        };
        this.A = new MediaPlayer.OnCompletionListener() { // from class: com.jirbo.adcolony.e.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mp) {
                e.this.e = 5;
                e.this.f = 5;
                if (e.this.m != null) {
                    e.this.m.hide();
                }
                if (e.this.n != null) {
                    e.this.n.onCompletion(e.this.h);
                }
            }
        };
        this.B = new MediaPlayer.OnErrorListener() { // from class: com.jirbo.adcolony.e.4
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mp, int framework_err, int impl_err) {
                String str;
                Log.d(e.this.f3818a, "Error: " + framework_err + "," + impl_err);
                e.this.e = -1;
                e.this.f = -1;
                if (e.this.m != null) {
                    e.this.m.hide();
                }
                if ((e.this.q == null || !e.this.q.onError(e.this.h, framework_err, impl_err)) && e.this.getWindowToken() != null) {
                    e.this.b().getResources();
                    if (framework_err == 200) {
                        str = "Invalid progressive playback";
                    } else {
                        str = "Unknown error";
                    }
                    new AlertDialog.Builder(e.this.b()).setTitle("ERROR").setMessage(str).setPositiveButton("OKAY", new DialogInterface.OnClickListener() { // from class: com.jirbo.adcolony.e.4.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int whichButton) {
                            if (e.this.n != null) {
                                e.this.n.onCompletion(e.this.h);
                            }
                        }
                    }).setCancelable(false).show();
                }
                return true;
            }
        };
        this.C = new MediaPlayer.OnBufferingUpdateListener() { // from class: com.jirbo.adcolony.e.5
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(MediaPlayer mp, int percent) {
                e.this.p = percent;
            }
        };
        this.z = new SurfaceHolder.Callback() { // from class: com.jirbo.adcolony.e.6
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder holder, int format, int w, int h) {
                e.this.k = w;
                e.this.l = h;
                boolean z = e.this.f == 3;
                boolean z2 = e.this.i == w && e.this.j == h;
                if (e.this.h != null && z && z2) {
                    if (e.this.r != 0) {
                        e.this.seekTo(e.this.r);
                    }
                    e.this.start();
                    if (e.this.m != null) {
                        e.this.m.show();
                    }
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder holder) {
                e.this.g = holder;
                if (e.this.h == null || e.this.e != 6 || e.this.f != 7) {
                    e.this.e();
                } else {
                    e.this.h.setDisplay(e.this.g);
                    e.this.c();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder holder) {
                e.this.g = null;
                if (e.this.m != null) {
                    e.this.m.hide();
                }
                if (e.this.e != 6) {
                    e.this.a(true);
                }
            }
        };
        d();
    }

    public e(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        d();
    }

    public e(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3818a = "ADCCustomVideoView";
        this.e = 0;
        this.f = 0;
        this.g = null;
        this.h = null;
        this.x = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.jirbo.adcolony.e.1
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mp, int width, int height) {
                e.this.i = mp.getVideoWidth();
                e.this.j = mp.getVideoHeight();
                if (e.this.i != 0 && e.this.j != 0) {
                    e.this.getHolder().setFixedSize(e.this.i, e.this.j);
                }
            }
        };
        this.y = new MediaPlayer.OnPreparedListener() { // from class: com.jirbo.adcolony.e.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mp) {
                e.this.e = 2;
                e eVar = e.this;
                e eVar2 = e.this;
                e.this.u = true;
                eVar2.t = true;
                eVar.s = true;
                if (e.this.o != null) {
                    e.this.o.onPrepared(e.this.h);
                }
                if (e.this.m != null) {
                    e.this.m.setEnabled(true);
                }
                e.this.i = mp.getVideoWidth();
                e.this.j = mp.getVideoHeight();
                int i2 = e.this.r;
                if (i2 != 0) {
                    e.this.seekTo(i2);
                }
                if (e.this.i != 0 && e.this.j != 0) {
                    e.this.getHolder().setFixedSize(e.this.i, e.this.j);
                    if (e.this.k == e.this.i && e.this.l == e.this.j) {
                        if (e.this.f == 3) {
                            e.this.start();
                            if (e.this.m != null) {
                                e.this.m.show();
                                return;
                            }
                            return;
                        }
                        if (!e.this.isPlaying()) {
                            if ((i2 != 0 || e.this.getCurrentPosition() > 0) && e.this.m != null) {
                                e.this.m.show(0);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (e.this.f == 3) {
                    e.this.start();
                }
            }
        };
        this.A = new MediaPlayer.OnCompletionListener() { // from class: com.jirbo.adcolony.e.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mp) {
                e.this.e = 5;
                e.this.f = 5;
                if (e.this.m != null) {
                    e.this.m.hide();
                }
                if (e.this.n != null) {
                    e.this.n.onCompletion(e.this.h);
                }
            }
        };
        this.B = new MediaPlayer.OnErrorListener() { // from class: com.jirbo.adcolony.e.4
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mp, int framework_err, int impl_err) {
                String str;
                Log.d(e.this.f3818a, "Error: " + framework_err + "," + impl_err);
                e.this.e = -1;
                e.this.f = -1;
                if (e.this.m != null) {
                    e.this.m.hide();
                }
                if ((e.this.q == null || !e.this.q.onError(e.this.h, framework_err, impl_err)) && e.this.getWindowToken() != null) {
                    e.this.b().getResources();
                    if (framework_err == 200) {
                        str = "Invalid progressive playback";
                    } else {
                        str = "Unknown error";
                    }
                    new AlertDialog.Builder(e.this.b()).setTitle("ERROR").setMessage(str).setPositiveButton("OKAY", new DialogInterface.OnClickListener() { // from class: com.jirbo.adcolony.e.4.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int whichButton) {
                            if (e.this.n != null) {
                                e.this.n.onCompletion(e.this.h);
                            }
                        }
                    }).setCancelable(false).show();
                }
                return true;
            }
        };
        this.C = new MediaPlayer.OnBufferingUpdateListener() { // from class: com.jirbo.adcolony.e.5
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(MediaPlayer mp, int percent) {
                e.this.p = percent;
            }
        };
        this.z = new SurfaceHolder.Callback() { // from class: com.jirbo.adcolony.e.6
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder holder, int format, int w, int h) {
                e.this.k = w;
                e.this.l = h;
                boolean z = e.this.f == 3;
                boolean z2 = e.this.i == w && e.this.j == h;
                if (e.this.h != null && z && z2) {
                    if (e.this.r != 0) {
                        e.this.seekTo(e.this.r);
                    }
                    e.this.start();
                    if (e.this.m != null) {
                        e.this.m.show();
                    }
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder holder) {
                e.this.g = holder;
                if (e.this.h == null || e.this.e != 6 || e.this.f != 7) {
                    e.this.e();
                } else {
                    e.this.h.setDisplay(e.this.g);
                    e.this.c();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder holder) {
                e.this.g = null;
                if (e.this.m != null) {
                    e.this.m.hide();
                }
                if (e.this.e != 6) {
                    e.this.a(true);
                }
            }
        };
        d();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int defaultSize = getDefaultSize(this.i, widthMeasureSpec);
        int defaultSize2 = getDefaultSize(this.j, heightMeasureSpec);
        if (this.i > 0 && this.j > 0) {
            if (this.i * defaultSize2 > this.j * defaultSize) {
                defaultSize2 = (this.j * defaultSize) / this.i;
            } else if (this.i * defaultSize2 < this.j * defaultSize) {
                defaultSize = (this.i * defaultSize2) / this.j;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    private void d() {
        this.i = 0;
        this.j = 0;
        getHolder().addCallback(this.z);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        if (this.v) {
            requestFocus();
        }
        this.e = 0;
        this.f = 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return 0;
    }

    public void a(FileDescriptor fileDescriptor) {
        this.c = fileDescriptor;
        this.r = 0;
        e();
        requestLayout();
        invalidate();
    }

    public void a() {
        if (this.h != null) {
            this.h.stop();
            this.h.release();
            this.h = null;
            this.e = 0;
            this.f = 0;
        }
    }

    Activity b() {
        return f.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if ((this.f3819b != null || this.c != null) && this.g != null) {
            Intent intent = new Intent("com.android.music.musicservicecommand");
            intent.putExtra("command", "pause");
            b().sendBroadcast(intent);
            a(false);
            try {
                this.h = new MediaPlayer();
                this.h.setOnPreparedListener(this.y);
                this.h.setOnVideoSizeChangedListener(this.x);
                this.d = -1;
                this.h.setOnCompletionListener(this.A);
                this.h.setOnErrorListener(this.B);
                this.h.setOnBufferingUpdateListener(this.C);
                this.p = 0;
                if (this.f3819b != null) {
                    this.h.setDataSource(b(), this.f3819b);
                } else {
                    this.h.setDataSource(this.c);
                }
                this.h.setDisplay(this.g);
                this.h.setAudioStreamType(3);
                this.h.setScreenOnWhilePlaying(true);
                this.h.prepare();
                this.e = 1;
                f();
            } catch (IOException e) {
                if (this.f3819b != null) {
                    Log.w(this.f3818a, "Unable to open content: " + this.f3819b, e);
                } else {
                    Log.w(this.f3818a, "Unable to open content");
                }
                this.e = -1;
                this.f = -1;
                this.B.onError(this.h, 1, 0);
                e.printStackTrace();
            } catch (IllegalArgumentException e2) {
                if (this.f3819b != null) {
                    Log.w(this.f3818a, "Unable to open content: " + this.f3819b, e2);
                } else {
                    Log.w(this.f3818a, "Unable to open content");
                }
                this.e = -1;
                this.f = -1;
                this.B.onError(this.h, 1, 0);
                e2.printStackTrace();
            }
        }
    }

    private void f() {
        if (this.h != null && this.m != null) {
            this.m.setMediaPlayer(this);
            this.m.setAnchorView(getParent() instanceof View ? (View) getParent() : this);
            this.m.setEnabled(h());
        }
    }

    public void a(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.o = onPreparedListener;
    }

    public void a(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.n = onCompletionListener;
    }

    public void a(MediaPlayer.OnErrorListener onErrorListener) {
        this.q = onErrorListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (this.h != null) {
            this.h.reset();
            this.h.release();
            this.h = null;
            this.e = 0;
            if (z) {
                this.f = 0;
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (h() && this.m != null) {
            g();
            return false;
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent ev) {
        if (h() && this.m != null) {
            g();
            return false;
        }
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        boolean z = (keyCode == 4 || keyCode == 24 || keyCode == 25 || keyCode == 82 || keyCode == 5 || keyCode == 6) ? false : true;
        if (h() && z && this.m != null) {
            if (keyCode == 79 || keyCode == 85) {
                if (this.h.isPlaying()) {
                    pause();
                    this.m.show();
                    return true;
                }
                start();
                this.m.hide();
                return true;
            }
            if (keyCode == 86 && this.h.isPlaying()) {
                pause();
                this.m.show();
            } else {
                g();
            }
        }
        return super.onKeyDown(keyCode, event);
    }

    private void g() {
        if (this.m.isShowing()) {
            this.m.hide();
        } else {
            this.m.show();
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() {
        if (h()) {
            this.h.start();
            this.e = 3;
        }
        this.f = 3;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        if (h() && this.h.isPlaying()) {
            this.h.pause();
            this.e = 4;
        }
        this.f = 4;
    }

    public void c() {
        if (this.g == null && this.e == 6) {
            this.f = 7;
            return;
        }
        if (this.h != null && this.e == 6) {
            this.h.start();
            this.e = this.w;
            this.f = this.w;
        } else if (this.e == 8) {
            e();
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        if (h()) {
            if (this.d > 0) {
                return this.d;
            }
            this.d = this.h.getDuration();
            return this.d;
        }
        this.d = -1;
        return this.d;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        if (h()) {
            return this.h.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int msec) {
        if (h()) {
            this.h.seekTo(msec);
            this.r = 0;
        } else {
            this.r = msec;
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return h() && this.h.isPlaying();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.h != null) {
            return this.p;
        }
        return 0;
    }

    private boolean h() {
        return (this.h == null || this.e == -1 || this.e == 0 || this.e == 1) ? false : true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return this.s;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return this.t;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return this.u;
    }
}
