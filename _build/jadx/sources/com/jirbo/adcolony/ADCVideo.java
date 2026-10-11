package com.jirbo.adcolony;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.VideoView;
import com.jirbo.adcolony.b;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class ADCVideo extends Activity implements MediaPlayer.OnPreparedListener, b.a {

    /* renamed from: a, reason: collision with root package name */
    static int f3666a;

    /* renamed from: b, reason: collision with root package name */
    static int f3667b;
    static int c;
    static boolean d;
    static boolean e;
    static boolean f;
    static boolean g;
    static boolean h;
    boolean C;
    e D;
    x E;
    g F;
    com.immersion.hapticmediasdk.a G;
    String H;
    boolean I;
    VideoView L;
    FrameLayout M;
    FrameLayout N;
    FrameLayout O;
    c Q;
    a R;
    FileInputStream S;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    boolean n;
    double o;
    double p;
    long q;
    long r;
    int s;
    int t;
    int u;
    int v;
    int w;
    double x;
    boolean i = true;
    String y = "";
    String z = "";
    boolean A = true;
    boolean B = true;
    boolean J = true;
    String K = "Your purchase will begin shortly!";
    Rect P = new Rect();
    boolean T = false;
    boolean U = false;

    static void a() {
        f3666a = 0;
        d = false;
        e = false;
        f = false;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        int i = 1;
        t.Y = false;
        super.onCreate(savedInstanceState);
        this.F = t.H;
        if (this.F == null) {
            finish();
            return;
        }
        this.I = t.f("haptics_enabled");
        this.H = t.g("haptics_filepath");
        this.K = t.g("in_progress");
        this.z = this.F.s == null ? t.g("video_filepath") : this.F.s.c;
        this.x = t.e("video_duration");
        if (this.I) {
            try {
                this.G = com.immersion.hapticmediasdk.b.a(0, this);
                this.G.a(this.H);
            } catch (Exception e2) {
                e2.printStackTrace();
                this.I = false;
            }
            if (this.G == null) {
                this.I = false;
            }
        }
        t.O = !t.f("video_enabled");
        t.N = !t.f("end_card_enabled");
        t.P = t.f("load_timeout_enabled");
        t.Q = t.e("load_timeout");
        for (int i2 = 0; i2 < t.ae.size(); i2++) {
            if (t.ae.get(i2) != null) {
                o oVar = t.ae.get(i2);
                if (oVar.V != null) {
                    oVar.M.setVisibility(4);
                }
                if (oVar.K != null) {
                    oVar.K.setVisibility(4);
                }
            }
        }
        if (t.f("v4iap_enabled")) {
            this.F.u = k.AUTOMATIC;
            this.F.q = true;
            this.F.i = t.g("product_id");
        }
        e = this.F.p;
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if (!t.d) {
            if (Build.VERSION.SDK_INT >= 10) {
                setRequestedOrientation(6);
            } else {
                setRequestedOrientation(0);
            }
        } else {
            int i3 = getResources().getConfiguration().orientation;
            t.u = (i3 == 0 || i3 == 6 || i3 == 2) ? 6 : 7;
            if (Build.VERSION.SDK_INT >= 10 && !Build.MODEL.equals("Kindle Fire")) {
                setRequestedOrientation(t.u);
            } else {
                if (Build.MODEL.equals("Kindle Fire")) {
                    getRequestedOrientation();
                    switch (((WindowManager) getSystemService("window")).getDefaultDisplay().getRotation()) {
                        case 0:
                            break;
                        case 1:
                            i = 0;
                            break;
                        case 2:
                            i = 9;
                            break;
                        default:
                            i = 8;
                            break;
                    }
                } else {
                    i = i3;
                }
                t.u = i;
                setRequestedOrientation(i);
            }
        }
        setVolumeControlStream(3);
        this.D = new e(this);
        this.D.a(this);
        this.M = new FrameLayout(this);
        this.E = new x(this);
        this.O = new FrameLayout(this);
        this.R = new a(this);
        this.Q = new c(t.g("browser_icon"));
        AdColonyBrowser.B = false;
        t.I = this;
        t.J = this;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mp) {
        if (this.i) {
            int duration = this.D.getDuration() / 1000;
            al.f3721a.a("duration, actual_duration = ").a(this.x).a(", ").b(duration);
            if (!(this.x / ((double) duration) > 0.9d && this.x / ((double) duration) < 1.1d)) {
                finish();
            } else {
                t.c.a(this.F);
                this.i = false;
            }
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        g = true;
        super.onResume();
        f.a(this);
        if (t.a()) {
            finish();
        }
        b();
        if (this.A) {
            this.A = false;
            if (!d) {
                if (this.E.P) {
                    this.N.addView(this.E.f3860a);
                }
                if (this.E.P) {
                    this.N.setVisibility(4);
                }
                if (Build.MODEL.equals("Kindle Fire")) {
                    this.E.m = 20;
                }
                if (Build.MODEL.equals("SCH-I800")) {
                    this.E.m = 25;
                }
                this.M.addView(this.D, new FrameLayout.LayoutParams(this.u, this.v, 17));
                if (this.E.P) {
                    this.M.addView(this.N, new FrameLayout.LayoutParams(this.s, this.t - this.E.m, 17));
                }
                this.M.addView(this.E, new FrameLayout.LayoutParams(this.s, this.t, 17));
            }
        }
        if (f) {
            this.O.removeView(this.R);
            this.O.addView(this.R);
            setContentView(this.O);
        } else {
            setContentView(this.M);
            if (d) {
                this.q = System.currentTimeMillis();
            }
        }
        this.D.a((MediaPlayer.OnCompletionListener) this.E);
        this.D.a((MediaPlayer.OnErrorListener) this.E);
        try {
            this.S = new FileInputStream(this.z);
            this.D.a(this.S.getFD());
            if (!h) {
                onWindowFocusChanged(true);
            }
            if (t.O) {
                this.E.a();
                this.E.d();
            }
        } catch (IOException e2) {
            t.d("Unable to play video: " + t.g("video_filepath"));
            this.E.c(true);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (!t.Y) {
        }
        au.f3805a = false;
        au.f3806b = null;
        if (this.F != null && this.F.t != null && !this.F.r) {
            this.F.f3833a = 1;
            this.F.d();
        }
    }

    boolean b() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.s = displayMetrics.widthPixels;
        this.t = displayMetrics.heightPixels;
        this.s = displayMetrics.widthPixels;
        this.t = displayMetrics.heightPixels;
        this.w = -16777216;
        getWindow().setBackgroundDrawable(new ColorDrawable(this.w));
        int i = this.s;
        int i2 = this.t;
        this.u = i;
        this.v = i2;
        if (!t.d && this.u < this.v) {
            this.s = i2;
            this.t = i;
            this.u = i2;
            this.v = i;
        }
        if (!t.z) {
            return false;
        }
        t.z = false;
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean has_focus) {
        if (has_focus) {
            h = false;
            if (!d && g) {
                if (this.D != null) {
                    if (c != 0) {
                        f3666a = c;
                    }
                    c = 0;
                    this.D.seekTo(f3666a);
                    if (t.d) {
                        Handler handler = new Handler();
                        Runnable runnable = new Runnable() { // from class: com.jirbo.adcolony.ADCVideo.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ADCVideo.this.D.setBackgroundColor(0);
                            }
                        };
                        this.D.setBackgroundColor(-16777216);
                        handler.postDelayed(runnable, 900L);
                    } else {
                        this.D.setBackgroundColor(0);
                    }
                    if (!au.f3805a && !this.U) {
                        this.E.Q = false;
                        this.D.start();
                        this.C = true;
                        if (this.J) {
                            if (this.I) {
                                this.G.d();
                            }
                            new b(t.c, this.F.s == null ? this.F.j : this.F.s.ai, this).a();
                            this.J = false;
                        } else if (this.I) {
                            this.G.f();
                        }
                    }
                    this.E.requestFocus();
                    this.E.invalidate();
                    return;
                }
                return;
            }
            if (f) {
                if (this.L != null) {
                    this.L.seekTo(f3667b);
                    this.L.start();
                    return;
                } else {
                    if (this.O != null) {
                        this.O.removeAllViews();
                    }
                    setContentView(this.M);
                    return;
                }
            }
            if (d) {
                this.E.invalidate();
                return;
            }
            return;
        }
        if (g && !this.U) {
            if (this.I) {
                this.G.g();
            }
            f3666a = this.D.getCurrentPosition();
            this.D.pause();
            this.C = false;
        }
        h = true;
    }

    @Override // com.jirbo.adcolony.b.a
    public void a(b bVar) {
        try {
            if (this.E.P) {
                if (bVar.m == null) {
                    this.E.ac = "";
                } else {
                    String replaceAll = bVar.m.replaceAll("<script (type=\"text/javascript\")?((\\s)*src=\"mraid.js\"){1}></script>", "<script type=\"text/javascript\">" + u.a(t.S, "") + "</script>");
                    if (this.E != null) {
                        this.E.ac = replaceAll;
                        runOnUiThread(new Runnable() { // from class: com.jirbo.adcolony.ADCVideo.2
                            @Override // java.lang.Runnable
                            public void run() {
                                ADCVideo.this.E.c();
                            }
                        });
                    }
                }
            }
        } catch (OutOfMemoryError e2) {
            al.d.b((Object) "OutOfMemoryError - disabling AdColony.");
            this.E.c(true);
            f.a();
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        g = false;
        if (f) {
            if (this.L != null) {
                f3667b = this.L.getCurrentPosition();
                this.L.stopPlayback();
            }
        } else {
            f3667b = 0;
        }
        if (d) {
            View view = new View(this);
            view.setBackgroundColor(-16777216);
            setContentView(view);
            this.r = System.currentTimeMillis();
            if (!isFinishing()) {
                this.p += (this.r - this.q) / 1000.0d;
            }
        }
        if (this.D != null && !this.U) {
            if (this.D.getCurrentPosition() != 0) {
                f3666a = this.D.getCurrentPosition();
            }
            this.D.a();
            this.C = false;
            this.D.setBackgroundColor(-16777216);
            if (this.I) {
                this.G.g();
            }
        } else {
            f3666a = 0;
        }
        this.E.A = true;
        this.E.I = false;
        this.E.H = false;
        this.E.J = false;
        this.E.u = 0;
        this.E.t = 0;
        this.E.invalidate();
        super.onPause();
        f.c();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keycode, KeyEvent event) {
        if (au.f3806b != null && au.f3806b.onKeyDown(keycode, event)) {
            return true;
        }
        if (keycode == 4) {
            if (d) {
                if (f) {
                    this.L.stopPlayback();
                    f = false;
                    this.O.removeAllViews();
                    setContentView(this.M);
                } else if (this.E != null && this.E.t == 0) {
                    t.Y = true;
                    this.E.f();
                }
            } else if (this.E != null && au.f3806b != null) {
                Iterator<c> it = au.f3806b.r.iterator();
                while (it.hasNext()) {
                    it.next().a();
                }
                au.f3806b = null;
                au.f3805a = false;
                this.D.start();
                this.C = true;
            } else if (this.E != null && this.E.L && this.E.N) {
                t.Y = true;
                this.E.g();
            }
            return true;
        }
        if (keycode == 82) {
            return true;
        }
        return super.onKeyUp(keycode, event);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keycode, KeyEvent event) {
        if (keycode == 4) {
            return true;
        }
        return super.onKeyDown(keycode, event);
    }

    void a(String str) {
        this.y = str;
        f = true;
        this.L = new VideoView(this);
        this.L.setVideoURI(Uri.parse(str));
        new MediaController(this).setMediaPlayer(this.L);
        this.L.setLayoutParams(new FrameLayout.LayoutParams(this.s, this.t, 17));
        this.O.addView(this.L);
        this.O.addView(this.R);
        setContentView(this.O);
        this.L.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.jirbo.adcolony.ADCVideo.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer media_player) {
                ADCVideo.this.setContentView(ADCVideo.this.M);
                ADCVideo.this.O.removeAllViews();
                ADCVideo.f = false;
            }
        });
        this.L.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.jirbo.adcolony.ADCVideo.4
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer media_player) {
                ADCVideo.this.O.removeViewAt(1);
            }
        });
        this.L.start();
    }

    class a extends View {

        /* renamed from: a, reason: collision with root package name */
        Rect f3672a;

        public a(Activity activity) {
            super(activity);
            this.f3672a = new Rect();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            canvas.drawARGB(255, 0, 0, 0);
            getDrawingRect(this.f3672a);
            ADCVideo.this.Q.a(canvas, (this.f3672a.width() - ADCVideo.this.Q.f) / 2, (this.f3672a.height() - ADCVideo.this.Q.g) / 2);
            invalidate();
        }
    }
}
