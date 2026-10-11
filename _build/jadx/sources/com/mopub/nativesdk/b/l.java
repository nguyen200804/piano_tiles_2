package com.mopub.nativesdk.b;

import android.webkit.WebView;

/* compiled from: WEngine.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ h f4612a;

    l(h hVar) {
        this.f4612a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebView webView;
        o oVar;
        m mVar;
        WebView webView2;
        WebView webView3;
        webView = this.f4612a.c;
        if (webView != null) {
            webView2 = this.f4612a.c;
            webView2.stopLoading();
            webView3 = this.f4612a.c;
            webView3.destroy();
        }
        oVar = this.f4612a.e;
        oVar.a();
        mVar = this.f4612a.f;
        mVar.b();
    }
}
