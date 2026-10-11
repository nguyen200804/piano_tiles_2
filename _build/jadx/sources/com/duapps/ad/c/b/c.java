package com.duapps.ad.c.b;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.duapps.ad.base.h;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.zip.GZIPOutputStream;

/* compiled from: Utils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final byte[] f2118a = {48, 75, 97, 106, 68, 55, 65, 90, 99, 70, 50, 81, 110, 80, 114, 53, 102, 119, 105, 72, 82, 78, 121, 103, 109, 117, 112, 85, 84, 73, 88, 120, 54, 57, 66, 87, 98, 45, 104, 77, 67, 71, 74, 111, 95, 86, 56, 69, 115, 107, 122, 49, 89, 100, 118, 76, 51, 52, 108, 101, 116, 113, 83, 79};

    public static String a(String str) {
        int i = 0;
        for (int length = str.getBytes().length % 3; length > 0 && length < 3; length++) {
            str = str + "$";
        }
        byte[] bytes = str.getBytes();
        byte[] bArr = new byte[(bytes.length / 3) * 4];
        int i2 = 0;
        while (i2 < bytes.length) {
            bArr[i] = f2118a[(bytes[i2] & 252) >> 2];
            bArr[i + 1] = f2118a[((bytes[i2] & 3) << 4) + ((bytes[i2 + 1] & 240) >> 4)];
            bArr[i + 2] = f2118a[((bytes[i2 + 1] & 15) << 2) + ((bytes[i2 + 2] & 192) >> 6)];
            bArr[i + 3] = f2118a[bytes[i2 + 2] & 63];
            i2 += 3;
            i += 4;
        }
        return new String(bArr);
    }

    public static boolean a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static void b(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                launchIntentForPackage.setFlags(270532608);
                context.startActivity(launchIntentForPackage);
            }
        } catch (Exception e) {
        }
    }

    public static boolean a(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 11;
    }

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("your sid(" + i + ") is invalid, Please check it ");
        }
    }

    public static byte[] b(String str) {
        if (str == null || str.length() == 0) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes("UTF-8"));
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static String a(Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        StringBuilder sb = new StringBuilder("");
        sb.append(th.getMessage());
        sb.append('\n');
        for (StackTraceElement stackTraceElement : stackTrace) {
            sb.append(stackTraceElement.toString());
            sb.append('\n');
            sb.append(stackTraceElement.getClassName());
            sb.append(stackTraceElement.getLineNumber());
        }
        return sb.toString();
    }

    public static boolean b() {
        return c("com.facebook.ads.NativeAd");
    }

    public static boolean c() {
        return c("com.google.android.gms.ads.formats.NativeContentAd");
    }

    public static boolean c(String str) {
        return (TextUtils.isEmpty(str) || d(str) == null) ? false : true;
    }

    public static Class<?> d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static void a(Activity activity) {
        if (activity != null) {
            try {
                a(activity.findViewById(R.id.content));
                View decorView = activity.getWindow().getDecorView();
                if (decorView != null && Build.VERSION.SDK_INT < 16) {
                    decorView.setBackgroundDrawable(null);
                }
            } catch (Throwable th) {
            }
        }
    }

    public static void a(View view) {
        if (view != null) {
            try {
                Field declaredField = View.class.getDeclaredField("mParent");
                declaredField.setAccessible(true);
                declaredField.set(view, null);
            } catch (IllegalAccessException e) {
            } catch (IllegalArgumentException e2) {
            } catch (NoSuchFieldException e3) {
            } catch (NullPointerException e4) {
            } catch (SecurityException e5) {
            }
            try {
                view.setVisibility(8);
                view.destroyDrawingCache();
                if (view.getBackground() != null) {
                    view.setBackgroundDrawable(null);
                }
                view.setAnimation(null);
                view.setOnFocusChangeListener(null);
                view.setOnKeyListener(null);
                view.setOnLongClickListener(null);
                view.setOnTouchListener(null);
                if (!(view instanceof AdapterView)) {
                    view.setOnClickListener(null);
                }
                if (view instanceof AdapterView) {
                    AdapterView adapterView = (AdapterView) view;
                    adapterView.setAdapter(null);
                    adapterView.setAnimation(null);
                    adapterView.setOnItemClickListener(null);
                    adapterView.setOnItemSelectedListener(null);
                    adapterView.setOnItemLongClickListener(null);
                    return;
                }
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    int childCount = viewGroup.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        View childAt = viewGroup.getChildAt(i);
                        if (childAt != null) {
                            a(childAt);
                        }
                    }
                    viewGroup.removeAllViews();
                }
            } catch (Exception e6) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> b(android.content.Context r5) {
        /*
            r1 = 0
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.lang.String r0 = com.duapps.ad.base.m.r(r5)
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 != 0) goto L8f
            org.json.JSONArray r3 = new org.json.JSONArray     // Catch: org.json.JSONException -> L2c
            r3.<init>(r0)     // Catch: org.json.JSONException -> L2c
            int r0 = r3.length()     // Catch: org.json.JSONException -> L2c
            if (r0 <= 0) goto L8f
            r0 = 1
        L1c:
            int r4 = r3.length()     // Catch: org.json.JSONException -> L8d
            if (r1 >= r4) goto L35
            java.lang.String r4 = r3.optString(r1)     // Catch: org.json.JSONException -> L8d
            r2.add(r4)     // Catch: org.json.JSONException -> L8d
            int r1 = r1 + 1
            goto L1c
        L2c:
            r0 = move-exception
            r0 = r1
        L2e:
            java.lang.String r1 = "Utils"
            java.lang.String r3 = "Something unexpected happened when get priority browsers."
            com.duapps.ad.base.h.c(r1, r3)
        L35:
            if (r0 != 0) goto L8c
            java.lang.String r0 = "com.UCMobile"
            r2.add(r0)
            java.lang.String r0 = "com.UCMobile.intl"
            r2.add(r0)
            java.lang.String r0 = "com.uc.browser.en"
            r2.add(r0)
            java.lang.String r0 = "com.android.chrome"
            r2.add(r0)
            java.lang.String r0 = "com.opera.browser"
            r2.add(r0)
            java.lang.String r0 = "com.opera.mini.native"
            r2.add(r0)
            java.lang.String r0 = "com.baidu.browser.inter"
            r2.add(r0)
            java.lang.String r0 = "com.baidu.browser.inter.mini"
            r2.add(r0)
            java.lang.String r0 = "org.mozilla.firefox"
            r2.add(r0)
            java.lang.String r0 = "org.mozilla.firefox_beta"
            r2.add(r0)
            java.lang.String r0 = "cn.mozilla.firefox"
            r2.add(r0)
            java.lang.String r0 = "com.tencent.mtt.intl"
            r2.add(r0)
            java.lang.String r0 = "com.tencent.mtt"
            r2.add(r0)
            java.lang.String r0 = "com.qihoo.browser"
            r2.add(r0)
            java.lang.String r0 = "com.ksmobile.cb"
            r2.add(r0)
            java.lang.String r0 = "sogou.mobile.explorer"
            r2.add(r0)
            java.lang.String r0 = "mobi.mgeek.TunnyBrowser"
            r2.add(r0)
        L8c:
            return r2
        L8d:
            r1 = move-exception
            goto L2e
        L8f:
            r0 = r1
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: com.duapps.ad.c.b.c.b(android.content.Context):java.util.List");
    }

    public static int a(Context context, float f) {
        return (int) ((context.getResources().getDisplayMetrics().density * f) + 0.5f);
    }

    public static String e(String str) {
        return a(str, "mobulaRD", "postback");
    }

    public static String f(String str) {
        return a(str, "onlineSt", "stOnline");
    }

    private static String a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return new String(a.a(i(str), str2.getBytes("UTF-8"), a.a(str3.getBytes("UTF-8"), 0))).trim();
    }

    private static byte[] i(String str) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return bArr;
    }

    public static Method a(Class<?> cls, String str, Class<?>[] clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public static Method a(String str, String str2, Class<?>[] clsArr) {
        try {
            return a(Class.forName(str), str2, clsArr);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static Object a(Object obj, Method method, Object[] objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (Exception e) {
            return null;
        }
    }

    public static String c(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            h.c("HttpParamsHelper", "Failed to get the getAndroidId info.", e);
            return "";
        }
    }

    public static void a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT <= 8) {
            editor.commit();
        } else {
            editor.apply();
        }
    }

    public static String g(String str) {
        byte[] bytes = str.getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bytes);
            return b(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    private static String b(byte[] bArr) {
        String str = "";
        int i = 0;
        while (i < bArr.length) {
            String hexString = Integer.toHexString(bArr[i] & 255);
            if (hexString.length() == 1) {
                str = str + "0";
            }
            i++;
            str = str + hexString;
        }
        return str;
    }

    public static String h(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < digest.length; i++) {
                if (Integer.toHexString(digest[i] & 255).length() == 1) {
                    stringBuffer.append("0").append(Integer.toHexString(digest[i] & 255));
                } else {
                    stringBuffer.append(Integer.toHexString(digest[i] & 255));
                }
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e) {
            return "";
        } catch (NoSuchAlgorithmException e2) {
            return "";
        }
    }
}
