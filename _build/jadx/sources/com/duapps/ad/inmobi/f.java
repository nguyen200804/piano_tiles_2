package com.duapps.ad.inmobi;

import android.content.Context;
import android.os.Build;
import android.webkit.WebView;

/* compiled from: WebViewWrapper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public WebView f2180a;

    /* renamed from: b, reason: collision with root package name */
    public int f2181b;
    public boolean c = false;

    public f(Context context) {
        this.f2180a = new WebView(context);
        if (this.f2180a.getSettings() != null) {
            this.f2180a.getSettings().setJavaScriptEnabled(true);
            this.f2180a.getSettings().setCacheMode(2);
            this.f2180a.getSettings().setLoadsImagesAutomatically(true);
            this.f2180a.getSettings().setBlockNetworkImage(false);
            this.f2180a.getSettings().setAllowContentAccess(false);
        }
        if (Build.VERSION.SDK_INT >= 11) {
            this.f2180a.removeJavascriptInterface("searchBoxJavaBridge_");
            this.f2180a.removeJavascriptInterface("accessibility");
            this.f2180a.removeJavascriptInterface("accessibilityTraversal");
        }
        this.f2180a.setVisibility(0);
    }
}
