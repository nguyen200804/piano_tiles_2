package com.cmplay.webview.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.webkit.WebView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebViewEx extends WebView {
    @SuppressLint({"NewApi"})
    public WebViewEx(Context context) {
        super(context);
        if (Build.VERSION.SDK_INT > 10 && Build.VERSION.SDK_INT < 17) {
            removeJavascriptInterface("searchBoxJavaBridge_");
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
        }
    }

    @SuppressLint({"NewApi"})
    public WebViewEx(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        if (Build.VERSION.SDK_INT > 10 && Build.VERSION.SDK_INT < 17) {
            removeJavascriptInterface("searchBoxJavaBridge_");
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
        }
    }

    @SuppressLint({"NewApi"})
    public WebViewEx(Context context, AttributeSet attrs) {
        super(context, attrs);
        if (Build.VERSION.SDK_INT > 10 && Build.VERSION.SDK_INT < 17) {
            removeJavascriptInterface("searchBoxJavaBridge_");
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
        }
    }
}
