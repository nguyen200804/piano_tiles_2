package com.jirbo.adcolony;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdColonyBrowser extends Activity {

    /* renamed from: a, reason: collision with root package name */
    public static String f3674a;
    WebView c;
    com.jirbo.adcolony.c d;
    com.jirbo.adcolony.c e;
    com.jirbo.adcolony.c f;
    com.jirbo.adcolony.c g;
    com.jirbo.adcolony.c h;
    com.jirbo.adcolony.c i;
    com.jirbo.adcolony.c j;
    com.jirbo.adcolony.c k;
    com.jirbo.adcolony.c l;
    RelativeLayout m;
    RelativeLayout n;
    boolean o = false;
    boolean p = false;
    boolean q = false;
    boolean r = false;
    ProgressBar s;
    DisplayMetrics t;
    a u;
    c v;

    /* renamed from: b, reason: collision with root package name */
    static boolean f3675b = true;
    static boolean w = false;
    static boolean x = false;
    static boolean y = false;
    static boolean z = false;
    static boolean A = true;
    static boolean B = false;
    static boolean C = false;
    static boolean D = false;

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        C = true;
        this.d = new com.jirbo.adcolony.c(t.g("browser_back_image_normal"));
        this.e = new com.jirbo.adcolony.c(t.g("browser_stop_image_normal"));
        this.f = new com.jirbo.adcolony.c(t.g("browser_reload_image_normal"));
        this.g = new com.jirbo.adcolony.c(t.g("browser_forward_image_normal"));
        this.h = new com.jirbo.adcolony.c(t.g("browser_close_image_normal"));
        this.i = new com.jirbo.adcolony.c(t.g("browser_glow_button"));
        this.j = new com.jirbo.adcolony.c(t.g("browser_icon"));
        this.k = new com.jirbo.adcolony.c(t.g("browser_back_image_normal"), true);
        this.l = new com.jirbo.adcolony.c(t.g("browser_forward_image_normal"), true);
        this.t = f.d().getResources().getDisplayMetrics();
        float f = this.t.widthPixels / this.t.xdpi;
        float f2 = this.t.heightPixels / this.t.ydpi;
        double sqrt = (Math.sqrt((this.t.widthPixels * this.t.widthPixels) + (this.t.heightPixels * this.t.heightPixels)) / Math.sqrt((f * f) + (f2 * f2))) / 220.0d;
        if (sqrt > 1.8d) {
            sqrt = 1.8d;
        }
        A = true;
        w = false;
        x = false;
        D = false;
        this.d.a(sqrt);
        this.e.a(sqrt);
        this.f.a(sqrt);
        this.g.a(sqrt);
        this.h.a(sqrt);
        this.i.a(sqrt);
        this.k.a(sqrt);
        this.l.a(sqrt);
        this.s = new ProgressBar(this);
        this.s.setVisibility(4);
        this.n = new RelativeLayout(this);
        this.m = new RelativeLayout(this);
        this.m.setBackgroundColor(-3355444);
        if (!t.d) {
            this.m.setLayoutParams(new RelativeLayout.LayoutParams(-1, (int) (this.d.g * 1.5d)));
        } else {
            this.m.setLayoutParams(new RelativeLayout.LayoutParams(-1, (int) (this.d.g * 1.5d)));
        }
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().requestFeature(2);
        setVolumeControlStream(3);
        this.c = new WebView(this);
        this.c.getSettings().setJavaScriptEnabled(true);
        this.c.getSettings().setBuiltInZoomControls(true);
        this.c.getSettings().setUseWideViewPort(true);
        this.c.getSettings().setLoadWithOverviewMode(true);
        this.c.getSettings().setGeolocationEnabled(true);
        if (f3675b) {
            if (!t.d) {
                if (Build.VERSION.SDK_INT >= 10) {
                    setRequestedOrientation(6);
                } else {
                    setRequestedOrientation(0);
                }
            } else {
                setRequestedOrientation(t.u);
            }
        }
        f3675b = true;
        this.c.setWebChromeClient(new WebChromeClient() { // from class: com.jirbo.adcolony.AdColonyBrowser.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView view, int progress) {
                AdColonyBrowser.this.setProgress(progress * 1000);
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(String origin, GeolocationPermissions.Callback callback) {
                callback.invoke(origin, true, false);
            }
        });
        this.c.setWebViewClient(new WebViewClient() { // from class: com.jirbo.adcolony.AdColonyBrowser.2
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                if (!url.startsWith("market://") && !url.startsWith("amzn://")) {
                    return false;
                }
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
                if (t.I != null) {
                    t.I.startActivity(intent);
                }
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                if (!AdColonyBrowser.D) {
                    AdColonyBrowser.y = true;
                    AdColonyBrowser.z = false;
                    AdColonyBrowser.this.s.setVisibility(0);
                }
                AdColonyBrowser.this.u.invalidate();
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, int errorCode, String description, String failing_url) {
                al.d.a("Error viewing URL: ").b((Object) description);
                AdColonyBrowser.this.finish();
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                if (!AdColonyBrowser.D) {
                    AdColonyBrowser.z = true;
                    AdColonyBrowser.y = false;
                    AdColonyBrowser.this.s.setVisibility(4);
                    AdColonyBrowser.w = AdColonyBrowser.this.c.canGoBack();
                    AdColonyBrowser.x = AdColonyBrowser.this.c.canGoForward();
                }
                AdColonyBrowser.this.u.invalidate();
            }
        });
        this.u = new a(this);
        this.v = new c(this);
        this.n.setBackgroundColor(ViewCompat.MEASURED_SIZE_MASK);
        this.n.addView(this.m);
        this.m.setId(12345);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.t.heightPixels - ((int) (this.h.g * 1.5d)));
        layoutParams.addRule(3, this.m.getId());
        this.n.addView(this.c, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, 20);
        layoutParams2.addRule(3, this.m.getId());
        layoutParams2.setMargins(0, -10, 0, 0);
        this.n.addView(this.v, layoutParams2);
        int i = this.t.widthPixels > this.t.heightPixels ? this.t.widthPixels : this.t.heightPixels;
        this.n.addView(this.u, new RelativeLayout.LayoutParams(i * 2, i * 2));
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, this.t.heightPixels - ((int) (this.h.g * 1.5d)));
        layoutParams3.addRule(3, this.m.getId());
        this.n.addView(new b(this), layoutParams3);
        setContentView(this.n);
        this.c.loadUrl(f3674a);
        al.c.a("Viewing ").b((Object) f3674a);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean has_focus) {
        super.onWindowFocusChanged(has_focus);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.u.b();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        A = true;
        this.u.invalidate();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration new_config) {
        super.onConfigurationChanged(new_config);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.t.heightPixels - ((int) (1.5d * this.h.g)));
        layoutParams.addRule(3, this.m.getId());
        this.c.setLayoutParams(layoutParams);
        A = true;
        this.u.invalidate();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (!t.s && B) {
            for (int i = 0; i < t.ab.size(); i++) {
                t.ab.get(i).recycle();
            }
            t.ab.clear();
        }
        B = false;
        C = false;
        super.onDestroy();
    }

    class b extends View {

        /* renamed from: a, reason: collision with root package name */
        Rect f3680a;

        public b(Activity activity) {
            super(activity);
            this.f3680a = new Rect();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            if (!AdColonyBrowser.z) {
                canvas.drawARGB(255, 0, 0, 0);
                getDrawingRect(this.f3680a);
                AdColonyBrowser.this.j.a(canvas, (this.f3680a.width() - AdColonyBrowser.this.j.f) / 2, (this.f3680a.height() - AdColonyBrowser.this.j.g) / 2);
                invalidate();
            }
        }
    }

    class c extends View {

        /* renamed from: a, reason: collision with root package name */
        Paint f3682a;

        /* renamed from: b, reason: collision with root package name */
        com.jirbo.adcolony.c f3683b;
        com.jirbo.adcolony.c c;

        public c(Activity activity) {
            super(activity);
            this.f3682a = new Paint();
            this.f3683b = new com.jirbo.adcolony.c(t.g("close_image_normal"));
            this.c = new com.jirbo.adcolony.c(t.g("close_image_down"));
            try {
                getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this, 1, null);
            } catch (Exception e) {
            }
            this.f3682a.setColor(-3355444);
            this.f3682a.setStrokeWidth(10.0f);
            this.f3682a.setStyle(Paint.Style.STROKE);
            this.f3682a.setShadowLayer(3.0f, 0.0f, 1.0f, -16777216);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            canvas.drawRect(0.0f, 0.0f, AdColonyBrowser.this.m.getWidth(), 10.0f, this.f3682a);
        }
    }

    class a extends View {

        /* renamed from: a, reason: collision with root package name */
        Rect f3678a;

        /* renamed from: b, reason: collision with root package name */
        Paint f3679b;

        public a(Activity activity) {
            super(activity);
            this.f3678a = new Rect();
            this.f3679b = new Paint();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            getDrawingRect(this.f3678a);
            int height = (AdColonyBrowser.this.m.getHeight() - AdColonyBrowser.this.d.g) / 2;
            if (!AdColonyBrowser.w) {
                AdColonyBrowser.this.d.a(canvas, AdColonyBrowser.this.d.f, height);
            } else {
                AdColonyBrowser.this.k.a(canvas, AdColonyBrowser.this.d.f, height);
            }
            if (!AdColonyBrowser.x) {
                AdColonyBrowser.this.g.a(canvas, AdColonyBrowser.this.d.b() + (AdColonyBrowser.this.m.getWidth() / 10) + AdColonyBrowser.this.d.f, height);
            } else {
                AdColonyBrowser.this.l.a(canvas, AdColonyBrowser.this.d.b() + (AdColonyBrowser.this.m.getWidth() / 10) + AdColonyBrowser.this.d.f, height);
            }
            if (AdColonyBrowser.y) {
                AdColonyBrowser.this.e.a(canvas, AdColonyBrowser.this.g.b() + AdColonyBrowser.this.g.f + (AdColonyBrowser.this.m.getWidth() / 10), height);
            } else {
                AdColonyBrowser.this.f.a(canvas, AdColonyBrowser.this.g.b() + AdColonyBrowser.this.g.f + (AdColonyBrowser.this.m.getWidth() / 10), height);
            }
            AdColonyBrowser.this.h.a(canvas, AdColonyBrowser.this.m.getWidth() - (AdColonyBrowser.this.h.f * 2), height);
            if (AdColonyBrowser.this.o) {
                AdColonyBrowser.this.i.c((AdColonyBrowser.this.d.b() - (AdColonyBrowser.this.i.f / 2)) + (AdColonyBrowser.this.d.f / 2), (AdColonyBrowser.this.d.c() - (AdColonyBrowser.this.i.g / 2)) + (AdColonyBrowser.this.d.g / 2));
                AdColonyBrowser.this.i.a(canvas);
            }
            if (AdColonyBrowser.this.p) {
                AdColonyBrowser.this.i.c((AdColonyBrowser.this.g.b() - (AdColonyBrowser.this.i.f / 2)) + (AdColonyBrowser.this.g.f / 2), (AdColonyBrowser.this.g.c() - (AdColonyBrowser.this.i.g / 2)) + (AdColonyBrowser.this.g.g / 2));
                AdColonyBrowser.this.i.a(canvas);
            }
            if (AdColonyBrowser.this.q) {
                AdColonyBrowser.this.i.c((AdColonyBrowser.this.f.b() - (AdColonyBrowser.this.i.f / 2)) + (AdColonyBrowser.this.f.f / 2), (AdColonyBrowser.this.f.c() - (AdColonyBrowser.this.i.g / 2)) + (AdColonyBrowser.this.f.g / 2));
                AdColonyBrowser.this.i.a(canvas);
            }
            if (AdColonyBrowser.this.r) {
                AdColonyBrowser.this.i.c((AdColonyBrowser.this.h.b() - (AdColonyBrowser.this.i.f / 2)) + (AdColonyBrowser.this.h.f / 2), (AdColonyBrowser.this.h.c() - (AdColonyBrowser.this.i.g / 2)) + (AdColonyBrowser.this.h.g / 2));
                AdColonyBrowser.this.i.a(canvas);
            }
            a();
        }

        public void a() {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AdColonyBrowser.this.s.getWidth(), AdColonyBrowser.this.s.getHeight());
            layoutParams.topMargin = (AdColonyBrowser.this.m.getHeight() - AdColonyBrowser.this.e.g) / 2;
            layoutParams.leftMargin = (AdColonyBrowser.this.m.getWidth() / 10) + AdColonyBrowser.this.e.b() + AdColonyBrowser.this.e.f;
            if (AdColonyBrowser.A && AdColonyBrowser.this.e.b() != 0) {
                AdColonyBrowser.this.n.removeView(AdColonyBrowser.this.s);
                AdColonyBrowser.this.n.addView(AdColonyBrowser.this.s, layoutParams);
                AdColonyBrowser.A = false;
            }
            if (AdColonyBrowser.this.s.getLayoutParams() != null) {
                AdColonyBrowser.this.s.getLayoutParams().height = AdColonyBrowser.this.e.g;
                AdColonyBrowser.this.s.getLayoutParams().width = AdColonyBrowser.this.e.f;
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent event) {
            int action = event.getAction();
            int x = (int) event.getX();
            int y = (int) event.getY();
            if (action == 0) {
                if (a(AdColonyBrowser.this.d, x, y) && AdColonyBrowser.w) {
                    AdColonyBrowser.this.o = true;
                    invalidate();
                    return true;
                }
                if (a(AdColonyBrowser.this.g, x, y) && AdColonyBrowser.x) {
                    AdColonyBrowser.this.p = true;
                    invalidate();
                    return true;
                }
                if (a(AdColonyBrowser.this.f, x, y)) {
                    AdColonyBrowser.this.q = true;
                    invalidate();
                    return true;
                }
                if (a(AdColonyBrowser.this.h, x, y)) {
                    AdColonyBrowser.this.r = true;
                    invalidate();
                    return true;
                }
            }
            if (action == 1) {
                if (a(AdColonyBrowser.this.d, x, y) && AdColonyBrowser.w) {
                    AdColonyBrowser.this.c.goBack();
                    b();
                    return true;
                }
                if (a(AdColonyBrowser.this.g, x, y) && AdColonyBrowser.x) {
                    AdColonyBrowser.this.c.goForward();
                    b();
                    return true;
                }
                if (a(AdColonyBrowser.this.f, x, y) && AdColonyBrowser.y) {
                    AdColonyBrowser.this.c.stopLoading();
                    b();
                    return true;
                }
                if (a(AdColonyBrowser.this.f, x, y) && !AdColonyBrowser.y) {
                    AdColonyBrowser.this.c.reload();
                    b();
                    return true;
                }
                if (a(AdColonyBrowser.this.h, x, y)) {
                    AdColonyBrowser.D = true;
                    AdColonyBrowser.this.c.loadData("", AudienceNetworkActivity.WEBVIEW_MIME_TYPE, AudienceNetworkActivity.WEBVIEW_ENCODING);
                    AdColonyBrowser.x = false;
                    AdColonyBrowser.w = false;
                    AdColonyBrowser.y = false;
                    b();
                    AdColonyBrowser.this.finish();
                    return true;
                }
                b();
            }
            return false;
        }

        public void b() {
            AdColonyBrowser.this.o = false;
            AdColonyBrowser.this.p = false;
            AdColonyBrowser.this.q = false;
            AdColonyBrowser.this.r = false;
            invalidate();
        }

        public boolean a(com.jirbo.adcolony.c cVar, int i, int i2) {
            return i < (cVar.b() + cVar.f) + 16 && i > cVar.b() + (-16) && i2 < (cVar.c() + cVar.g) + 16 && i2 > cVar.c() + (-16);
        }
    }
}
