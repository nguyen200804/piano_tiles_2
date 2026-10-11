package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.Rect;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import com.facebook.ads.AudienceNetworkActivity;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ac extends WebView {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinLogger f338a;

    /* renamed from: b, reason: collision with root package name */
    private AppLovinAd f339b;
    private boolean c;

    ac(ag agVar, AppLovinSdk appLovinSdk, Context context) {
        super(context);
        this.f339b = null;
        this.c = false;
        this.f338a = appLovinSdk.getLogger();
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        setWebViewClient(agVar);
        setWebChromeClient(new ab(appLovinSdk));
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setScrollBarStyle(33554432);
        setOnTouchListener(new ad(this));
        setOnLongClickListener(new ae(this));
    }

    AppLovinAd a() {
        return this.f339b;
    }

    public void a(AppLovinAd appLovinAd) {
        if (this.c) {
            this.f338a.userError("AdWebView", "Ad can not be loaded in a destroyed web view");
            return;
        }
        this.f339b = appLovinAd;
        try {
            loadDataWithBaseURL("/", ((AppLovinAdImpl) appLovinAd).getHtmlSource(), AudienceNetworkActivity.WEBVIEW_MIME_TYPE, null, "");
            this.f338a.d("AdWebView", "AppLovinAd rendered");
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.c = true;
        try {
            super.destroy();
            this.f338a.d("AdWebView", "Web view destroyed");
        } catch (Throwable th) {
            if (this.f338a != null) {
                this.f338a.e("AdWebView", "destroy() threw exception", th);
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        try {
            super.onFocusChanged(z, i, rect);
        } catch (Exception e) {
            this.f338a.e("AdWebView", "onFocusChanged() threw exception", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        try {
            super.onWindowFocusChanged(z);
        } catch (Exception e) {
            this.f338a.e("AdWebView", "onWindowFocusChanged() threw exception", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onWindowVisibilityChanged(int i) {
        try {
            super.onWindowVisibilityChanged(i);
        } catch (Exception e) {
            this.f338a.e("AdWebView", "onWindowVisibilityChanged() threw exception", e);
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        try {
            return super.requestFocus(i, rect);
        } catch (Exception e) {
            this.f338a.e("AdWebView", "requestFocus() threw exception", e);
            return false;
        }
    }
}
