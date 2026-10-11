package com.cmcm.orion.picks.webview;

import android.content.Intent;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cmcm.orion.adsdk.R;
import java.net.URISyntaxException;

/* compiled from: BrowserWebViewClient.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class b extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    private a f1046a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private PicksBrowser f1047b;

    /* compiled from: BrowserWebViewClient.java */
    interface a {
        void a();
    }

    public b(@NonNull PicksBrowser picksBrowser) {
        this.f1047b = picksBrowser;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, String url) {
        if (TextUtils.isEmpty(url)) {
            return false;
        }
        if (url.startsWith("market:")) {
            com.cmcm.orion.utils.b.a(url, view.getContext(), (com.cmcm.orion.picks.a.a.a) null);
            if (this.f1046a != null) {
                this.f1046a.a();
            }
        } else if (url.startsWith("intent:")) {
            try {
                Intent parseUri = Intent.parseUri(url, 1);
                if (this.f1047b.getPackageManager().resolveActivity(parseUri, 0) == null) {
                    String stringExtra = parseUri.getStringExtra("browser_fallback_url");
                    if (stringExtra.startsWith("market:")) {
                        com.cmcm.orion.utils.b.a(stringExtra, view.getContext(), (com.cmcm.orion.picks.a.a.a) null);
                        if (this.f1046a != null) {
                            this.f1046a.a();
                        }
                    }
                } else {
                    this.f1047b.startActivity(parseUri);
                    this.f1047b.finish();
                }
            } catch (URISyntaxException e) {
                e.printStackTrace();
            }
        } else {
            this.f1047b.c().loadUrl(url);
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView view, String url, Bitmap favicon) {
        super.onPageStarted(view, url, favicon);
        this.f1047b.b().setImageDrawable(this.f1047b.getResources().getDrawable(R.drawable.browser_unright_arrow));
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView view, String url) {
        super.onPageFinished(view, url);
        this.f1047b.a().setImageDrawable(view.canGoBack() ? this.f1047b.getResources().getDrawable(R.drawable.browser_left_arrow) : this.f1047b.getResources().getDrawable(R.drawable.browser_unleft_arrow));
        this.f1047b.b().setImageDrawable(view.canGoForward() ? this.f1047b.getResources().getDrawable(R.drawable.browser_right_arrow) : this.f1047b.getResources().getDrawable(R.drawable.browser_unright_arrow));
    }

    public final void a(a aVar) {
        this.f1046a = aVar;
    }
}
