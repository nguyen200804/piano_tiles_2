package com.cmcm.orion.picks.webview;

import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* compiled from: WebViews.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class f extends WebChromeClient {
    f() {
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView view, String url, String message, JsResult result) {
        result.confirm();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView view, String url, String message, JsResult result) {
        result.confirm();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
        result.confirm();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView view, String url, String message, JsResult result) {
        result.confirm();
        return true;
    }
}
