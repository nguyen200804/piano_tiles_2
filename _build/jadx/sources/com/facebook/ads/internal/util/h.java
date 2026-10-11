package com.facebook.ads.internal.util;

import android.annotation.TargetApi;
import android.os.Build;
import android.support.v4.view.MotionEventCompat;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.ads.AdSettings;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {
    public static String a() {
        String urlPrefix = AdSettings.getUrlPrefix();
        return TextUtils.isEmpty(urlPrefix) ? "https://www.facebook.com/" : String.format("https://www.%s.facebook.com", urlPrefix);
    }

    public static void a(WebView webView) {
        webView.loadUrl("about:blank");
        webView.clearCache(true);
    }

    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    public static void b(WebView webView) {
        WebSettings settings = webView.getSettings();
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(0);
        } else {
            try {
                WebSettings.class.getMethod("setMixedContentMode", new Class[0]).invoke(settings, 0);
            } catch (Exception e) {
            }
        }
    }
}
