package com.applovin.impl.adview;

import android.content.Context;
import android.net.Uri;
import android.view.ViewParent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ag extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinLogger f344a;

    /* renamed from: b, reason: collision with root package name */
    private final AdViewControllerImpl f345b;

    public ag(AdViewControllerImpl adViewControllerImpl, AppLovinSdk appLovinSdk) {
        this.f344a = appLovinSdk.getLogger();
        this.f345b = adViewControllerImpl;
    }

    private void a(ac acVar, Uri uri) {
        AppLovinAd a2 = acVar.a();
        ViewParent parent = acVar.getParent();
        if (!(parent instanceof AppLovinAdView) || a2 == null) {
            this.f344a.e("AdWebViewClient", "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = " + uri);
        } else {
            this.f345b.a(a2, (AppLovinAdView) parent, this.f345b, uri);
        }
    }

    void a(WebView webView, String str) {
        this.f344a.d("AdWebViewClient", "Processing click on ad URL \"" + str + "\"");
        if (str == null || !(webView instanceof ac)) {
            return;
        }
        Uri parse = Uri.parse(str);
        ac acVar = (ac) webView;
        String scheme = parse.getScheme();
        String host = parse.getHost();
        String path = parse.getPath();
        if (!AppLovinSdk.URI_SCHEME.equals(scheme) || !AppLovinSdk.URI_HOST.equals(host)) {
            a(acVar, parse);
            return;
        }
        if (AppLovinAdService.URI_NEXT_AD.equals(path)) {
            a(acVar);
            return;
        }
        if (AppLovinAdService.URI_CLOSE_AD.equals(path)) {
            b(acVar);
            return;
        }
        if (AppLovinAdServiceImpl.URI_NO_OP.equals(path)) {
            return;
        }
        if (AppLovinAdServiceImpl.URI_TRACK_CLICK_IMMEDIATELY.equals(path)) {
            a(acVar, Uri.parse(AppLovinAdServiceImpl.URI_TRACK_CLICK_IMMEDIATELY));
            return;
        }
        if (path == null || !path.startsWith("/launch/")) {
            this.f344a.w("AdWebViewClient", "Unknown URL: " + str);
            this.f344a.w("AdWebViewClient", "Path: " + path);
            return;
        }
        List<String> pathSegments = parse.getPathSegments();
        if (pathSegments == null || pathSegments.size() <= 1) {
            return;
        }
        String str2 = pathSegments.get(pathSegments.size() - 1);
        try {
            Context context = webView.getContext();
            context.startActivity(context.getPackageManager().getLaunchIntentForPackage(str2));
            a(acVar, (Uri) null);
        } catch (Exception e) {
            this.f344a.e("AdWebViewClient", "Threw Exception Trying to Launch App for Package: " + str2, e);
        }
    }

    void a(ac acVar) {
        ViewParent parent = acVar.getParent();
        if (parent instanceof AppLovinAdView) {
            ((AppLovinAdView) parent).loadNextAd();
        }
    }

    void b(ac acVar) {
        this.f345b.a();
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f345b.onAdHtmlLoaded(webView);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        a(webView, str);
        return true;
    }
}
