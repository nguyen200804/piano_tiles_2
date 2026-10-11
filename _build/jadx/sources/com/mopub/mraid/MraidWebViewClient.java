package com.mopub.mraid;

import android.net.Uri;
import android.support.annotation.NonNull;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.mobileads.resource.MraidJavascript;
import java.io.ByteArrayInputStream;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MraidWebViewClient extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    private static final String f4574a = "javascript:" + MraidJavascript.JAVASCRIPT_SOURCE;

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(@NonNull WebView view, @NonNull String url) {
        return a(url) ? a() : super.shouldInterceptRequest(view, url);
    }

    boolean a(@NonNull String str) {
        return "mraid.js".equals(Uri.parse(str.toLowerCase(Locale.US)).getLastPathSegment());
    }

    private WebResourceResponse a() {
        return new WebResourceResponse("text/javascript", "UTF-8", new ByteArrayInputStream(f4574a.getBytes()));
    }
}
