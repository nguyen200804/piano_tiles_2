package com.facebook.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.ads.AdSettings;
import java.lang.reflect.Constructor;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class y {

    /* renamed from: a, reason: collision with root package name */
    private static String f2912a = null;

    /* renamed from: b, reason: collision with root package name */
    private static final Set<String> f2913b = new HashSet(1);
    private static final Set<String> c = new HashSet(2);

    public enum a {
        UNKNOWN(0),
        NONE(0),
        MOBILE_INTERNET(1),
        MOBILE_2G(2),
        MOBILE_3G(3),
        MOBILE_4G(4);

        public final int g;

        a(int i) {
            this.g = i;
        }
    }

    static {
        f2913b.add("1ww8E0AYsR2oX5lndk2hwp2Uosk=\n");
        c.add("toZ2GRnRjC9P5VVUdCpOrFH8lfQ=\n");
        c.add("3lKvjNsfmrn+WmfDhvr2iVh/yRs=\n");
        c.add("B08QtE4yLCdli4rptyqAEczXOeA=\n");
        c.add("XZXI6anZbdKf+taURdnyUH5ipgM=\n");
    }

    public static com.facebook.ads.internal.i.a.a a(Context context) {
        return a(context, null);
    }

    public static com.facebook.ads.internal.i.a.a a(Context context, com.facebook.ads.internal.f fVar) {
        com.facebook.ads.internal.i.a.a aVar = new com.facebook.ads.internal.i.a.a();
        a(context, aVar, fVar);
        return aVar;
    }

    private static String a(Context context, String str, String str2) {
        Class<?> cls = Class.forName(str);
        Constructor<?> declaredConstructor = cls.getDeclaredConstructor(Context.class, Class.forName(str2));
        declaredConstructor.setAccessible(true);
        try {
            return (String) cls.getMethod("getUserAgentString", new Class[0]).invoke(declaredConstructor.newInstance(context, null), new Object[0]);
        } finally {
            declaredConstructor.setAccessible(false);
        }
    }

    private static void a(Context context, com.facebook.ads.internal.i.a.a aVar, com.facebook.ads.internal.f fVar) {
        aVar.c(30000);
        aVar.b(3);
        aVar.a("user-agent", c(context, fVar) + " [FBAN/AudienceNetworkForAndroid;FBSN/Android;FBSV/" + com.facebook.ads.internal.f.j.f2723a + ";FBAB/" + com.facebook.ads.internal.f.j.d + ";FBAV/" + com.facebook.ads.internal.f.j.f + ";FBBV/" + com.facebook.ads.internal.f.j.g + ";FBVS/4.26.1;FBLC/" + Locale.getDefault().toString() + "]");
    }

    public static boolean a() {
        String urlPrefix = AdSettings.getUrlPrefix();
        return !TextUtils.isEmpty(urlPrefix) && urlPrefix.endsWith(".sb");
    }

    public static com.facebook.ads.internal.i.a.a b() {
        return a(null);
    }

    public static com.facebook.ads.internal.i.a.a b(Context context) {
        return b(context, null);
    }

    public static com.facebook.ads.internal.i.a.a b(Context context, com.facebook.ads.internal.f fVar) {
        com.facebook.ads.internal.i.a.a aVar = new com.facebook.ads.internal.i.a.a();
        a(context, aVar, fVar);
        if (!a()) {
            aVar.b(c);
            aVar.a(f2913b);
        }
        return aVar;
    }

    public static a c(Context context) {
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            return a.UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return a.NONE;
        }
        if (activeNetworkInfo.getType() != 0) {
            return a.MOBILE_INTERNET;
        }
        switch (activeNetworkInfo.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return a.MOBILE_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return a.MOBILE_3G;
            case 13:
                return a.MOBILE_4G;
            default:
                return a.UNKNOWN;
        }
    }

    private static String c(Context context, com.facebook.ads.internal.f fVar) {
        if (context == null) {
            return "Unknown";
        }
        if (fVar == com.facebook.ads.internal.f.NATIVE_250 || fVar == com.facebook.ads.internal.f.NATIVE_UNKNOWN || fVar == null) {
            return System.getProperty("http.agent");
        }
        if (f2912a != null) {
            return f2912a;
        }
        synchronized (y.class) {
            if (f2912a != null) {
                return f2912a;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                try {
                    f2912a = d(context);
                    return f2912a;
                } catch (Exception e) {
                }
            }
            try {
                f2912a = a(context, "android.webkit.WebSettings", "android.webkit.WebView");
            } catch (Exception e2) {
                try {
                    f2912a = a(context, "android.webkit.WebSettingsClassic", "android.webkit.WebViewClassic");
                } catch (Exception e3) {
                    WebView webView = new WebView(context.getApplicationContext());
                    f2912a = webView.getSettings().getUserAgentString();
                    webView.destroy();
                }
            }
            return f2912a;
        }
    }

    @TargetApi(17)
    private static String d(Context context) {
        return WebSettings.getDefaultUserAgent(context);
    }
}
