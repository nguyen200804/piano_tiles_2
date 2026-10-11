package com.jirbo.adcolony;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.jirbo.adcolony.u;
import com.mopub.mobileads.resource.DrawableConstants;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class x extends View implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener {
    static float[] ay = new float[80];
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    boolean E;
    boolean F;
    boolean G;
    boolean H;
    boolean I;
    boolean J;
    boolean K;
    boolean L;
    boolean M;
    boolean N;
    boolean O;
    boolean P;
    boolean Q;
    boolean R;
    boolean S;
    Canvas T;
    String U;
    String V;
    String W;

    /* renamed from: a, reason: collision with root package name */
    WebView f3860a;
    float aA;
    float aB;
    float aC;
    float aD;
    float aE;
    float aF;
    Paint aG;
    RectF aH;
    b aI;
    Handler aJ;
    String aa;
    String ab;
    String ac;
    u.b ad;
    Paint ae;
    Paint af;
    Paint ag;
    Paint ah;
    Rect ai;
    c aj;
    c ak;
    c al;
    c am;
    c an;
    c ao;
    c ap;
    c aq;
    c ar;
    c as;
    c at;
    c[] au;
    c[] av;
    am aw;
    String[] ax;
    float az;

    /* renamed from: b, reason: collision with root package name */
    WebView f3861b;
    View c;
    ADCVideo d;
    double e;
    double f;
    int g;
    int h;
    int i;
    int j;
    int k;
    int l;
    int m;
    int n;
    int o;
    int p;
    int q;
    int r;
    int s;
    int t;
    int u;
    long v;
    long w;
    float x;
    boolean y;
    boolean z;

    x(ADCVideo aDCVideo) {
        super(aDCVideo);
        this.e = 1.0d;
        this.f = 1.0d;
        this.g = 99;
        this.h = 0;
        this.y = true;
        this.z = true;
        this.A = true;
        this.B = true;
        this.C = true;
        this.D = true;
        this.U = t.c.f3701a.f3700b;
        this.ae = new Paint();
        this.af = new Paint(1);
        this.ag = new Paint(1);
        this.ah = new Paint(1);
        this.ai = new Rect();
        this.au = new c[4];
        this.av = new c[4];
        this.ax = new String[4];
        this.aG = new Paint(1);
        this.aH = new RectF();
        this.aI = new b();
        this.aJ = new Handler() { // from class: com.jirbo.adcolony.x.2
            @Override // android.os.Handler
            public void handleMessage(Message m) {
                if (!x.this.d.isFinishing() && x.this.d.D != null) {
                    x.this.a(m.what);
                }
            }
        };
        this.d = aDCVideo;
        this.L = t.c.f3701a.s;
        if (t.H != null) {
            this.L |= t.H.e.y.l.f3764a;
            t.H.k = t.H.l;
        }
        this.x = aDCVideo.getResources().getDisplayMetrics().density;
        this.P = t.M;
        if (t.R != null && t.f3850a != null) {
            int indexOf = t.R.indexOf("#");
            t.R = t.f3850a + (indexOf >= 0 ? t.R.substring(indexOf) : "");
        }
        aDCVideo.F.j = t.R;
        al.f3721a.a("DEC URL = ").b((Object) aDCVideo.F.j);
        if (t.H != null && t.H.e.x.d) {
            this.M = !this.P;
        }
        if (this.M) {
            this.aj = new c(t.g("end_card_filepath"));
            this.n = this.aj.f;
            this.o = this.aj.g;
            if (this.n == 0) {
                this.n = 480;
            }
            if (this.o == 0) {
                this.o = 320;
            }
            this.au[0] = new c(t.g("info_image_normal"));
            this.au[1] = new c(t.g("download_image_normal"));
            this.au[2] = new c(t.g("replay_image_normal"));
            this.au[3] = new c(t.g("continue_image_normal"));
            this.av[0] = new c(t.g("info_image_down"), true);
            this.av[1] = new c(t.g("download_image_down"), true);
            this.av[2] = new c(t.g("replay_image_down"), true);
            this.av[3] = new c(t.g("continue_image_down"), true);
            this.ax[0] = "Info";
            this.ax[1] = "Download";
            this.ax[2] = "Replay";
            this.ax[3] = "Continue";
        } else if (this.P) {
            this.ao = new c(t.g("reload_image_normal"));
            this.am = new c(t.g("close_image_normal"));
            this.an = new c(t.g("close_image_down"));
            this.ap = new c(t.g("reload_image_down"));
            this.as = new c(t.g("browser_icon"));
            this.c = new a(aDCVideo);
            b();
        }
        if (this.L) {
            this.ak = new c(t.g("skip_video_image_normal"));
            this.al = new c(t.g("skip_video_image_down"));
            this.p = t.e("skip_delay") * 1000;
        }
        this.aG.setStyle(Paint.Style.STROKE);
        float f = 2.0f * aDCVideo.getResources().getDisplayMetrics().density;
        if ((f > 6.0f ? 6.0f : f) < 4.0f) {
        }
        this.aG.setStrokeWidth(2.0f * aDCVideo.getResources().getDisplayMetrics().density);
        this.aG.setColor(-3355444);
        this.Q = false;
        this.K = false;
        this.R = false;
        if (t.H != null) {
            this.K = t.H.e.y.m.f3764a;
            this.R = t.f("image_overlay_enabled");
        }
        if (this.K) {
            this.aq = new c(t.g("engagement_image_normal"));
            this.ar = new c(t.g("engagement_image_down"));
            this.aa = t.H.e.y.m.j;
            this.V = t.H.e.y.m.l;
            this.W = t.H.e.y.m.o;
            this.r = t.H.e.y.m.c;
            this.q = t.e("engagement_delay") * 1000;
            if (this.V.equals("")) {
                this.V = DrawableConstants.CtaButton.DEFAULT_CTA_TEXT;
            }
            if (!this.W.equals("")) {
                this.G = true;
            }
            if (this.G) {
                this.f3861b = new WebView(aDCVideo);
                this.f3861b.setBackgroundColor(0);
            }
            if (this.aq == null || this.ar == null) {
                this.K = false;
            }
        }
        if (this.R) {
            this.at = new c(t.g("image_overlay_filepath"));
            this.at.a(f.b() ? (this.r * (this.x / 1.0d)) / this.at.g : (this.r * (this.x / 0.75d)) / this.at.g);
        }
        if (ADCVideo.d) {
            e();
        }
        this.ae.setColor(-1);
        this.ag.setTextSize(24.0f);
        this.ag.setColor(-16777216);
        this.af.setColor(-3355444);
        this.af.setTextSize(20.0f);
        this.af.setTextAlign(Paint.Align.CENTER);
        this.ah.setTextSize(20.0f);
        this.ah.setColor(-1);
        try {
            getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this, 1, null);
        } catch (Exception e) {
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (!this.F) {
            a();
            this.T = canvas;
            if (!this.N && this.L) {
                this.N = this.d.D.getCurrentPosition() > this.p;
            }
            if (!this.O && this.K) {
                this.O = this.d.D.getCurrentPosition() > this.q;
            }
            ADCVideo aDCVideo = this.d;
            if (ADCVideo.d && this.M) {
                canvas.drawARGB((this.d.w >> 24) & 255, 0, 0, 0);
                this.aj.a(canvas, (this.d.s - this.aj.f) / 2, (this.d.t - this.aj.g) / 2);
                int b2 = this.aj.b() + ((int) (186.0d * this.e));
                int c = this.aj.c() + ((int) (470.0d * this.e));
                for (int i = 0; i < this.au.length; i++) {
                    if (this.t == i + 1 || (this.u == i + 1 && !this.A && this.u != 0)) {
                        this.av[i].a(this.e);
                        this.av[i].a(canvas, b2, c);
                        b2 = (int) (b2 + (157.0f * this.e));
                    } else if (this.A || i + 1 != this.u) {
                        this.au[i].a(this.e);
                        this.au[i].a(canvas, b2, c);
                        b2 = (int) (b2 + (157.0f * this.e));
                    }
                    this.af.setColor(-1);
                    this.af.clearShadowLayer();
                    canvas.drawText(this.ax[i], this.au[i].b() + (this.au[i].f / 2), this.au[i].c() + this.au[i].g, this.af);
                }
                return;
            }
            ADCVideo aDCVideo2 = this.d;
            if (ADCVideo.d && this.P) {
                this.am.a(this.f);
                this.an.a(this.f);
                this.ao.a(this.f);
                this.ap.a(this.f);
                this.i = (t.d || this.i == 0) ? this.d.s - this.am.f : this.i;
                this.j = 0;
                this.k = 0;
                this.l = 0;
                if (this.H) {
                    this.an.a(canvas, this.i, this.j);
                } else {
                    this.am.a(canvas, this.i, this.j);
                }
                if (this.I) {
                    this.ap.a(canvas, this.k, this.l);
                } else {
                    this.ao.a(canvas, this.k, this.l);
                }
                i();
                return;
            }
            if (this.d.D != null) {
                t.c.a(this.d.D.getCurrentPosition() / this.d.D.getDuration(), this.d.F);
                if (this.d.I) {
                    this.d.G.a(this.d.D.getCurrentPosition());
                }
                int currentPosition = this.d.D.getCurrentPosition();
                int i2 = ((this.s - currentPosition) + 999) / 1000;
                int i3 = (this.Q && i2 == 1) ? 0 : i2;
                if (i3 == 0) {
                    this.Q = true;
                }
                if (currentPosition >= 500) {
                    if (this.B) {
                        this.aA = (float) (360.0d / (this.s / 1000.0d));
                        this.B = false;
                        this.af.getTextBounds("0123456789", 0, 9, new Rect());
                        this.aD = r0.height();
                    }
                    this.aB = getWidth();
                    this.aC = getHeight();
                    this.aE = this.aD;
                    this.aF = (this.d.t - this.aD) - this.m;
                    this.aH.set(this.aE - (this.aD / 2.0f), this.aF - (2.0f * this.aD), this.aE + (2.0f * this.aD), this.aF + (this.aD / 2.0f));
                    this.aG.setShadowLayer((int) (4.0d * this.e), 0.0f, 0.0f, -16777216);
                    this.az = (float) (((this.s / 1000.0d) - (currentPosition / 1000.0d)) * this.aA);
                    canvas.drawArc(this.aH, 270.0f, this.az, false, this.aG);
                    ADCVideo aDCVideo3 = this.d;
                    if (!ADCVideo.d) {
                        this.af.setColor(-3355444);
                        this.af.setShadowLayer((int) (2.0d * this.e), 0.0f, 0.0f, -16777216);
                        this.af.setTextAlign(Paint.Align.CENTER);
                        this.af.setLinearText(true);
                        canvas.drawText("" + i3, this.aH.centerX(), (float) (this.aH.centerY() + (this.af.getFontMetrics().bottom * 1.35d)), this.af);
                    }
                    if (this.L) {
                        ADCVideo aDCVideo4 = this.d;
                        if (!ADCVideo.d && this.N) {
                            if (this.t == 10) {
                                this.al.a(canvas, this.d.s - this.al.f, (int) (this.e * 4.0d));
                            } else {
                                this.ak.a(canvas, this.d.s - this.ak.f, (int) (this.e * 4.0d));
                            }
                        }
                    }
                    if (this.K && this.O) {
                        if (!this.G && !this.R) {
                            if (this.J) {
                                this.ar.c((int) ((this.d.s - this.ar.f) - (this.aD / 2.0f)), ((this.d.t - this.ar.g) - this.m) - ((int) (this.aD / 2.0f)));
                                this.ar.a(canvas);
                            } else {
                                this.aq.c((int) ((this.d.s - this.aq.f) - (this.aD / 2.0f)), ((this.d.t - this.aq.g) - this.m) - ((int) (this.aD / 2.0f)));
                                this.aq.a(canvas);
                            }
                            this.ag.setTextAlign(Paint.Align.CENTER);
                            canvas.drawText(this.V, this.aq.e.centerX(), (float) (this.aq.e.centerY() + (this.ag.getFontMetrics().bottom * 1.35d)), this.ag);
                        } else if (!this.G && this.R) {
                            this.at.c((int) ((this.d.s - this.at.f) - (this.aD / 2.0f)), ((this.d.t - this.at.g) - this.m) - ((int) (this.aD / 2.0f)));
                            this.at.a(canvas);
                        }
                    }
                }
                if (au.f3806b != null) {
                    au.f3806b.onDraw(canvas);
                }
            }
            ADCVideo aDCVideo5 = this.d;
            if (ADCVideo.g) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        this.m = this.d.t - h;
        if (Build.MODEL.equals("Kindle Fire")) {
            this.m = 20;
        }
        if (Build.MODEL.equals("SCH-I800")) {
            this.m = 25;
        }
        if (Build.MODEL.equals("SHW-M380K") || Build.MODEL.equals("SHW-M380S") || Build.MODEL.equals("SHW-M380W")) {
            this.m = 40;
        }
    }

    void a(int i) {
        try {
            if (this.C || i == 10) {
                this.C = false;
                switch (i) {
                    case 1:
                        this.t = 0;
                        t.a("info", "{\"ad_slot\":" + t.H.d.r.c + "}", this.d.F);
                        String g = t.g("info_url");
                        al.f3722b.a("INFO ").b((Object) g);
                        if (g.startsWith("market:") || g.startsWith("amzn:")) {
                            this.d.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(g)));
                            break;
                        } else {
                            AdColonyBrowser.f3674a = g;
                            this.d.startActivity(new Intent(this.d, (Class<?>) AdColonyBrowser.class));
                            break;
                        }
                        break;
                    case 2:
                        this.t = 0;
                        t.a("download", "{\"ad_slot\":" + t.H.d.r.c + "}", this.d.F);
                        String g2 = t.g("download_url");
                        al.f3722b.a("DOWNLOAD ").b((Object) g2);
                        if (g2.startsWith("market:") || g2.startsWith("amzn:")) {
                            this.d.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(g2)));
                            break;
                        } else {
                            AdColonyBrowser.f3674a = g2;
                            this.d.startActivity(new Intent(this.d, (Class<?>) AdColonyBrowser.class));
                            break;
                        }
                    case 3:
                        this.t = 0;
                        h();
                        invalidate();
                        break;
                    case 4:
                        this.t = 0;
                        this.d.D.a();
                        f();
                        break;
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    default:
                        this.t = 0;
                        break;
                    case 10:
                        this.t = 0;
                        g();
                        break;
                }
                new Handler().postDelayed(new Runnable() { // from class: com.jirbo.adcolony.x.1
                    @Override // java.lang.Runnable
                    public void run() {
                        x.this.C = true;
                    }
                }, 1500L);
            }
        } catch (RuntimeException e) {
            this.C = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int a2;
        int action = event.getAction();
        if (au.f3806b != null) {
            au.f3806b.onTouchEvent(event);
            return true;
        }
        int x = (int) event.getX();
        int y = (int) event.getY();
        if (action == 0) {
            ADCVideo aDCVideo = this.d;
            if (ADCVideo.d && this.P) {
                if (a(this.am, x, y)) {
                    this.H = true;
                    invalidate();
                    return true;
                }
                if (!a(this.ao, x, y)) {
                    return false;
                }
                this.I = true;
                invalidate();
                return true;
            }
            ADCVideo aDCVideo2 = this.d;
            if (ADCVideo.d && this.M) {
                x = (int) ((event.getX() - this.aj.b()) / (this.e * 2.0d));
                y = (int) ((event.getY() - this.aj.c()) / (this.e * 2.0d));
                if (this.t == 0 && y >= 235 && y < 305) {
                    int a3 = a(x, y);
                    this.t = a3;
                    this.u = a3;
                    this.A = false;
                    invalidate();
                }
            }
            if (this.L && this.N && this.d.D != null && a(this.ak, x, y)) {
                this.t = 10;
                this.u = this.t;
                this.A = false;
                invalidate();
                return true;
            }
            if (this.K && this.O && (a(this.aq, x, y) || a(this.at, x, y))) {
                this.J = true;
                invalidate();
                return true;
            }
        } else {
            if (action == 1) {
                ADCVideo aDCVideo3 = this.d;
                if (ADCVideo.d && this.P) {
                    if (a(this.am, x, y) && this.H) {
                        this.t = 4;
                        if (this.f3860a != null) {
                            this.f3860a.clearCache(true);
                        }
                        this.aJ.sendMessageDelayed(this.aJ.obtainMessage(this.t), 250L);
                        return true;
                    }
                    if (a(this.ao, x, y) && this.I) {
                        this.t = 3;
                        if (this.f3860a != null) {
                            this.f3860a.clearCache(true);
                        }
                        this.aJ.sendMessageDelayed(this.aJ.obtainMessage(this.t), 250L);
                        return true;
                    }
                }
                ADCVideo aDCVideo4 = this.d;
                if (ADCVideo.d && this.M) {
                    x = (int) ((event.getX() - this.aj.b()) / (this.e * 2.0d));
                    y = (int) ((event.getY() - this.aj.c()) / (this.e * 2.0d));
                    if (!this.A && y >= 235 && y < 305 && (a2 = a(x, y)) > 0 && a2 == this.u) {
                        this.aJ.sendMessageDelayed(this.aJ.obtainMessage(a2), 250L);
                    }
                }
                if (this.L && this.N && this.d.D != null && a(this.ak, x, y)) {
                    this.t = 10;
                    this.A = true;
                    this.u = this.t;
                    this.aJ.sendMessageDelayed(this.aJ.obtainMessage(this.t), 250L);
                    return true;
                }
                if (this.K && this.O && (a(this.aq, x, y) || a(this.at, x, y))) {
                    this.J = false;
                    if (this.aa.startsWith("market:") || this.aa.startsWith("amzn:")) {
                        this.d.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.aa)));
                    } else if (this.d.F.e.A != null && this.d.F.e.A.c) {
                        this.ab = this.d.F.i;
                        this.d.F.u = k.OVERLAY;
                        this.K = false;
                        this.S = true;
                        this.R = false;
                        g();
                    } else {
                        AdColonyBrowser.f3674a = this.aa;
                        this.d.startActivity(new Intent(this.d, (Class<?>) AdColonyBrowser.class));
                    }
                    t.a("in_video_engagement", "{\"ad_slot\":" + t.H.d.r.c + "}", this.d.F);
                    return true;
                }
                this.H = false;
                this.I = false;
                this.J = false;
                this.A = true;
                this.t = 0;
                invalidate();
                return true;
            }
            if (action == 3) {
                this.H = false;
                this.I = false;
                this.J = false;
                this.A = true;
                this.t = 0;
                invalidate();
                return true;
            }
        }
        return true;
    }

    int a(int i, int i2) {
        if (i >= this.g && i < this.g + 62) {
            return 1;
        }
        if (i >= this.g + 78 && i < this.g + 78 + 62) {
            return 2;
        }
        if (i >= this.g + 78 + 78 && i < this.g + 78 + 78 + 62) {
            return 3;
        }
        if (i < this.g + 78 + 78 + 78 || i >= this.g + 78 + 78 + 78 + 62) {
            return (this.d.D == null || !this.L || i < this.d.D.getWidth() - this.ak.f || i2 > this.ak.g) ? 0 : 10;
        }
        return 4;
    }

    public boolean a(c cVar, int i, int i2) {
        return cVar != null && i < (cVar.b() + cVar.f) + 8 && i > cVar.b() + (-8) && i2 < (cVar.c() + cVar.g) + 8 && i2 > cVar.c() + (-8);
    }

    public void a() {
        double d;
        boolean b2 = this.d.b();
        this.y |= b2;
        if (this.d.D != null) {
            if (this.s <= 0) {
                this.s = this.d.D.getDuration();
            }
            if (b2) {
                setLayoutParams(new FrameLayout.LayoutParams(this.d.s, this.d.t, 17));
                this.d.D.setLayoutParams(new FrameLayout.LayoutParams(this.d.u, this.d.v, 17));
                this.y = true;
            }
        }
        if (this.y) {
            this.y = false;
            if (this.z) {
                DisplayMetrics displayMetrics = f.d().getResources().getDisplayMetrics();
                float f = displayMetrics.widthPixels / displayMetrics.xdpi;
                float f2 = displayMetrics.heightPixels / displayMetrics.ydpi;
                double sqrt = Math.sqrt((displayMetrics.heightPixels * displayMetrics.heightPixels) + (displayMetrics.widthPixels * displayMetrics.widthPixels)) / Math.sqrt((f * f) + (f2 * f2));
                this.f = sqrt / 280.0d < 0.7d ? 0.7d : sqrt / 280.0d;
                if (!f.b() && this.f == 0.7d) {
                    this.f = 1.0d;
                }
                float f3 = this.f * 20.0d < 18.0d ? 18.0f : (float) (this.f * 20.0d);
                float f4 = this.f * 20.0d < 18.0d ? 18.0f : (float) (this.f * 20.0d);
                this.af.setTextSize(f3);
                this.ah.setTextSize(f3);
                this.ag.setTextSize(f4);
                if (this.K && this.aq != null && this.ar != null) {
                    this.aq.a(b(this.V + (this.aq.f * 2)), this.aq.g);
                    this.ar.a(b(this.V + (this.ar.f * 2)), this.ar.g);
                }
                if (this.d.s > this.d.t) {
                    int i = this.d.t;
                } else {
                    int i2 = this.d.s;
                }
                this.z = false;
            }
            if (this.P) {
                if (b2 && this.f3860a != null) {
                    this.f3860a.setLayoutParams(new FrameLayout.LayoutParams(this.d.s, this.d.t - this.m, 17));
                }
                this.e = ((double) this.d.v) / 640.0d < 0.9d ? 0.9d : this.d.v / 640.0d;
                if (!f.b() && this.e == 0.9d) {
                    this.e = 1.2d;
                }
            }
            if (this.M) {
                double d2 = this.n / this.o;
                if (this.d.s / d2 > this.d.t / 1.0d) {
                    d = this.d.t / 1.0d;
                } else {
                    d = this.d.s / d2;
                }
                this.d.u = (int) (d2 * d);
                this.d.v = (int) (d * 1.0d);
                this.e = this.d.s > this.d.t ? this.d.v / 640.0d : this.d.v / 960.0d;
                this.aj.a(((double) this.d.s) / ((double) this.n) > ((double) this.d.t) / ((double) this.o) ? this.d.t / this.o : this.d.s / this.n);
                this.aj.d(this.d.s, this.d.t);
            }
            if (this.K && this.aq != null && this.ar != null) {
                if (this.aq != null && this.ar != null && this.aq.f3815b != null && this.ar.f3815b != null) {
                    int height = (int) (this.aq.f3815b.getHeight() * this.f);
                    int height2 = (int) (this.ar.f3815b.getHeight() * this.f);
                    this.aq.b(this.aq.f, height);
                    this.ar.b(this.ar.f, height2);
                } else {
                    this.K = false;
                }
            }
            if (this.L) {
                this.ak.a(this.f);
                this.al.a(this.f);
            }
        }
    }

    void b() {
        this.f3860a = new WebView(this.d);
        this.f3860a.setFocusable(true);
        this.f3860a.setHorizontalScrollBarEnabled(false);
        this.f3860a.setVerticalScrollBarEnabled(false);
        WebSettings settings = this.f3860a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setPluginState(WebSettings.PluginState.ON_DEMAND);
        settings.setBuiltInZoomControls(true);
        settings.setGeolocationEnabled(true);
        this.f3860a.setWebChromeClient(new WebChromeClient() { // from class: com.jirbo.adcolony.x.3
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage cm) {
                String sourceId = cm.sourceId();
                if (sourceId == null) {
                    sourceId = "Internal";
                } else {
                    int lastIndexOf = sourceId.lastIndexOf(47);
                    if (lastIndexOf != -1) {
                        sourceId = sourceId.substring(lastIndexOf + 1);
                    }
                }
                al.f3722b.a(cm.message()).a(" [").a(sourceId).a(" line ").a(cm.lineNumber()).b((Object) "]");
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(String origin, GeolocationPermissions.Callback callback) {
                callback.invoke(origin, true, false);
            }
        });
        this.d.N = new FrameLayout(this.d);
        if (t.f("hardware_acceleration_disabled")) {
            try {
                this.d.N.getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this.f3860a, 1, null);
            } catch (Exception e) {
            }
        }
        this.aw = new am(this.d, this.f3860a, this.d);
        this.f3860a.setWebViewClient(new WebViewClient() { // from class: com.jirbo.adcolony.x.4

            /* renamed from: a, reason: collision with root package name */
            String f3865a = t.R;

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                al.f3721a.a("DEC request: ").b((Object) url);
                if (url.contains("mraid:")) {
                    x.this.aw.a(url);
                    return true;
                }
                if (!url.contains("youtube")) {
                    return url.contains("mraid.js");
                }
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("vnd.youtube:" + url));
                intent.putExtra("VIDEO_ID", url);
                x.this.d.startActivity(intent);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onLoadResource(WebView view, String url) {
                al.f3721a.a("DEC onLoad: ").b((Object) url);
                if (url.equals(this.f3865a)) {
                    al.f3721a.b((Object) "DEC disabling mouse events");
                    x.this.a("if (typeof(CN) != 'undefined' && CN.div) {\n  if (typeof(cn_dispatch_on_touch_begin) != 'undefined') CN.div.removeEventListener('mousedown',  cn_dispatch_on_touch_begin, true);\n  if (typeof(cn_dispatch_on_touch_end) != 'undefined')   CN.div.removeEventListener('mouseup',  cn_dispatch_on_touch_end, true);\n  if (typeof(cn_dispatch_on_touch_move) != 'undefined')  CN.div.removeEventListener('mousemove',  cn_dispatch_on_touch_move, true);\n}\n");
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                if (url.equals(this.f3865a)) {
                    x.this.d.j = true;
                    x.this.v = System.currentTimeMillis();
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                al.f3721a.a("onPageFinished - ").b((Object) url);
                al.f3721a.a("END CARD URL = ").b((Object) this.f3865a);
                al.f3721a.a("equals? ").b(url.equals(this.f3865a));
                if (url.equals(this.f3865a) || t.R.startsWith("<")) {
                    al.f3721a.b((Object) "DEC FINISHED LOADING");
                    x.this.D = false;
                    x.this.d.k = true;
                    x.this.w = System.currentTimeMillis();
                    x.this.d.o = (x.this.w - x.this.v) / 1000.0d;
                }
                x.this.d.M.removeView(x.this.c);
            }
        });
    }

    public void c() {
        if (this.f3860a != null) {
            if (this.d.F.j.startsWith("<")) {
                this.f3860a.loadData(this.d.F.j, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, null);
            } else {
                this.f3860a.loadDataWithBaseURL(this.d.F.j, this.ac, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, null, null);
            }
            new ag("htmltest").a(this.ac);
            a("var is_tablet=" + (t.d ? "true" : "false") + ";");
            String str = t.d ? "tablet" : "phone";
            a("adc_bridge.adc_version='" + t.U + "'");
            a("adc_bridge.os_version='" + t.T + "'");
            a("adc_bridge.os_name='android'");
            a("adc_bridge.device_type='" + str + "'");
            a("adc_bridge.fireChangeEvent({state:'default'});");
            a("adc_bridge.fireReadyEvent()");
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer player) {
        d();
    }

    public void d() {
        af afVar = t.c;
        ADCVideo aDCVideo = this.d;
        afVar.a(ADCVideo.e, this.d.F);
        if (this.P && this.D && t.P) {
            this.d.M.addView(this.c);
            new Handler().postDelayed(new Runnable() { // from class: com.jirbo.adcolony.x.5
                @Override // java.lang.Runnable
                public void run() {
                    if (x.this.D && x.this.d != null && x.this.P && x.this.f3860a != null) {
                        x.this.d.l = true;
                        x.this.f();
                    }
                }
            }, t.Q * 1000);
        }
        if (t.N) {
            f();
        }
        t.a("card_shown", this.d.F);
        synchronized (this.aI) {
            this.ad = null;
            if (t.H.e.x.e) {
                this.ad = new u.b(t.H.e.x.g);
            }
        }
        if (this.P) {
            Handler handler = new Handler();
            final View view = new View(this.d);
            Runnable runnable = new Runnable() { // from class: com.jirbo.adcolony.x.6
                @Override // java.lang.Runnable
                public void run() {
                    x.this.d.M.removeView(view);
                    x.this.a(true);
                    x.this.d.q = System.currentTimeMillis();
                }
            };
            view.setBackgroundColor(-16777216);
            this.d.M.addView(view);
            handler.postDelayed(runnable, 500L);
            this.d.N.setVisibility(0);
        }
        this.d.q = System.currentTimeMillis();
        e();
    }

    void a(String str) {
        if (!this.M && this.f3860a != null) {
            if (Build.VERSION.SDK_INT < 19) {
                this.f3860a.loadUrl("javascript:" + str);
            } else {
                this.f3860a.evaluateJavascript(str, null);
            }
        }
    }

    void a(boolean z) {
        if (!this.M) {
            if (z) {
                a("adc_bridge.fireChangeEvent({viewable:true});");
            } else {
                a("adc_bridge.fireChangeEvent({viewable:false});");
            }
        }
    }

    void b(boolean z) {
        if (this.M) {
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mp, int what, int extra) {
        c(true);
        return true;
    }

    void e() {
        new Handler().postDelayed(new Runnable() { // from class: com.jirbo.adcolony.x.7
            @Override // java.lang.Runnable
            public void run() {
                if (x.this.d.D != null) {
                    x.this.d.D.setVisibility(8);
                }
            }
        }, 300L);
        if (this.d.I) {
            this.d.G.h();
        }
        ADCVideo aDCVideo = this.d;
        ADCVideo.d = true;
        if (this.d.D != null) {
            this.d.D.a();
        }
        au.f3806b = null;
        invalidate();
        this.I = false;
        invalidate();
    }

    void f() {
        if (this.d != null) {
            if (!this.P || (this.f3860a != null && this.d.N != null && this.d.M != null)) {
                t.B = true;
                this.d.r = System.currentTimeMillis();
                this.d.p += (this.d.r - this.d.q) / 1000.0d;
                t.Y = true;
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < t.ae.size()) {
                        if (t.ae.get(i2) != null) {
                            t.ae.get(i2).a();
                        }
                        i = i2 + 1;
                    } else {
                        try {
                            break;
                        } catch (Exception e) {
                        }
                    }
                }
                this.d.S.close();
                this.d.finish();
                this.ad = null;
                if (this.P) {
                    this.d.M.removeView(this.d.N);
                    this.f3860a.destroy();
                    this.f3860a = null;
                }
                t.a(this.d.F);
                AdColonyBrowser.B = true;
                t.t = true;
            }
        }
    }

    void g() {
        c(false);
    }

    void c(boolean z) {
        t.B = true;
        if (t.H.e() && !z) {
            ADCVideo aDCVideo = this.d;
            ADCVideo.f3666a = this.d.D.getCurrentPosition();
            au.f3806b = new au(this.d, (p) t.H);
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < t.ae.size()) {
                if (t.ae.get(i2) != null) {
                    t.ae.get(i2).a();
                }
                i = i2 + 1;
            } else {
                this.d.finish();
                t.K.b(this.d.F);
                t.Y = true;
                t.t = true;
                AdColonyBrowser.B = true;
                return;
            }
        }
    }

    void h() {
        t.a("replay", this.d.F);
        ADCVideo aDCVideo = this.d;
        ADCVideo.e = true;
        ADCVideo aDCVideo2 = this.d;
        ADCVideo.d = false;
        ADCVideo aDCVideo3 = this.d;
        ADCVideo.f3666a = 0;
        this.d.F.p = true;
        this.d.F.k = 0.0d;
        this.Q = false;
        final View view = new View(this.d);
        view.setBackgroundColor(-16777216);
        this.d.M.addView(view, new FrameLayout.LayoutParams(this.d.s, this.d.t, 17));
        new Handler().postDelayed(new Runnable() { // from class: com.jirbo.adcolony.x.8
            @Override // java.lang.Runnable
            public void run() {
                if (x.this.P) {
                    x.this.d.N.setVisibility(4);
                }
                x.this.d.M.removeView(view);
            }
        }, 900L);
        this.d.D.start();
        if (this.d.I) {
            try {
                this.d.G = com.immersion.hapticmediasdk.b.a(0, this.d);
                this.d.G.a(this.d.H);
            } catch (Exception e) {
                this.d.I = false;
            }
            if (this.d.G == null) {
                this.d.I = false;
            }
            if (this.d.I) {
                this.d.G.d();
            }
        }
        t.c.a(this.d.F);
        this.d.D.requestFocus();
        this.d.D.setBackgroundColor(0);
        this.d.D.setVisibility(0);
        a(false);
    }

    int b(String str) {
        this.ag.getTextWidths(str, ay);
        float f = 0.0f;
        int length = str.length();
        for (int i = 0; i < length; i++) {
            f += ay[i];
        }
        return (int) f;
    }

    void i() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.jirbo.adcolony.x.9
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                Rect rect = new Rect();
                this.getWindowVisibleDisplayFrame(rect);
                if (x.this.f3860a != null) {
                    x.this.b((this.getRootView().getHeight() - (rect.bottom - rect.top)) - ((x.this.d.t - x.this.f3860a.getHeight()) / 2));
                }
                x.this.j();
            }
        });
    }

    void j() {
        if (this.h >= 70 && !this.E) {
            this.E = true;
            b(true);
        } else if (this.E && this.h == 0) {
            this.E = false;
            b(false);
        }
    }

    void b(int i) {
        this.h = i;
        if (i < 0) {
            this.h = 0;
        }
    }

    class a extends View {

        /* renamed from: a, reason: collision with root package name */
        Rect f3875a;

        public a(Activity activity) {
            super(activity);
            this.f3875a = new Rect();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            canvas.drawARGB(255, 0, 0, 0);
            getDrawingRect(this.f3875a);
            x.this.as.a(canvas, (this.f3875a.width() - x.this.as.f) / 2, (this.f3875a.height() - x.this.as.g) / 2);
            invalidate();
        }
    }

    class b extends Handler {
        b() {
            a();
        }

        void a() {
            sendMessageDelayed(obtainMessage(), 500L);
        }

        @Override // android.os.Handler
        public void handleMessage(Message m) {
            a();
            if (!x.this.d.isFinishing() && x.this.d.D != null) {
                synchronized (this) {
                    if (x.this.ad != null && x.this.ad.a() && !x.this.d.D.isPlaying()) {
                        x.this.ad = null;
                        x.this.t = 0;
                        if (x.this.d.D != null) {
                            x.this.d.D.a();
                        }
                        x.this.d.m = true;
                        x.this.f();
                    }
                }
            }
        }
    }
}
