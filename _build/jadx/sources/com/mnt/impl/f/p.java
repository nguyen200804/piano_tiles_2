package com.mnt.impl.f;

import android.webkit.WebView;
import com.mnt.impl.f.o;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ o.b f4034a;

    p(o.b bVar) {
        this.f4034a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebView webView;
        WebView webView2;
        webView = this.f4034a.f4030a;
        if (webView != null) {
            o.b bVar = this.f4034a;
            String str = com.mnt.impl.e.gx;
            bVar.a();
            webView2 = this.f4034a.f4030a;
            webView2.stopLoading();
        }
    }
}
