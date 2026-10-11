package com.mopub.mobileads.util;

import android.support.annotation.NonNull;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.mopub.common.logging.MoPubLog;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebViews {
    public static void onPause(@NonNull WebView webView, boolean isFinishing) {
        if (isFinishing) {
            webView.stopLoading();
            webView.loadUrl("");
        }
        webView.onPause();
    }

    public static void setDisableJSChromeClient(@NonNull WebView webView) {
        webView.setWebChromeClient(new WebChromeClient() { // from class: com.mopub.mobileads.util.WebViews.1
            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(@NonNull WebView view, @NonNull String url, @NonNull String message, @NonNull JsResult result) {
                MoPubLog.d(message);
                result.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(@NonNull WebView view, @NonNull String url, @NonNull String message, @NonNull JsResult result) {
                MoPubLog.d(message);
                result.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(@NonNull WebView view, @NonNull String url, @NonNull String message, @NonNull String defaultValue, @NonNull JsPromptResult result) {
                MoPubLog.d(message);
                result.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsBeforeUnload(@NonNull WebView view, @NonNull String url, @NonNull String message, @NonNull JsResult result) {
                MoPubLog.d(message);
                result.confirm();
                return true;
            }
        });
    }
}
