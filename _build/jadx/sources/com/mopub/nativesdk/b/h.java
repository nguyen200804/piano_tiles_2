package com.mopub.nativesdk.b;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.ads.AudienceNetworkActivity;
import com.mopub.nativesdk.d.s;

/* compiled from: WEngine.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    private static long f4606a = 15000;

    /* renamed from: b, reason: collision with root package name */
    private Context f4607b;
    private WebView c;
    private a d;
    private o e;
    private m f;
    private String g;

    public h(Context context) {
        if (context == null) {
            throw new RuntimeException("context == null");
        }
        this.f4607b = context;
        this.d = new a();
        this.e = new o((byte) 0);
        this.f = new m();
    }

    public final a a(String str, String str2) {
        new StringBuilder("url=").append(str);
        this.d.c = false;
        this.d.f4595a = str;
        this.d.f4596b = null;
        if (TextUtils.isEmpty(str)) {
            this.d.f4596b = new RuntimeException("TextUtils.isEmpty(url) || TextUtils.isEmpty(html): " + str);
            return this.d;
        }
        if (this.d.c) {
            this.f.b();
            return this.d;
        }
        s.b(new i(this, str2, str));
        this.f.a();
        return this.d;
    }

    static /* synthetic */ void a(h hVar, String str) {
        try {
            hVar.c = new WebView(hVar.f4607b);
            WebSettings settings = hVar.c.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setBlockNetworkImage(true);
            if (!TextUtils.isEmpty(str)) {
                settings.setUserAgentString(str);
            }
            settings.setCacheMode(2);
            settings.setDefaultTextEncodingName(AudienceNetworkActivity.WEBVIEW_ENCODING);
            hVar.c.setVisibility(8);
            hVar.c.setWebViewClient(new j(hVar));
            hVar.c.setWebChromeClient(new k(hVar));
        } catch (Throwable th) {
            th.getMessage();
            synchronized (hVar.d) {
                hVar.d.c = true;
                hVar.d.f4596b = th;
            }
        }
    }

    static /* synthetic */ void a(h hVar, String str, Throwable th) {
        new StringBuilder("onFinish：").append(str);
        synchronized (hVar.d) {
            if (!hVar.d.c) {
                hVar.d.c = true;
                if (!TextUtils.isEmpty(str)) {
                    hVar.d.f4595a = str;
                }
                hVar.d.f4596b = th;
                s.b(new l(hVar));
            }
        }
    }
}
