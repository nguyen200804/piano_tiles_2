package com.facebook.ads.internal.util;

import android.app.ActivityManager;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2879a = g.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static final Map<AdSize, com.facebook.ads.internal.f> f2880b = new HashMap();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public String f2881a;

        /* renamed from: b, reason: collision with root package name */
        public String f2882b;
        public boolean c;

        public a(String str, String str2, boolean z) {
            this.f2881a = str;
            this.f2882b = str2;
            this.c = z;
        }
    }

    static {
        f2880b.put(AdSize.INTERSTITIAL, com.facebook.ads.internal.f.WEBVIEW_INTERSTITIAL_UNKNOWN);
        f2880b.put(AdSize.RECTANGLE_HEIGHT_250, com.facebook.ads.internal.f.WEBVIEW_BANNER_250);
        f2880b.put(AdSize.BANNER_HEIGHT_90, com.facebook.ads.internal.f.WEBVIEW_BANNER_90);
        f2880b.put(AdSize.BANNER_HEIGHT_50, com.facebook.ads.internal.f.WEBVIEW_BANNER_50);
    }

    public static <P, PR, R> AsyncTask<P, PR, R> a(Executor executor, AsyncTask<P, PR, R> asyncTask, P... pArr) {
        if (Build.VERSION.SDK_INT >= 11) {
            asyncTask.executeOnExecutor(executor, pArr);
        } else {
            asyncTask.execute(pArr);
        }
        return asyncTask;
    }

    public static com.facebook.ads.internal.f a(AdSize adSize) {
        com.facebook.ads.internal.f fVar = f2880b.get(adSize);
        return fVar == null ? com.facebook.ads.internal.f.WEBVIEW_BANNER_LEGACY : fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0072 -> B:8:0x0036). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0074 -> B:8:0x0036). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.internal.util.g.a a(android.content.ContentResolver r7) {
        /*
            r6 = 0
            r0 = 3
            java.lang.String[] r2 = new java.lang.String[r0]     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L78
            r0 = 0
            java.lang.String r1 = "aid"
            r2[r0] = r1     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L78
            r0 = 1
            java.lang.String r1 = "androidid"
            r2[r0] = r1     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L78
            r0 = 2
            java.lang.String r1 = "limit_tracking"
            r2[r0] = r1     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L78
            java.lang.String r0 = "content://com.facebook.katana.provider.AttributionIdProvider"
            android.net.Uri r1 = android.net.Uri.parse(r0)     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L78
            r3 = 0
            r4 = 0
            r5 = 0
            r0 = r7
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L78
            if (r1 == 0) goto L29
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            if (r0 != 0) goto L37
        L29:
            com.facebook.ads.internal.util.g$a r0 = new com.facebook.ads.internal.util.g$a     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            r2 = 0
            r3 = 0
            r4 = 0
            r0.<init>(r2, r3, r4)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            if (r1 == 0) goto L36
            r1.close()
        L36:
            return r0
        L37:
            java.lang.String r0 = "aid"
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            java.lang.String r2 = r1.getString(r0)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            java.lang.String r0 = "androidid"
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            java.lang.String r3 = r1.getString(r0)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            java.lang.String r0 = "limit_tracking"
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            java.lang.String r0 = r1.getString(r0)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            com.facebook.ads.internal.util.g$a r0 = new com.facebook.ads.internal.util.g$a     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            boolean r4 = r4.booleanValue()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            r0.<init>(r2, r3, r4)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            if (r1 == 0) goto L36
            r1.close()
            goto L36
        L68:
            r0 = move-exception
            r1 = r6
        L6a:
            com.facebook.ads.internal.util.g$a r0 = new com.facebook.ads.internal.util.g$a     // Catch: java.lang.Throwable -> L80
            r2 = 0
            r3 = 0
            r4 = 0
            r0.<init>(r2, r3, r4)     // Catch: java.lang.Throwable -> L80
            if (r1 == 0) goto L36
            r1.close()
            goto L36
        L78:
            r0 = move-exception
            r1 = r6
        L7a:
            if (r1 == 0) goto L7f
            r1.close()
        L7f:
            throw r0
        L80:
            r0 = move-exception
            goto L7a
        L82:
            r0 = move-exception
            goto L6a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.util.g.a(android.content.ContentResolver):com.facebook.ads.internal.util.g$a");
    }

    public static Object a(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (Exception e) {
            return null;
        }
    }

    public static String a(double d) {
        return String.format(Locale.US, "%.3f", Double.valueOf(d));
    }

    public static String a(long j) {
        return a(j / 1000.0d);
    }

    public static String a(InputStream inputStream) {
        StringWriter stringWriter = new StringWriter();
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
        char[] cArr = new char[4096];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                String stringWriter2 = stringWriter.toString();
                stringWriter.close();
                inputStreamReader.close();
                return stringWriter2;
            }
            stringWriter.write(cArr, 0, read);
        }
    }

    public static String a(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                try {
                    jSONObject.put(entry.getKey(), entry.getValue());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return jSONObject.toString();
    }

    public static String a(JSONObject jSONObject, String str) {
        return a(jSONObject, str, (String) null);
    }

    public static String a(JSONObject jSONObject, String str, String str2) {
        String optString = jSONObject.optString(str, str2);
        if ("null".equals(optString)) {
            return null;
        }
        return optString;
    }

    public static String a(byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            String a2 = a(gZIPInputStream);
            gZIPInputStream.close();
            byteArrayInputStream.close();
            return a2;
        } catch (Exception e) {
            c.a(b.a(e, "Error decompressing data"));
            e.printStackTrace();
            return "";
        }
    }

    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public static Method a(String str, String str2, Class<?>... clsArr) {
        try {
            return a(Class.forName(str), str2, clsArr);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static void a(Context context, String str) {
        if (AdSettings.isTestMode(context)) {
            Log.d("FBAudienceNetworkLog", str + " (displayed for test ads only)");
        }
    }

    public static void a(DisplayMetrics displayMetrics, View view, AdSize adSize) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(((int) (((float) displayMetrics.widthPixels) / displayMetrics.density)) >= adSize.getWidth() ? displayMetrics.widthPixels : (int) Math.ceil(adSize.getWidth() * displayMetrics.density), (int) Math.ceil(adSize.getHeight() * displayMetrics.density));
        layoutParams.addRule(14, -1);
        view.setLayoutParams(layoutParams);
    }

    public static void a(aj ajVar, Context context, Uri uri, String str) {
        boolean z = com.facebook.ads.internal.view.a.d.a(uri.getScheme()) && uri.getHost().equals("play.google.com");
        if (!uri.getScheme().equals("market") && !z) {
            ajVar.a(context, uri, str);
            return;
        }
        try {
            ajVar.a(context, uri);
        } catch (t e) {
            ajVar.a(context, uri, str);
        }
    }

    public static boolean a(Context context) {
        try {
            ActivityManager.RunningTaskInfo runningTaskInfo = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(2).get(0);
            String str = runningTaskInfo.topActivity.getPackageName() + ".UnityPlayerActivity";
            Boolean valueOf = Boolean.valueOf(runningTaskInfo.topActivity.getClassName() == str || b(str));
            Log.d("IS_UNITY", Boolean.toString(valueOf.booleanValue()));
            return valueOf.booleanValue();
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean a(String str, String str2) {
        try {
            Class.forName(str + "." + str2);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static byte[] a(String str) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length());
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes());
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Exception e) {
            c.a(b.a(e, "Error compressing data"));
            e.printStackTrace();
            return new byte[0];
        }
    }

    public static boolean b(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }
}
