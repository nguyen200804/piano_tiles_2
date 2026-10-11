package com.applovin.impl.adview;

import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ab extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinLogger f337a;

    public ab(AppLovinSdk appLovinSdk) {
        this.f337a = appLovinSdk.getLogger();
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i, String str2) {
        this.f337a.w("AdWebView", "console.log[" + i + "] :" + str);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        this.f337a.d("AdWebView", consoleMessage.sourceId() + ": " + consoleMessage.lineNumber() + ": " + consoleMessage.message());
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        this.f337a.w("AdWebView", "Alert attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        this.f337a.w("AdWebView", "JS onBeforeUnload attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        this.f337a.w("AdWebView", "JS confirm attempted: " + str2);
        return true;
    }
}
