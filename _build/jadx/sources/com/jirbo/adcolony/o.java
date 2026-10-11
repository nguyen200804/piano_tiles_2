package com.jirbo.adcolony;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.view.Display;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import com.jirbo.adcolony.a;
import com.jirbo.adcolony.an;
import java.io.FileInputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class o extends FrameLayout implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    boolean A;
    boolean B;
    boolean C;
    String D;
    l E;
    m F;
    n G;
    c H;
    c I;
    c J;
    ImageView K;
    b L;
    View M;
    Bitmap N;
    c O;
    ImageView P;
    boolean Q;
    Button R;
    String S;
    String T;
    String U;
    MediaPlayer V;
    Surface W;

    /* renamed from: a, reason: collision with root package name */
    Activity f3837a;
    FrameLayout.LayoutParams aA;
    FileInputStream aB;
    String aa;
    String ab;
    String ac;
    String ad;
    String ae;
    String af;
    String ag;
    String ah;
    String ai;
    k aj;
    int ak;
    int al;
    int am;
    int an;
    int ao;
    int ap;
    int aq;
    int ar;
    an.e as;
    float at;
    float au;
    float av;
    boolean aw;
    boolean ax;
    boolean ay;
    FrameLayout.LayoutParams az;

    /* renamed from: b, reason: collision with root package name */
    String f3838b;
    String c;
    ViewGroup d;
    SurfaceTexture e;
    int f;
    int g;
    int h;
    int i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    boolean q;
    boolean r;
    boolean s;
    boolean t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    boolean z;

    o(Activity activity, String str, int i, boolean z) {
        super(activity);
        this.v = true;
        this.x = true;
        this.Q = false;
        this.S = "";
        this.T = "";
        this.U = "";
        this.ah = "";
        this.ai = "";
        this.aj = k.NONE;
        this.an = -1;
        this.ap = -3355444;
        this.aq = -16777216;
        this.at = 0.25f;
        this.au = 0.25f;
        this.y = z;
        a(activity, str, i);
        a();
    }

    void a(Activity activity, String str, int i) {
        a(activity, str, i, 0);
    }

    void a(Activity activity, String str, int i, int i2) {
        int width;
        int height;
        t.e();
        t.aa = 0;
        this.f3837a = activity;
        this.f3838b = str;
        this.am = i;
        this.h = i;
        if (i2 != 0) {
            this.i = i2;
            this.an = i2;
            this.k = true;
        }
        this.m = true;
        this.av = t.b().getResources().getDisplayMetrics().density;
        Display defaultDisplay = t.b().getWindowManager().getDefaultDisplay();
        if (Build.VERSION.SDK_INT >= 14) {
            Point point = new Point();
            defaultDisplay.getSize(point);
            width = point.x;
            height = point.y;
        } else {
            width = defaultDisplay.getWidth();
            height = defaultDisplay.getHeight();
        }
        if (width >= height) {
            width = height;
        }
        this.ar = width;
        this.E = new l(str);
        this.E.f = "native";
        this.E.g = "native";
        setBackgroundColor(-16777216);
        if (this.v) {
            if (!this.E.b(true) || this.E.e == null || this.E.e.z == null) {
                if (!this.y) {
                    al.d.b((Object) "AdColonyNativeAdView created while no ads are available, returning blank view.");
                    this.E.f3834b = 5;
                    t.c.d.a(str, this.E);
                }
                this.ay = true;
                return;
            }
            this.as = this.E.d;
            if (!this.y) {
                if (!this.y) {
                    t.ae.add(this);
                }
                this.E.d.c();
                if (!this.E.a(true)) {
                    this.ay = true;
                }
                this.E.e.z.i = true;
                t.c.d.a(str, this.E);
            }
        }
    }

    void a() {
        a(true);
    }

    void a(boolean z) {
        ViewGroup.LayoutParams layoutParams;
        this.t = false;
        this.l = false;
        setWillNotDraw(false);
        this.E.s = this;
        if (this.v) {
            if (t.c == null || t.c.f3701a == null || this.E == null || this.E.c == null || (!t.c.a(this.E.c, true, false) && this.ay)) {
                this.p = true;
            } else {
                t.c.f3701a.b(this.f3838b);
            }
            this.c = t.g("video_filepath");
            this.aa = t.g("advertiser_name");
            this.ab = t.g("description");
            this.ac = t.g("title");
            this.ad = t.g("poster_image");
            this.ae = t.g("unmute");
            this.af = t.g("mute");
            this.ag = t.g("thumb_image");
            this.Q = t.f("native_engagement_enabled");
            this.S = t.g("native_engagement_label");
            this.T = t.g("native_engagement_command");
            this.U = t.g("native_engagement_type");
            this.B = t.f("v4iap_enabled");
            this.C = t.f("click_to_install");
            this.D = t.g("store_url");
            this.ai = t.R;
            if (this.B) {
                this.aj = k.AUTOMATIC;
            }
            this.ah = t.g("product_id");
            if (this.E.e == null || this.E.e.z == null) {
                this.s = true;
            } else {
                this.s = this.E.e.z.f3782b;
            }
            if (this.as != null) {
                this.as.k();
            }
            if (this.E.e == null || this.E.e.z == null || !this.E.e.z.f3781a || this.E.d == null) {
                t.aa = 13;
                return;
            } else {
                this.n = true;
                if (this.y) {
                    return;
                }
            }
        } else if (Build.VERSION.SDK_INT < 14) {
            return;
        }
        if (this.v) {
            this.ak = this.E.e.y.f3748b;
            this.al = this.E.e.y.c;
            t.f();
            if (this.an == -1) {
                this.an = (int) (this.al * (this.am / this.ak));
                this.i = this.an;
            }
            if (!z && this.Q) {
                this.an -= this.an / 6;
            }
            float f = this.ak / this.al;
            if (this.am / this.ak > this.an / this.al) {
                this.ax = true;
                this.am = (int) (this.an * f);
            } else {
                this.aw = true;
                this.an = (int) (this.am / f);
            }
            this.aA = new FrameLayout.LayoutParams(this.am, this.an, 48);
            this.az = new FrameLayout.LayoutParams(this.h, this.i, 48);
            if (this.Q && !z && this.aw) {
                this.aA.setMargins(0, ((this.i - this.an) / 2) - (this.an / 10), 0, 0);
                this.az.setMargins(0, ((this.i - this.an) / 2) - (this.an / 10), 0, (((this.i - this.an) / 2) - (this.an / 10)) * (-1));
            } else if (!z && this.aw) {
                this.aA.setMargins(0, (this.i - this.an) / 2, 0, 0);
                this.az.setMargins(0, (this.i - this.an) / 2, 0, ((this.i - this.an) / 2) * (-1));
            } else if (this.Q && !z && this.ax) {
                this.aA.setMargins((this.h - this.am) / 2, 0, 0, 0);
                this.az.setMargins((this.h - this.am) / 2, 0, ((this.h - this.am) / 2) * (-1), 0);
            } else if (!z && this.ax) {
                this.aA.setMargins((this.h - this.am) / 2, 0, 0, 0);
                this.az.setMargins((this.h - this.am) / 2, 0, ((this.h - this.am) / 2) * (-1), 0);
            }
            this.H = new c(this.ad, true, false);
            this.H.a(1.0f / (((float) this.H.f) / ((float) this.am)) > 1.0f / (((float) this.H.g) / ((float) this.an)) ? 1.0f / (this.H.g / this.an) : 1.0f / (this.H.f / this.am), true);
            this.v = false;
        }
        if (this.Q) {
            this.R = new Button(t.b());
            this.R.setText(this.S);
            this.R.setGravity(17);
            this.R.setTextSize((int) (18.0d * (this.am / this.ar)));
            this.R.setPadding(0, 0, 0, 0);
            this.R.setBackgroundColor(this.ap);
            this.R.setTextColor(this.aq);
            this.R.setOnTouchListener(new View.OnTouchListener() { // from class: com.jirbo.adcolony.o.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View v, MotionEvent event) {
                    int action = event.getAction();
                    if (action == 0) {
                        float[] fArr = new float[3];
                        Color.colorToHSV(o.this.ap, fArr);
                        fArr[2] = fArr[2] * 0.8f;
                        o.this.R.setBackgroundColor(Color.HSVToColor(fArr));
                    } else if (action == 3) {
                        o.this.R.setBackgroundColor(o.this.ap);
                    } else if (action == 1) {
                        if (o.this.B) {
                            o.this.aj = k.OVERLAY;
                            o.this.p = true;
                        } else {
                            if (o.this.U.equals("install") || o.this.U.equals("url")) {
                                t.c.d.b("native_overlay_click", o.this.E);
                                try {
                                    t.b().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(o.this.T)));
                                } catch (Exception e) {
                                    Toast.makeText(t.b(), "Unable to open store.", 0).show();
                                }
                            }
                            o.this.R.setBackgroundColor(o.this.ap);
                        }
                    }
                    return true;
                }
            });
        }
        this.J = new c(this.ae, true, false);
        this.I = new c(this.af, true, false);
        this.O = new c(this.ag, true, false);
        this.O.a(1.0f / ((float) ((this.O.f / this.am) / ((this.am / 5.5d) / this.am))), true);
        this.I.a(this.av / 2.0f, true);
        this.J.a(this.av / 2.0f, true);
        this.L = new b(t.b());
        this.P = new ImageView(t.b());
        this.K = new ImageView(t.b());
        this.P.setImageBitmap(this.O.f3814a);
        if (this.m) {
            this.K.setImageBitmap(this.I.f3814a);
        } else {
            this.K.setImageBitmap(this.J.f3814a);
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(this.I.f, this.I.g, 48);
        layoutParams2.setMargins(this.h - this.I.f, 0, 0, 0);
        this.K.setOnClickListener(new View.OnClickListener() { // from class: com.jirbo.adcolony.o.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (o.this.m) {
                    if (o.this.G != null) {
                        o.this.G.a(o.this, true);
                    }
                    o.this.a(true, true);
                    o.this.r = true;
                    return;
                }
                if (o.this.N == o.this.J.f3814a) {
                    if (o.this.G != null) {
                        o.this.G.a(o.this, false);
                    }
                    o.this.r = false;
                    o.this.a(false, true);
                }
            }
        });
        this.N = this.I.f3814a;
        if (this.p) {
            this.K.setVisibility(8);
        }
        if (this.q) {
            this.K.setVisibility(4);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            this.M = new a(t.b(), this.p);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            addView(this.M, this.aA);
        }
        if (Build.VERSION.SDK_INT < 14) {
            this.p = true;
        }
        addView(this.L, this.az);
        if (this.s && Build.VERSION.SDK_INT >= 14 && this.x) {
            addView(this.K, layoutParams2);
        }
        if (this.Q) {
            if (z) {
                layoutParams = new FrameLayout.LayoutParams(this.h, this.i / 5, 80);
            } else {
                layoutParams = new FrameLayout.LayoutParams(this.h, this.an / 5, 80);
            }
            addView(this.R, layoutParams);
        }
    }

    boolean b(boolean z) {
        return (this.E.a(true) || !this.ay) && f.b(this.f3838b);
    }

    public int b() {
        return this.h;
    }

    public int c() {
        return (this.k || !this.Q) ? this.i : this.i + (this.i / 5);
    }

    void a(boolean z, boolean z2) {
        if (z) {
            this.K.setImageBitmap(this.J.f3814a);
            this.m = false;
            a(0.0f, z2);
            this.N = this.J.f3814a;
            return;
        }
        if (!this.r && this.N == this.J.f3814a) {
            this.K.setImageBitmap(this.I.f3814a);
            this.m = true;
            if (this.V != null) {
                if (this.au != 0.0d) {
                    a(this.au, z2);
                } else {
                    a(0.25f, z2);
                }
            }
            this.N = this.I.f3814a;
        }
    }

    void c(boolean z) {
        if (this.V != null && this.K != null) {
            if (z) {
                this.V.setVolume(0.0f, 0.0f);
                this.K.setImageBitmap(this.J.f3814a);
                this.N = this.J.f3814a;
            } else {
                this.V.setVolume(this.au, this.au);
                this.K.setImageBitmap(this.I.f3814a);
                this.N = this.I.f3814a;
            }
        }
    }

    void a(float f, boolean z) {
        if (Build.VERSION.SDK_INT >= 14) {
            this.au = f;
            if (this.V == null || f < 0.0d || f > 1.0d) {
                if (f >= 0.0d && f <= 1.0d) {
                    this.at = f;
                    return;
                }
                return;
            }
            if (!this.r) {
                this.V.setVolume(f, f);
            }
            if (this.t) {
                if (this.N == this.J.f3814a && f > 0.0d && !this.r) {
                    a.g gVar = new a.g();
                    gVar.b("user_action", z);
                    this.K.setImageBitmap(this.I.f3814a);
                    this.N = this.I.f3814a;
                    t.c.d.a("sound_unmute", gVar, this.E);
                    this.m = true;
                    return;
                }
                if (this.N == this.I.f3814a && f == 0.0d) {
                    a.g gVar2 = new a.g();
                    gVar2.b("user_action", z);
                    this.K.setImageBitmap(this.J.f3814a);
                    this.N = this.J.f3814a;
                    t.c.d.a("sound_mute", gVar2, this.E);
                    this.m = false;
                }
            }
        }
    }

    public void a(float f) {
        a(f, false);
    }

    synchronized void d() {
        if ((this.p || this.V == null || !this.V.isPlaying()) && this.V != null) {
            a(this.au);
            this.V.start();
            t.c.a(this.E);
            this.E.n = true;
            if (this.F != null) {
                this.F.a(false, this);
            }
        }
    }

    void e() {
        if (!this.p && this.V != null && this.V.isPlaying() && !this.q) {
            t.c.d.b("video_paused", this.E);
            this.V.pause();
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer player) {
        al.c.b((Object) "[ADC] Native Ad onPrepared called.");
        this.t = true;
        if (this.N == null || this.I.f3814a == null) {
            this.L.setVisibility(0);
            this.K.setVisibility(8);
            this.p = true;
            this.V = null;
            this.E.m = 0;
            return;
        }
        if (!this.m && this.N.equals(this.I.f3814a)) {
            c(true);
        } else {
            a(this.au);
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer player) {
        try {
            this.aB.close();
        } catch (Exception e) {
        }
        this.L.setVisibility(0);
        this.K.setVisibility(8);
        this.E.f = "native";
        this.E.g = "native";
        this.E.n = true;
        this.p = true;
        if (this.V != null) {
            this.V.release();
        }
        this.V = null;
        this.E.m = 0;
        a.g gVar = new a.g();
        gVar.b("ad_slot", t.c.e.j);
        gVar.b("replay", false);
        t.c.d.a("native_complete", gVar, this.E);
        this.E.e.q = false;
        if (this.F != null) {
            this.F.b(false, this);
        }
        this.w = true;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer player, int what, int extra) {
        this.L.setVisibility(0);
        this.K.setVisibility(8);
        this.p = true;
        this.t = true;
        this.V = null;
        this.E.m = 0;
        return true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.d != null) {
            Rect rect = new Rect();
            if (!this.d.hasFocus()) {
                this.d.requestFocus();
            }
            if (!this.p && this.V != null) {
                this.ao = this.V.getCurrentPosition();
            }
            if (this.ao != 0) {
                this.E.m = this.ao;
            }
            getLocalVisibleRect(rect);
            boolean z = rect.bottom - rect.top > c() / 2 && rect.right - rect.left > b() / 2;
            if ((!z && !this.j) || (this.j && (!z || (rect.bottom - rect.top < c() && rect.top != 0)))) {
                if (!this.p && this.V != null && this.V.isPlaying() && !this.q) {
                    al.c.b((Object) "[ADC] Scroll Pause");
                    t.c.d.b("video_paused", this.E);
                    this.V.pause();
                    this.L.setVisibility(0);
                }
            } else if (!this.p && this.V != null && this.V.isPlaying()) {
                if (!this.t) {
                    canvas.drawARGB(255, 0, 0, 0);
                } else {
                    this.E.f = "native";
                    this.E.g = "native";
                    t.c.a(this.V.getCurrentPosition() / this.V.getDuration(), this.E);
                    if (!this.z) {
                        this.z = true;
                        t.c.a("native_start", "{\"ad_slot\":" + (t.c.e.j + 1) + ", \"replay\":false}", this.E);
                        this.E.e.q = true;
                        this.E.e.p = true;
                        t.f();
                        this.E.d.j.a(this.E.e.f3727a);
                    }
                }
            } else if (!this.L.f3844a) {
                canvas.drawARGB(255, 0, 0, 0);
            }
            if (this.u || this.p) {
                return;
            }
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (Build.VERSION.SDK_INT >= 14) {
            return false;
        }
        if (event.getAction() == 1 && t.t && aq.c()) {
            if (!this.C) {
                t.H = this.E;
                t.c.f3701a.a(this.f3838b, this.E.e);
                ADCVideo.a();
                this.E.p = this.w;
                this.E.o = true;
                this.E.f = "native";
                this.E.g = "fullscreen";
                t.t = false;
                t.c.d.b("video_expanded", this.E);
                if (this.F != null) {
                    this.F.a(true, this);
                }
                if (t.d) {
                    al.f3721a.b((Object) "Launching AdColonyOverlay");
                    t.b().startActivity(new Intent(t.b(), (Class<?>) AdColonyOverlay.class));
                } else {
                    al.f3721a.b((Object) "Launching AdColonyFullscreen");
                    t.b().startActivity(new Intent(t.b(), (Class<?>) AdColonyFullscreen.class));
                }
                if (this.p) {
                    this.E.f3833a = -1;
                    this.E.d.r.d++;
                    this.E.e.q = true;
                }
                this.p = true;
                this.w = true;
            } else {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.D));
                    if (t.E != null) {
                        t.b().startActivity(intent);
                    }
                } catch (Exception e) {
                    if (t.E != null) {
                        Toast.makeText(t.b(), "Unable to open store.", 0).show();
                    }
                }
            }
        }
        return true;
    }

    class a extends TextureView implements TextureView.SurfaceTextureListener {

        /* renamed from: a, reason: collision with root package name */
        boolean f3841a;

        /* renamed from: b, reason: collision with root package name */
        boolean f3842b;

        a(Context context, boolean z) {
            super(context);
            this.f3841a = false;
            this.f3842b = false;
            setSurfaceTextureListener(this);
            setWillNotDraw(false);
            setBackgroundColor(-16777216);
            this.f3841a = z;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture texture, int w, int h) {
            if (texture == null) {
                o.this.p = true;
                o.this.K.setVisibility(8);
                return;
            }
            o.this.L.setVisibility(0);
            o.this.e = texture;
            if (!o.this.p && !this.f3841a) {
                o.this.W = new Surface(texture);
                if (o.this.V != null) {
                    o.this.V.release();
                }
                o.this.f = w;
                o.this.g = h;
                o.this.V = new MediaPlayer();
                try {
                    o.this.aB = new FileInputStream(o.this.c);
                    o.this.V.setDataSource(o.this.aB.getFD());
                    o.this.V.setSurface(o.this.W);
                    o.this.V.setOnCompletionListener(o.this);
                    o.this.V.setOnPreparedListener(o.this);
                    o.this.V.setOnErrorListener(o.this);
                    o.this.V.prepareAsync();
                    al.c.b((Object) "[ADC] Native Ad Prepare called.");
                    this.f3842b = true;
                    Handler handler = new Handler();
                    Runnable runnable = new Runnable() { // from class: com.jirbo.adcolony.o.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!o.this.t && !o.this.u) {
                                a.this.f3842b = false;
                                o.this.p = true;
                                o.this.K.setVisibility(8);
                            }
                        }
                    };
                    if (!this.f3842b) {
                        handler.postDelayed(runnable, 1800L);
                    }
                } catch (Exception e) {
                    o.this.p = true;
                    o.this.K.setVisibility(8);
                }
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture texture, int w, int h) {
            al.c.b((Object) "[ADC] onSurfaceTextureSizeChanged");
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture texture) {
            al.c.b((Object) "[ADC] Native surface destroyed");
            o.this.t = false;
            o.this.K.setVisibility(4);
            o.this.L.setVisibility(0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture texture) {
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent event) {
            int action = event.getAction();
            float x = event.getX();
            float y = event.getY();
            if (action == 1 && t.t && aq.c() && (x <= (o.this.am - o.this.I.f) + 8 || y >= o.this.I.g + 8 || o.this.p || o.this.V == null || !o.this.V.isPlaying())) {
                t.H = o.this.E;
                t.c.f3701a.a(o.this.f3838b, o.this.E.e);
                ADCVideo.a();
                if (!o.this.C) {
                    o.this.E.f = "native";
                    o.this.E.g = "fullscreen";
                    o.this.E.o = true;
                    o.this.E.p = o.this.w;
                    if ((o.this.t || o.this.p) && aq.c()) {
                        if (o.this.F != null) {
                            o.this.F.a(true, o.this);
                        }
                        if (o.this.V != null && o.this.V.isPlaying()) {
                            ADCVideo.c = o.this.V.getCurrentPosition();
                            o.this.E.l = o.this.E.k;
                            o.this.V.pause();
                        } else {
                            o.this.E.l = 0.0d;
                            ADCVideo.c = 0;
                        }
                        t.t = false;
                        t.c.d.b("video_expanded", o.this.E);
                        if (t.d) {
                            al.f3721a.b((Object) "Launching AdColonyOverlay");
                            t.b().startActivity(new Intent(t.b(), (Class<?>) AdColonyOverlay.class));
                        } else {
                            al.f3721a.b((Object) "Launching AdColonyFullscreen");
                            t.b().startActivity(new Intent(t.b(), (Class<?>) AdColonyFullscreen.class));
                        }
                        if (o.this.p) {
                            o.this.E.d.r.d++;
                        }
                        o.this.p = true;
                        o.this.w = true;
                    }
                } else {
                    try {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(o.this.D));
                        if (t.E != null) {
                            t.b().startActivity(intent);
                        }
                    } catch (Exception e) {
                        if (t.E != null) {
                            Toast.makeText(t.b(), "Unable to open store.", 0).show();
                        }
                    }
                }
            }
            return true;
        }
    }

    class b extends View {

        /* renamed from: a, reason: collision with root package name */
        boolean f3844a;

        public b(Context context) {
            super(context);
            setBackgroundColor(-16777216);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            o.this.d = (ViewGroup) getParent().getParent();
            Rect rect = new Rect();
            if (o.this.V != null && !o.this.V.isPlaying() && o.this.j) {
                this.f3844a = false;
            }
            if (getLocalVisibleRect(rect) && Build.VERSION.SDK_INT >= 14 && o.this.t) {
                if ((!o.this.j || (o.this.j && (rect.top == 0 || rect.bottom - rect.top > o.this.c()))) && rect.bottom - rect.top > o.this.c() / 2 && rect.right - rect.left > o.this.b() / 2) {
                    if (this.f3844a || o.this.p || o.this.V == null || o.this.V.isPlaying() || o.this.u || o.this.E.a(true) || !o.this.o) {
                    }
                    if (!o.this.o) {
                        al.c.b((Object) "[ADC] Native Ad Starting");
                        o.this.d();
                        o.this.o = true;
                        o.this.E.f = "native";
                        o.this.E.g = "native";
                    } else if (!o.this.q && o.this.V != null && aq.c() && !o.this.V.isPlaying() && !t.q) {
                        al.c.b((Object) "[ADC] Native Ad Resuming");
                        t.c.d.b("video_resumed", o.this.E);
                        if (!o.this.m) {
                            o.this.c(true);
                        }
                        o.this.a(o.this.au);
                        o.this.V.seekTo(o.this.E.m);
                        o.this.V.start();
                    } else if (!o.this.p && !o.this.o && (!t.c.a(o.this.E.c, true, false) || !o.this.ay)) {
                        o.this.p = true;
                        setVisibility(0);
                        o.this.K.setVisibility(8);
                    }
                }
                this.f3844a = true;
            } else {
                this.f3844a = false;
            }
            if (!o.this.p && !aq.c() && o.this.V != null && !o.this.V.isPlaying()) {
                setVisibility(0);
                o.this.K.setVisibility(8);
                o.this.p = true;
            }
            if (!o.this.p && o.this.V != null && o.this.V.isPlaying()) {
                setVisibility(4);
                o.this.K.setVisibility(0);
            } else if (o.this.p || o.this.q) {
                canvas.drawARGB(255, 0, 0, 0);
                o.this.K.setVisibility(8);
                o.this.H.a(canvas, (o.this.am - o.this.H.f) / 2, (o.this.an - o.this.H.g) / 2);
            }
            if (o.this.u || o.this.p) {
                return;
            }
            invalidate();
        }
    }
}
