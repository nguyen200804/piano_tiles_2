package com.mopub.mobileads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.ads.AudienceNetworkActivity;
import com.mopub.common.util.Views;
import com.mopub.mobileads.util.WebViews;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BaseWebView extends WebView {

    /* renamed from: b, reason: collision with root package name */
    private static boolean f4363b = false;

    /* renamed from: a, reason: collision with root package name */
    protected boolean f4364a;

    public BaseWebView(Context context) {
        super(context.getApplicationContext());
        b(false);
        b();
        WebViews.setDisableJSChromeClient(this);
        if (!f4363b) {
            a(getContext());
            f4363b = true;
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f4364a = true;
        Views.removeFromParent(this);
        removeAllViews();
        super.destroy();
    }

    protected void b(boolean z) {
        if (Build.VERSION.SDK_INT < 18) {
            if (z) {
                getSettings().setPluginState(WebSettings.PluginState.ON);
            } else {
                getSettings().setPluginState(WebSettings.PluginState.OFF);
            }
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    protected void a() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAppCachePath(getContext().getCacheDir().getAbsolutePath());
    }

    private void b() {
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        getSettings().setAllowFileAccessFromFileURLs(false);
        getSettings().setAllowUniversalAccessFromFileURLs(false);
    }

    private void a(@NonNull Context context) {
        if (Build.VERSION.SDK_INT == 19) {
            WebView webView = new WebView(context.getApplicationContext());
            webView.setBackgroundColor(0);
            webView.loadDataWithBaseURL(null, "", AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8", null);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.width = 1;
            layoutParams.height = 1;
            layoutParams.type = 2005;
            layoutParams.flags = 16777240;
            layoutParams.format = -2;
            layoutParams.gravity = 8388659;
            ((WindowManager) context.getSystemService("window")).addView(webView, layoutParams);
        }
    }
}
