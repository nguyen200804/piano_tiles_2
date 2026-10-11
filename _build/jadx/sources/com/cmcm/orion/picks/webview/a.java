package com.cmcm.orion.picks.webview;

import android.content.Context;
import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.lang.reflect.Constructor;

/* compiled from: AdWebViewUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static String f1045a = null;

    public static String a(Context context) {
        if (f1045a == null) {
            if (Build.VERSION.SDK_INT >= 17) {
                try {
                    f1045a = WebSettings.getDefaultUserAgent(context);
                } catch (Exception e) {
                }
            }
            f1045a = b(context);
        }
        return f1045a;
    }

    private static String b(Context context) {
        try {
            return a(context, "android.webkit.WebSettings", "android.webkit.WebView");
        } catch (Exception e) {
            try {
                return a(context, "android.webkit.WebSettingsClassic", "android.webkit.WebViewClassic");
            } catch (Exception e2) {
                WebView webView = new WebView(context.getApplicationContext());
                String userAgentString = webView.getSettings().getUserAgentString();
                webView.destroy();
                return userAgentString;
            }
        }
    }

    private static String a(Context context, String str, String str2) throws Exception {
        Class<?> cls = Class.forName(str);
        Constructor<?> declaredConstructor = cls.getDeclaredConstructor(Context.class, Class.forName(str2));
        declaredConstructor.setAccessible(true);
        try {
            return (String) cls.getMethod("getUserAgentString", new Class[0]).invoke(declaredConstructor.newInstance(context, null), new Object[0]);
        } finally {
            declaredConstructor.setAccessible(false);
        }
    }
}
