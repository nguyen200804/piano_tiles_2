package com.mnt.impl.dsp;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mnt.impl.f.h;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ DspHelper$BannerWebView f3970a;

    public a(DspHelper$BannerWebView dspHelper$BannerWebView) {
        this.f3970a = dspHelper$BannerWebView;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        b bVar;
        long j;
        c cVar;
        c cVar2;
        b bVar2;
        c cVar3;
        Context context;
        String str2;
        Context context2;
        bVar = this.f3970a.f3969b;
        if (bVar != null) {
            long currentTimeMillis = System.currentTimeMillis();
            j = this.f3970a.c;
            if (currentTimeMillis - j > 1000) {
                this.f3970a.c = System.currentTimeMillis();
                cVar = this.f3970a.f3968a;
                int i = cVar.d.c;
                cVar2 = this.f3970a.f3968a;
                String str3 = cVar2.d.d;
                if (i == 5) {
                    cVar3 = this.f3970a.f3968a;
                    if (!TextUtils.isEmpty(cVar3.d.d)) {
                        com.mnt.impl.e.b bVar3 = new com.mnt.impl.e.b(str3, str3, str, 0L, 0);
                        context = this.f3970a.d;
                        h.a(context, bVar3, null, true);
                        long currentTimeMillis2 = System.currentTimeMillis();
                        str2 = this.f3970a.e;
                        com.mnt.impl.e.a aVar = new com.mnt.impl.e.a(str3, currentTimeMillis2, null, str3, str2, str, 0L, -1, null, -1);
                        context2 = this.f3970a.d;
                        com.mnt.impl.b.a.a(context2).a(aVar);
                    }
                }
                bVar2 = this.f3970a.f3969b;
                bVar2.a(str);
                return true;
            }
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        c cVar;
        c cVar2;
        WebResourceResponse b2;
        cVar = this.f3970a.f3968a;
        if (cVar.f3972b != 1) {
            return super.shouldInterceptRequest(webView, str);
        }
        cVar2 = this.f3970a.f3968a;
        b2 = DspHelper$BannerWebView.b(str, cVar2.c);
        return b2;
    }
}
