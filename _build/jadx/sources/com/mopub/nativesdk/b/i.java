package com.mopub.nativesdk.b;

import android.webkit.WebView;

/* compiled from: WEngine.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ String f4608a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ String f4609b;
    private /* synthetic */ h c;

    i(h hVar, String str, String str2) {
        this.c = hVar;
        this.f4608a = str;
        this.f4609b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar;
        WebView webView;
        m mVar;
        o oVar;
        long j;
        WebView webView2;
        m mVar2;
        aVar = this.c.d;
        if (aVar.c) {
            mVar2 = this.c.f;
            mVar2.b();
            return;
        }
        h.a(this.c, this.f4608a);
        webView = this.c.c;
        if (webView != null) {
            oVar = this.c.e;
            n nVar = new n(this.c, (byte) 0);
            j = h.f4606a;
            oVar.a(nVar, j);
            webView2 = this.c.c;
            webView2.loadUrl(this.f4609b);
            return;
        }
        mVar = this.c.f;
        mVar.b();
    }
}
