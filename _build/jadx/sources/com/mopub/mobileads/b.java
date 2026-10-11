package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import java.util.EnumSet;

/* compiled from: HtmlWebViewClient.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class b extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    private final EnumSet<UrlAction> f4479a = EnumSet.of(UrlAction.HANDLE_MOPUB_SCHEME, UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    /* renamed from: b, reason: collision with root package name */
    private final Context f4480b;
    private final String c;
    private HtmlWebViewListener d;
    private BaseHtmlWebView e;
    private final String f;
    private final String g;

    b(HtmlWebViewListener htmlWebViewListener, BaseHtmlWebView baseHtmlWebView, String str, String str2, String str3) {
        this.d = htmlWebViewListener;
        this.e = baseHtmlWebView;
        this.f = str;
        this.g = str2;
        this.c = str3;
        this.f4480b = baseHtmlWebView.getContext();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        new UrlHandler.Builder().withDspCreativeId(this.c).withSupportedUrlActions(this.f4479a).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.b.2
            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingSucceeded(@NonNull String url2, @NonNull UrlAction urlAction) {
                if (b.this.e.wasClicked()) {
                    b.this.d.onClicked();
                    b.this.e.onResetUserClick();
                }
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingFailed(@NonNull String url2, @NonNull UrlAction lastFailedUrlAction) {
            }
        }).withMoPubSchemeListener(new UrlHandler.MoPubSchemeListener() { // from class: com.mopub.mobileads.b.1
            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public void onFinishLoad() {
                b.this.d.onLoaded(b.this.e);
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public void onClose() {
                b.this.d.onCollapsed();
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public void onFailLoad() {
                b.this.d.onFailed(MoPubErrorCode.UNSPECIFIED);
            }
        }).build().handleUrl(this.f4480b, url, this.e.wasClicked());
        return true;
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        if (this.g != null && url.startsWith(this.g)) {
            view.stopLoading();
            if (this.e.wasClicked()) {
                try {
                    Intents.showMoPubBrowserForUrl(this.f4480b, Uri.parse(url), this.c);
                    return;
                } catch (IntentNotResolvableException e) {
                    MoPubLog.d(e.getMessage());
                    return;
                }
            }
            MoPubLog.d("Attempted to redirect without user interaction");
        }
    }
}
