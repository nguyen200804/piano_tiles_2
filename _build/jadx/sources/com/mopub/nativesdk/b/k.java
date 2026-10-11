package com.mopub.nativesdk.b;

import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* compiled from: WEngine.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class k extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ h f4611a;

    k(h hVar) {
        this.f4611a = hVar;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        o oVar;
        o oVar2;
        long j;
        if (i == 100) {
            new StringBuilder("onPageFinished：").append(webView.getUrl());
            oVar = this.f4611a.e;
            oVar.a();
            oVar2 = this.f4611a.e;
            n nVar = new n(this.f4611a, (byte) 0);
            j = h.f4606a;
            oVar2.a(nVar, j);
        }
    }
}
