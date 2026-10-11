package com.facebook.ads.internal.view;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class b extends WebView {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2933a = b.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private boolean f2934b;

    public b(Context context) {
        super(context);
        d();
    }

    private void d() {
        setWebChromeClient(a());
        setWebViewClient(b());
        com.facebook.ads.internal.util.h.b(this);
        getSettings().setJavaScriptEnabled(true);
        if (Build.VERSION.SDK_INT >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
            } catch (Exception e) {
                Log.w(f2933a, "Failed to initialize CookieManager.");
            }
        }
    }

    protected WebChromeClient a() {
        return new WebChromeClient();
    }

    protected WebViewClient b() {
        return new WebViewClient();
    }

    public boolean c() {
        return this.f2934b;
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f2934b = true;
        super.destroy();
    }
}
