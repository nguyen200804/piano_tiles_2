package com.mnt.impl.f;

import android.webkit.WebSettings;
import android.webkit.WebView;
import com.mnt.impl.f.o;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ o.c f4035a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ o.a f4036b;

    q(o.c cVar, o.a aVar) {
        this.f4035a = cVar;
        this.f4036b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4035a.f4033b == null) {
            this.f4035a.f4033b = new WebView(this.f4035a.f4032a);
            WebSettings settings = this.f4035a.f4033b.getSettings();
            settings.setAllowContentAccess(true);
            settings.setJavaScriptEnabled(true);
            settings.setUserAgentString(System.getProperty(com.mnt.impl.e.gt));
            this.f4035a.f4033b.removeJavascriptInterface(com.mnt.impl.e.gu);
            this.f4035a.f4033b.removeJavascriptInterface(com.mnt.impl.e.gv);
            this.f4035a.f4033b.removeJavascriptInterface(com.mnt.impl.e.gw);
        }
        this.f4035a.f4033b.stopLoading();
        this.f4035a.f4033b.setWebViewClient(new o.b(this.f4036b.f4029b, new r(this)));
        this.f4035a.f4033b.setWebChromeClient(new s());
        this.f4035a.f4033b.loadUrl(this.f4036b.f4028a);
    }
}
