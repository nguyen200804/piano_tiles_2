package com.mnt.impl.dsp;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.mnt.impl.e;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DspHelper$BannerWebView extends WebView {

    /* renamed from: a, reason: collision with root package name */
    public c f3968a;

    /* renamed from: b, reason: collision with root package name */
    private b f3969b;
    private long c;
    private Context d;
    private String e;

    public DspHelper$BannerWebView(Context context) {
        super(context);
    }

    public DspHelper$BannerWebView(Context context, c cVar, String str) {
        super(context);
        this.d = context;
        this.e = str;
        this.f3968a = cVar;
    }

    public void setOnWebViewClickListener(b bVar) {
        this.f3969b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static WebResourceResponse b(String str, String str2) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            if (!TextUtils.isEmpty(str2)) {
                httpURLConnection.setRequestProperty(e.an, str2);
            }
            httpURLConnection.setRequestMethod(e.ao);
            return new WebResourceResponse(httpURLConnection.getContentType(), httpURLConnection.getContentEncoding(), httpURLConnection.getInputStream());
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
