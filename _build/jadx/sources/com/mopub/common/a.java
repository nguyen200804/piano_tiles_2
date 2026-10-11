package com.mopub.common;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Drawables;
import java.util.EnumSet;

/* compiled from: BrowserWebViewClient.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class a extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    private static final EnumSet<UrlAction> f4183a = EnumSet.of(UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private MoPubBrowser f4184b;

    public a(@NonNull MoPubBrowser moPubBrowser) {
        this.f4184b = moPubBrowser;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
        MoPubLog.d("MoPubBrowser error: " + description);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        if (TextUtils.isEmpty(url)) {
            return false;
        }
        return new UrlHandler.Builder().withSupportedUrlActions(f4183a).withoutMoPubBrowser().withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.common.a.1
            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingSucceeded(@NonNull String url2, @NonNull UrlAction urlAction) {
                if (urlAction.equals(UrlAction.OPEN_IN_APP_BROWSER)) {
                    a.this.f4184b.getWebView().loadUrl(url2);
                } else {
                    a.this.f4184b.finish();
                }
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingFailed(@NonNull String url2, @NonNull UrlAction lastFailedUrlAction) {
            }
        }).build().handleResolvedUrl(this.f4184b.getApplicationContext(), url, true, null);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        super.onPageStarted(view, url, favicon);
        this.f4184b.getForwardButton().setImageDrawable(Drawables.UNRIGHT_ARROW.createDrawable(this.f4184b));
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        Drawable createDrawable;
        Drawable createDrawable2;
        super.onPageFinished(view, url);
        if (view.canGoBack()) {
            createDrawable = Drawables.LEFT_ARROW.createDrawable(this.f4184b);
        } else {
            createDrawable = Drawables.UNLEFT_ARROW.createDrawable(this.f4184b);
        }
        this.f4184b.getBackButton().setImageDrawable(createDrawable);
        if (view.canGoForward()) {
            createDrawable2 = Drawables.RIGHT_ARROW.createDrawable(this.f4184b);
        } else {
            createDrawable2 = Drawables.UNRIGHT_ARROW.createDrawable(this.f4184b);
        }
        this.f4184b.getForwardButton().setImageDrawable(createDrawable2);
    }
}
