package com.mopub.nativesdk.b;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.nativesdk.d.p;

/* compiled from: WEngine.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class j extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ h f4610a;

    j(h hVar) {
        this.f4610a = hVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        o oVar;
        o oVar2;
        long j;
        String str2;
        String str3;
        new StringBuilder("onPageStarted: ").append(str);
        oVar = this.f4610a.e;
        oVar.a();
        oVar2 = this.f4610a.e;
        n nVar = new n(this.f4610a, (byte) 0);
        j = h.f4606a;
        oVar2.a(nVar, j);
        str2 = this.f4610a.g;
        if (TextUtils.isEmpty(str2)) {
            this.f4610a.g = str;
        }
        str3 = this.f4610a.g;
        if (!TextUtils.equals(str, str3)) {
            this.f4610a.g = str;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        new StringBuilder("onLoadResource: ").append(str);
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        o oVar;
        o oVar2;
        long j;
        new StringBuilder("shouldOverrideUrlLoading: ").append(str);
        oVar = this.f4610a.e;
        oVar.a();
        if (p.e(str) || p.d(str) || p.g(str)) {
            if (!p.b(str)) {
                oVar2 = this.f4610a.e;
                n nVar = new n(this.f4610a, (byte) 0);
                j = h.f4606a;
                oVar2.a(nVar, j);
                return false;
            }
            h.a(this.f4610a, str, new RuntimeException("success"));
            return true;
        }
        if (p.b(str)) {
            h.a(this.f4610a, str, new RuntimeException("success"));
            return true;
        }
        h.a(this.f4610a, str, new RuntimeException("unknow"));
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        o oVar;
        oVar = this.f4610a.e;
        oVar.a();
        new StringBuilder("onReceivedError: errno = ").append(i).append(", url: ").append(webView.getUrl()).append(",\n onReceivedError：, description: ").append(str).append(", failingUrl: ").append(str2);
        h.a(this.f4610a, null, new RuntimeException("onReceivedError: " + i + ", " + str + ", failingUrl" + str2));
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslErrorHandler != null) {
            sslErrorHandler.proceed();
        }
    }
}
