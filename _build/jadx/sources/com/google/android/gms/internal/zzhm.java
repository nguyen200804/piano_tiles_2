package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.AudienceNetworkActivity;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzhm implements zzhk {
    private final Context mContext;
    final Set<WebView> zzbwh = Collections.synchronizedSet(new HashSet());

    public zzhm(Context context) {
        this.mContext = context;
    }

    @Override // com.google.android.gms.internal.zzhk
    public void zza(String str, final String str2, final String str3) {
        zzkd.zzcv("Fetching assets for the given html");
        zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.internal.zzhm.1
            @Override // java.lang.Runnable
            public void run() {
                final WebView zzpl = zzhm.this.zzpl();
                zzpl.setWebViewClient(new WebViewClient() { // from class: com.google.android.gms.internal.zzhm.1.1
                    @Override // android.webkit.WebViewClient
                    public void onPageFinished(WebView webView, String str4) {
                        zzkd.zzcv("Loading assets have finished");
                        zzhm.this.zzbwh.remove(zzpl);
                    }

                    @Override // android.webkit.WebViewClient
                    public void onReceivedError(WebView webView, int i, String str4, String str5) {
                        zzkd.zzcx("Loading assets have failed.");
                        zzhm.this.zzbwh.remove(zzpl);
                    }
                });
                zzhm.this.zzbwh.add(zzpl);
                zzpl.loadDataWithBaseURL(str2, str3, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8", null);
                zzkd.zzcv("Fetching assets finished.");
            }
        });
    }

    public WebView zzpl() {
        WebView webView = new WebView(this.mContext);
        webView.getSettings().setJavaScriptEnabled(true);
        return webView;
    }
}
