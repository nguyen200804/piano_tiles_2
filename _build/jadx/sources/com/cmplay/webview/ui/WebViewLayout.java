package com.cmplay.webview.ui;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.http.SslError;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.cmplay.base.util.webview.ipc.data.WebConfigManager;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.view.MsgBoxNetworkStateViewFlipper;
import com.cmplay.tiles4.R;
import com.cmplay.webview.a.a;
import com.cmplay.webview.d.c;
import com.cmplay.webview.interfaces.WebJsInterface;
import com.cmplay.webview.ipc.a.b;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URISyntaxException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebViewLayout extends RelativeLayout implements a {
    private static String k;
    private static String l;
    private static String m;
    private static String n;
    private static String o;

    /* renamed from: a, reason: collision with root package name */
    public WebViewEx f1972a;

    /* renamed from: b, reason: collision with root package name */
    public WebViewLayout f1973b;
    private Activity c;
    private String d;
    private MsgBoxNetworkStateViewFlipper e;
    private boolean f;
    private WebJsInterface g;
    private String[] h;
    private String i;
    private int j;

    public WebViewLayout(Context context, String url, int type) {
        super(context);
        this.j = -1;
        this.d = url;
        this.j = type;
        a(context);
    }

    public WebViewLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.j = -1;
        a(context);
    }

    public WebViewLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.j = -1;
        a(context);
    }

    private void a(Context context) {
        this.c = (Activity) context;
        this.f1973b = this;
        switch (this.j) {
            case -1:
                this.c.finish();
                return;
            case 1:
                this.h = c.a().a(com.cmplay.cloud.a.a().a(2, "section_common", "cloud_key_h5_down_load_image", ""));
                this.i = com.cmplay.webview.d.a.a("/h5_down/", ".nomedia");
                break;
        }
        LayoutInflater.from(context).inflate(R.layout.function_web_layout, this);
        this.e = (MsgBoxNetworkStateViewFlipper) findViewById(2131230864);
        this.e.a(b.a(GameApp.f1598a).a(WebConfigManager.LOADING_ID, ""));
        this.e.a(new com.cmplay.tile2.ui.view.b() { // from class: com.cmplay.webview.ui.WebViewLayout.1
            @Override // com.cmplay.tile2.ui.view.b
            public void a() {
                WebViewLayout.this.h();
            }
        });
        this.f1972a = (WebViewEx) findViewById(2131230856);
        this.f1972a.getSettings().setJavaScriptEnabled(true);
        this.f1972a.getSettings().setDefaultTextEncodingName("UTF-8");
        this.f1972a.getSettings().setUseWideViewPort(true);
        this.f1972a.getSettings().setLoadWithOverviewMode(true);
        this.f1972a.getSettings().setDomStorageEnabled(true);
        this.f1972a.getSettings().setBuiltInZoomControls(false);
        this.f1972a.getSettings().setTextSize(WebSettings.TextSize.NORMAL);
        this.f1972a.getSettings().setDefaultFixedFontSize(16);
        this.f1972a.getSettings().setDefaultFontSize(16);
        this.f1972a.setBackgroundColor(0);
        this.f1972a.clearCache(false);
        this.g = new WebJsInterface(this.c, this);
        this.f1972a.addJavascriptInterface(this.g, "dttwt2");
        if (Build.VERSION.SDK_INT >= 11) {
            this.f1972a.getSettings().setDisplayZoomControls(false);
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: com.cmplay.webview.ui.WebViewLayout.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                return false;
            }
        });
        this.f1972a.setWebChromeClient(new WebChromeClient());
        this.f1972a.setWebViewClient(new WebViewClient() { // from class: com.cmplay.webview.ui.WebViewLayout.3
            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
                super.onReceivedError(view, errorCode, description, failingUrl);
                WebViewLayout.this.d();
                WebViewLayout.this.f = true;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
                if (!WebViewLayout.this.f) {
                    WebViewLayout.this.c();
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                try {
                    Intent parseUri = Intent.parseUri(url, 1);
                    parseUri.addCategory("android.intent.category.BROWSABLE");
                    parseUri.setComponent(null);
                    if ("android.intent.action.VIEW".equals(parseUri.getAction()) && (url.startsWith("http://") || url.startsWith("https://"))) {
                        return false;
                    }
                    try {
                        if (WebViewLayout.this.c.startActivityIfNeeded(parseUri, -1)) {
                            return true;
                        }
                    } catch (ActivityNotFoundException e) {
                        e.printStackTrace();
                    } catch (SecurityException e2) {
                        e2.printStackTrace();
                    }
                    return super.shouldOverrideUrlLoading(view, url);
                } catch (URISyntaxException e3) {
                    e3.printStackTrace();
                    return false;
                }
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
                WebResourceResponse webResourceResponse;
                WebResourceResponse webResourceResponse2 = null;
                if (WebViewLayout.this.h != null && WebViewLayout.this.h.length >= 1) {
                    int i = 0;
                    while (i < WebViewLayout.this.h.length) {
                        if (url.equals(WebViewLayout.this.h[i]) && com.cmplay.webview.d.a.b(WebViewLayout.this.i, url)) {
                            try {
                                webResourceResponse = new WebResourceResponse("image/" + com.cmplay.webview.d.a.b(url), "UTF-8", new FileInputStream(com.cmplay.webview.d.a.c(WebViewLayout.this.i, url)));
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                            i++;
                            webResourceResponse2 = webResourceResponse;
                        }
                        webResourceResponse = webResourceResponse2;
                        i++;
                        webResourceResponse2 = webResourceResponse;
                    }
                }
                return webResourceResponse2;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
                if (handler != null) {
                    handler.proceed();
                }
            }
        });
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (!TextUtils.isEmpty(this.d) && this.f1972a != null && this.e != null) {
            this.e.setVisibility(0);
            this.f1972a.loadUrl(this.d);
        }
    }

    public void b() {
        if (this.e != null) {
            this.e.setVisibility(8);
        }
    }

    public void c() {
        if (this.f1972a != null) {
            this.f1972a.setVisibility(0);
        }
        if (this.e != null) {
            this.e.setVisibility(8);
        }
    }

    public void d() {
        if (this.f1972a != null) {
            this.f1972a.setVisibility(8);
        }
        if (this.e != null) {
            this.e.setVisibility(0);
            this.e.e();
        }
    }

    public void e() {
        this.f1973b = null;
        if (this.f1972a != null) {
            this.f1972a.clearCache(false);
            this.f1972a.removeAllViews();
            this.f1972a.destroy();
            this.f1972a = null;
        }
    }

    @Override // com.cmplay.webview.a.a
    public void c(String str) {
        m = str;
    }

    @Override // com.cmplay.webview.a.a
    public void d(String str) {
        n = str;
    }

    @Override // com.cmplay.webview.a.a
    public void a(final String str, final String str2) {
        if (this.f1972a != null && this.c != null && !this.c.isFinishing()) {
            this.c.runOnUiThread(new Runnable() { // from class: com.cmplay.webview.ui.WebViewLayout.4
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str2)) {
                        WebViewLayout.this.f1972a.loadUrl("javascript:" + str + "()");
                    } else {
                        WebViewLayout.this.f1972a.loadUrl("javascript:" + str + "(" + str2 + ")");
                    }
                }
            });
        }
    }

    @Override // com.cmplay.webview.a.a
    public void e(String str) {
        o = str;
    }

    @Override // com.cmplay.webview.a.a
    public void a(String str) {
        l = str;
    }

    @Override // com.cmplay.webview.a.a
    public void b(String str) {
        k = str;
    }

    public WebViewEx f() {
        return this.f1972a;
    }

    public void f(String str) {
        if (this.f1972a != null && !TextUtils.isEmpty(n) && !TextUtils.isEmpty(str)) {
            this.f1972a.loadUrl("javascript:" + n + "(" + str + ")");
            Log.d("zzb", "callbackLoginMethon = javascript:" + n + "(" + str + ")");
        }
    }

    public void g(String str) {
        if (this.f1972a != null && !TextUtils.isEmpty(l) && !TextUtils.isEmpty(str)) {
            this.f1972a.loadUrl("javascript:" + l + "(" + str + ")");
            com.cmplay.util.c.b("ly", "callbackLoginMethon = javascript:" + l + "(" + str + ")");
        }
    }

    public void h(String str) {
        if (this.f1972a != null && !TextUtils.isEmpty(k) && !TextUtils.isEmpty(str)) {
            this.f1972a.loadUrl("javascript:" + k + "(" + str + ")");
            com.cmplay.util.c.b("ly", "callbackShareMethon = javascript:" + k + "(" + str + ")");
        }
    }

    @Override // com.cmplay.webview.a.a
    public void a(int i) {
        setVisibility(8);
        e();
        if (this.c != null) {
            this.c.finish();
        }
    }

    @Override // com.cmplay.webview.a.a
    public void a() {
        c();
    }

    public boolean g() {
        if (this.f1972a == null || TextUtils.isEmpty(o)) {
            return false;
        }
        this.f1972a.loadUrl("javascript:" + o + "()");
        Log.e("ymymym", "onReturnKeyPressed");
        return true;
    }
}
