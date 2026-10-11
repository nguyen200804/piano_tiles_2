package com.cmplay.base.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.cmplay.base.util.o;
import com.mopub.common.Constants;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MarketUtil.java */
@SuppressLint({"NewApi"})
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static t f1251a = null;

    /* renamed from: b, reason: collision with root package name */
    private static String f1252b = null;

    public static boolean a(Context context, Intent intent) {
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static void a(Context context, String str) {
        try {
            if (context.getPackageManager().getPackageInfo("com.facebook.katana", 0).versionCode >= 3002850) {
                a(context, new Intent("android.intent.action.VIEW", Uri.parse("fb://facewebmodal/f?href=" + str)));
            } else {
                a(context, new Intent("android.intent.action.VIEW", Uri.parse(str)));
            }
        } catch (PackageManager.NameNotFoundException e) {
            a(context, new Intent("android.intent.action.VIEW", Uri.parse(str)));
        }
    }

    public static boolean b(Context context, String str) {
        boolean z = false;
        if (str == null || str.length() == 0) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setPackage("com.android.vending");
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            } else {
                intent.addFlags(524288);
            }
            intent.setData(Uri.parse(str));
            z = a(context, intent);
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return z;
        }
    }

    public static void c(Context context, String str) {
        boolean z = false;
        if (n.a(context) && !TextUtils.isEmpty(str)) {
            z = b(context, str);
        }
        if (!z) {
            d(context, str);
        }
    }

    public static void d(Context context, String str) {
        boolean z = true;
        if (!TextUtils.isEmpty(str)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(str));
            if (n.a(context, "com.android.browser")) {
                intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
            }
            try {
                context.startActivity(intent);
            } catch (Exception e) {
                z = false;
            }
            if (!z) {
                intent = new Intent("android.intent.action.VIEW");
                intent.setFlags(268435456);
                intent.setData(Uri.parse(str));
            }
            try {
                context.startActivity(intent);
            } catch (Exception e2) {
            }
        }
    }

    public static boolean a(Context context, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str));
            if (!TextUtils.isEmpty(str2)) {
                intent.setPackage(str2);
            }
            intent.addFlags(268435456);
            return a(context, intent);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean a(Context context, ArrayList<b> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return false;
        }
        Iterator<b> it = arrayList.iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (next != null && a(context, next.f1212b, next.f1211a)) {
                g.a("internal_push", "goto market  Open appPkg:" + next.f1212b + "  at marketPkg：" + next.f1211a);
                return true;
            }
        }
        return false;
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("https://play.google.com") || str.startsWith("http://play.google.com") || str.startsWith("market:");
    }

    public static boolean a(final Context context, String str, final String str2, t tVar) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        g.a("internal_push_url", "smartGo2GooglePlay  url:" + str + "  defaultJumpUrl:" + str2);
        f1251a = tVar;
        if (n.a(context)) {
            if (a(str)) {
                g.a("internal_push_url", "smartGo2GooglePlay  GP打开");
                c(context, str);
                a(true);
                return false;
            }
            o oVar = new o(context);
            a.a(context, Constants.TEN_SECONDS_MILLIS, false, true);
            oVar.a(new o.b() { // from class: com.cmplay.base.util.k.1
                @Override // com.cmplay.base.util.o.b
                public void a(String str3) {
                    boolean z;
                    g.a("internal_push_url", "smartGo2GooglePlay  GetGooglePlayUrlFinished  url重定向后:" + str3);
                    if (a.a()) {
                        a.a(context);
                        if (k.a(str3) && k.b(context, str3)) {
                            z = true;
                            g.a("internal_push_url", "smartGo2GooglePlay  GetGooglePlayUrlFinished  GP打开 成功");
                        } else {
                            if (!TextUtils.isEmpty(str2)) {
                                g.a("internal_push_url", "smartGo2GooglePlay  GetGooglePlayUrlFinished  GP失败   openBrowserByUrl by defaultJumpUrl");
                                str3 = str2;
                            } else {
                                g.a("internal_push_url", "smartGo2GooglePlay  GetGooglePlayUrlFinished  GP失败   openBrowserByUrl by url");
                            }
                            k.d(context, str3);
                            z = false;
                        }
                        k.a(z);
                    }
                }
            });
            oVar.b(str);
            return true;
        }
        if (!TextUtils.isEmpty(str2)) {
            g.a("internal_push_url", "smartGo2GooglePlay  没有GP  openBrowserByUrl by defaultJumpUrl");
        } else {
            g.a("internal_push_url", "smartGo2GooglePlay  没有GP  openBrowserByUrl by url");
            str2 = str;
        }
        d(context, str2);
        return false;
    }

    static void a(boolean z) {
        if (f1251a != null) {
            f1251a.a(z);
        }
    }

    public static String a(Context context) {
        if (f1252b == null) {
            f1252b = context.getSharedPreferences("misc", 0).getString("user-agent", null);
        }
        return f1252b;
    }

    public static void e(Context context, String str) {
        if (str != null) {
            context.getSharedPreferences("misc", 0).edit().putString("user-agent", str).commit();
        }
    }

    @SuppressLint({"NewApi"})
    public static void b(Context context) {
        if (f1252b == null) {
            try {
                f1252b = a(context);
                if (TextUtils.isEmpty(f1252b)) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        f1252b = WebSettings.getDefaultUserAgent(context);
                    } else {
                        try {
                            f1252b = b(context, "android.webkit.WebSettings", "android.webkit.WebView");
                        } catch (Exception e) {
                            try {
                                f1252b = b(context, "android.webkit.WebSettingsClassic", "android.webkit.WebViewClassic");
                            } catch (Exception e2) {
                                WebView webView = new WebView(context);
                                f1252b = webView.getSettings().getUserAgentString();
                                webView.destroy();
                            }
                        }
                    }
                    e(context, f1252b);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    private static String b(Context context, String str, String str2) throws Exception {
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
