package com.cmcm.orion.picks.webview;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.ads.AudienceNetworkActivity;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BaseWebView extends WebView {

    /* renamed from: b, reason: collision with root package name */
    private static boolean f1039b = false;

    /* renamed from: a, reason: collision with root package name */
    protected boolean f1040a;

    public BaseWebView(Context context) {
        this(context, null);
    }

    public BaseWebView(Context context, AttributeSet attrs) {
        super(context.getApplicationContext(), attrs);
        if (Build.VERSION.SDK_INT < 18) {
            getSettings().setPluginState(WebSettings.PluginState.OFF);
        }
        setWebChromeClient(new f());
        if (!f1039b) {
            Context context2 = getContext();
            if (Build.VERSION.SDK_INT == 19) {
                WebView webView = new WebView(context2.getApplicationContext());
                webView.setBackgroundColor(0);
                webView.loadDataWithBaseURL(null, "", AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8", null);
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.width = 1;
                layoutParams.height = 1;
                layoutParams.type = 2005;
                layoutParams.flags = 16777240;
                layoutParams.format = -2;
                layoutParams.gravity = 8388659;
                ((WindowManager) context2.getSystemService("window")).addView(webView, layoutParams);
            }
            f1039b = true;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        getSettings().setDomStorageEnabled(true);
        getSettings().setAllowFileAccess(false);
        if (Build.VERSION.SDK_INT >= 11) {
            getSettings().setAllowContentAccess(false);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            getSettings().setAllowFileAccessFromFileURLs(false);
            getSettings().setAllowUniversalAccessFromFileURLs(false);
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f1040a = true;
        if (this != null && getParent() != null && (getParent() instanceof ViewGroup)) {
            ((ViewGroup) getParent()).removeView(this);
        }
        removeAllViews();
        super.destroy();
    }
}
