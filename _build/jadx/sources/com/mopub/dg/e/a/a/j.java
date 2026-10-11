package com.mopub.dg.e.a.a;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class j extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f4318a;

    j(i iVar) {
        this.f4318a = iVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        if (!this.f4318a.g) {
            this.f4318a.f = true;
            boolean z = this.f4318a.e;
        }
        this.f4318a.g = false;
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.f4318a.f = false;
        this.f4318a.i++;
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0130  */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean shouldOverrideUrlLoading(android.webkit.WebView r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.dg.e.a.a.j.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
    }
}
