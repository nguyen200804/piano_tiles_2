package org.cocos2dx.lib;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.http.SslError;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import java.net.URI;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cocos2dxWebView extends WebView {
    private static final String TAG = Cocos2dxWebViewHelper.class.getSimpleName();
    private String mJSScheme;
    private int mViewTag;

    public Cocos2dxWebView(Context context) {
        this(context, -1);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public Cocos2dxWebView(Context context, int viewTag) {
        super(context);
        this.mViewTag = viewTag;
        this.mJSScheme = "";
        setFocusable(true);
        setFocusableInTouchMode(true);
        getSettings().setSupportZoom(false);
        getSettings().setJavaScriptEnabled(true);
        try {
            getClass().getMethod("removeJavascriptInterface", String.class).invoke(this, "searchBoxJavaBridge_");
        } catch (Exception e) {
            Log.d(TAG, "This API level do not support `removeJavascriptInterface`");
        }
        setWebViewClient(new Cocos2dxWebViewClient());
        setWebChromeClient(new WebChromeClient());
    }

    public void setJavascriptInterfaceScheme(String scheme) {
        if (scheme == null) {
            scheme = "";
        }
        this.mJSScheme = scheme;
    }

    public void setScalesPageToFit(boolean scalesPageToFit) {
        getSettings().setSupportZoom(scalesPageToFit);
    }

    class Cocos2dxWebViewClient extends WebViewClient {
        Cocos2dxWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String urlString) {
            URI create = URI.create(urlString);
            if (create == null || !create.getScheme().equals(Cocos2dxWebView.this.mJSScheme)) {
                return Cocos2dxWebViewHelper._shouldStartLoading(Cocos2dxWebView.this.mViewTag, urlString);
            }
            Cocos2dxWebViewHelper._onJsCallback(Cocos2dxWebView.this.mViewTag, urlString);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            Cocos2dxWebViewHelper._didFinishLoading(Cocos2dxWebView.this.mViewTag, url);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
            Cocos2dxWebViewHelper._didFailLoading(Cocos2dxWebView.this.mViewTag, failingUrl);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            if (handler != null) {
                handler.proceed();
            }
        }
    }

    public void setWebViewRect(int left, int top, int maxWidth, int maxHeight) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = left;
        layoutParams.topMargin = top;
        layoutParams.width = maxWidth;
        layoutParams.height = maxHeight;
        layoutParams.gravity = 51;
        setLayoutParams(layoutParams);
    }
}
