package com.mnt.impl.b;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.mnt.Ad;
import com.mnt.LogUtil;
import com.mnt.MntActivity;
import com.mnt.MntBroadcastReceiver;
import com.mnt.impl.e.g;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Constructor;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public static final String f3952a;

    /* renamed from: b, reason: collision with root package name */
    private static String f3953b;
    private static String c;
    private static String d;
    private static final String e;
    private static final Map<String, Long> f;
    private static String g;
    private static String h;

    static {
        k.class.getName();
        f3952a = com.mnt.impl.e.ob;
        f3953b = com.mnt.impl.e.oc;
        c = com.mnt.impl.e.od;
        d = com.mnt.impl.e.oe;
        e = com.mnt.impl.e.of;
        f = new HashMap();
        int i = Build.VERSION.SDK_INT;
    }

    public static Uri.Builder a(Context context, String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            if (!TextUtils.isEmpty(str2) && str.indexOf(com.mnt.impl.e.og) < 0) {
                buildUpon.appendQueryParameter(com.mnt.impl.e.oh, str2);
            }
            if (!TextUtils.isEmpty(str3) && str.indexOf(com.mnt.impl.e.oi) < 0) {
                buildUpon.appendQueryParameter(com.mnt.impl.e.oj, str3);
            }
            if (!TextUtils.isEmpty(str4) && str.indexOf(com.mnt.impl.e.ok) < 0) {
                buildUpon.appendQueryParameter(com.mnt.impl.e.ol, str4);
            }
            return buildUpon;
        } catch (Throwable th) {
            a(context, str, th.getMessage());
            return null;
        }
    }

    public static boolean a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 1024);
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(f3953b) || str.startsWith(c) || str.startsWith(d);
    }

    public static boolean a(Context context, String str, boolean z) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        if (a(context, f3952a)) {
            try {
                if (!str.startsWith(f3953b)) {
                    if (str.startsWith(c)) {
                        str = str.substring(str.indexOf(com.mnt.impl.e.om) + com.mnt.impl.e.on.length());
                    } else if (str.startsWith(d)) {
                        str = str.substring(str.indexOf(com.mnt.impl.e.oo) + com.mnt.impl.e.op.length());
                    } else if (str.startsWith(com.mnt.impl.e.oq) || str.startsWith(com.mnt.impl.e.or)) {
                        return b(context, str);
                    }
                    str = f3953b + str;
                }
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent.setPackage(f3952a);
                if (context instanceof Activity) {
                    intent.addFlags(1073741824);
                } else {
                    intent.addFlags(268435456);
                    intent.addFlags(32768);
                    intent.addFlags(524288);
                }
                context.startActivity(intent);
                return true;
            } catch (Exception e2) {
                b(context, str);
                return false;
            }
        }
        if (z) {
            return b(context, str);
        }
        return false;
    }

    public static boolean b(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        if (!str.startsWith(c) && !str.startsWith(d) && (str.startsWith(f3953b) || (!str.startsWith(com.mnt.impl.e.os) && !str.startsWith(com.mnt.impl.e.ot)))) {
            if (str.startsWith(f3953b)) {
                str = str.replace(f3953b, com.mnt.impl.e.ou);
            }
            str = d + str;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            if (queryIntentActivities != null && queryIntentActivities.size() > 0) {
                ActivityInfo activityInfo = queryIntentActivities.get(0) != null ? queryIntentActivities.get(0).activityInfo : null;
                String str2 = activityInfo != null ? activityInfo.packageName : null;
                String str3 = activityInfo != null ? activityInfo.name : null;
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    intent.setClassName(str2, str3);
                }
            }
            if (context instanceof Activity) {
                intent.addFlags(1073741824);
            } else {
                intent.addFlags(268435456);
                intent.addFlags(32768);
            }
            context.startActivity(intent);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean a(Context context) {
        return a(context, f3952a);
    }

    public static List<Ad> a(boolean z, Context context, List<g.a> list, int i, String str, String str2, g.c cVar, String str3) {
        boolean z2;
        if (list == null || list.size() <= 0) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= list.size()) {
                break;
            }
            g.a aVar = list.get(i3);
            g.b bVar = aVar.f3993a;
            if (bVar != null) {
                if (z) {
                    a a2 = a.a(context);
                    String str4 = bVar.f3995a;
                    if (a.f3931a.containsKey(str4) || h.c(a2.f3932b).contains(str4)) {
                    }
                }
                if (!a(context, bVar.e)) {
                    if (z && !TextUtils.isEmpty(str)) {
                        if (aVar.f3994b != null && aVar.f3994b.size() > 0) {
                            Iterator<Map.Entry<String, List<String>>> it = aVar.f3994b.entrySet().iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    z2 = false;
                                    break;
                                }
                                Map.Entry<String, List<String>> next = it.next();
                                if (str.contains(next.getKey()) && next.getValue() != null && next.getValue().size() > 0) {
                                    z2 = true;
                                    break;
                                }
                            }
                            if (!z2) {
                            }
                        }
                    }
                    linkedList.add(new com.mnt.impl.e.c(bVar.f3995a, bVar.e, bVar.f, bVar.g, bVar.h, bVar.k, bVar.l, bVar.m, bVar.i, bVar.j, bVar.f3996b, cVar.f3998b, aVar.c, bVar.c, aVar.f, bVar.d, bVar.n, aVar.f3994b, aVar.d, aVar.e, str2, str3, cVar.f3997a, aVar.g, bVar.p, bVar.q, bVar.o));
                }
            }
            i2 = i3 + 1;
        }
        return new ArrayList(z ? a(context, linkedList, i) : linkedList);
    }

    private static synchronized List<com.mnt.impl.e.c> a(Context context, List<com.mnt.impl.e.c> list, int i) {
        synchronized (k.class) {
            if (list.size() > i) {
                Collections.sort(list, new l());
                StringBuilder sb = new StringBuilder();
                for (com.mnt.impl.e.c cVar : list) {
                    sb.append(cVar.g).append(com.mnt.impl.e.ov).append(cVar.getCampId()).append(com.mnt.impl.e.ov).append(cVar.getName()).append(com.mnt.impl.e.ow);
                }
                int p = h.p(context);
                if (p >= list.size()) {
                    p = 0;
                }
                ArrayList<com.mnt.impl.e.c> arrayList = new ArrayList();
                for (int i2 = 0; i2 < i; i2++) {
                    arrayList.add(list.get(p));
                    p++;
                    if (p >= list.size()) {
                        p = 0;
                    }
                }
                h.a(context, p);
                StringBuilder sb2 = new StringBuilder();
                for (com.mnt.impl.e.c cVar2 : arrayList) {
                    sb2.append(cVar2.g).append(com.mnt.impl.e.ox).append(cVar2.getCampId()).append(com.mnt.impl.e.ox).append(cVar2.getName()).append(com.mnt.impl.e.oy);
                }
                list = arrayList;
            }
        }
        return list;
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.replaceFirst(com.mnt.impl.e.oD, com.mnt.impl.e.oE).replaceFirst(com.mnt.impl.e.oF, com.mnt.impl.e.oE);
    }

    public static int[] b(Context context) {
        new DisplayMetrics();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return new int[]{displayMetrics.widthPixels, displayMetrics.heightPixels};
    }

    public static int c(Context context) {
        int i = context.getResources().getConfiguration().orientation;
        if (i == 1) {
            return 1;
        }
        return i == 2 ? 2 : 0;
    }

    public static int a(Context context, float f2) {
        return (int) ((context.getResources().getDisplayMetrics().density * f2) + 0.5f);
    }

    public static boolean a(Context context, Class<? extends Activity> cls) {
        try {
            for (ActivityInfo activityInfo : context.getPackageManager().getPackageInfo(context.getPackageName(), 1).activities) {
                if (activityInfo.name.equals(cls.getName())) {
                    return true;
                }
            }
        } catch (Exception e2) {
        }
        return false;
    }

    private static String a(String str, String str2) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(com.mnt.impl.e.oG);
            if (!TextUtils.isEmpty(str2)) {
                messageDigest.update(str.getBytes(str2));
            } else {
                messageDigest.update(str.getBytes());
            }
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < digest.length; i++) {
                String hexString = Integer.toHexString(digest[i]);
                if (hexString.length() > 2) {
                    hexString = hexString.substring(hexString.length() - 2);
                } else if (hexString.length() != 2) {
                    int length = 2 - hexString.length();
                    StringBuilder sb2 = new StringBuilder(hexString);
                    char[] cArr = new char[length];
                    Arrays.fill(cArr, '0');
                    sb2.insert(0, cArr);
                    hexString = sb2.toString();
                }
                sb.append(hexString);
                if (i < digest.length - 1) {
                    sb.append("");
                }
            }
            return sb.toString();
        } catch (Exception e2) {
            return "";
        }
    }

    public static final String c(String str) {
        return a(str, com.mnt.impl.e.oH);
    }

    public static void a(Context context, String str, String str2) {
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                Uri.Builder buildUpon = Uri.parse(e).buildUpon();
                buildUpon.appendQueryParameter(com.mnt.impl.e.oI, j.f3950a);
                buildUpon.appendQueryParameter(com.mnt.impl.e.oJ, com.mnt.a.a.f(context));
                buildUpon.appendQueryParameter(com.mnt.impl.e.oK, com.mnt.a.a.a(context));
                buildUpon.appendQueryParameter(com.mnt.impl.e.oL, com.mnt.a.a.b(context));
                buildUpon.appendQueryParameter(com.mnt.impl.e.oM, com.mnt.impl.e.oN);
                buildUpon.appendQueryParameter(com.mnt.impl.e.oO, str);
                buildUpon.appendQueryParameter(com.mnt.impl.e.oP, str2);
                new com.mnt.impl.f.e().a(buildUpon.toString());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static String a(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        for (int i : iArr) {
            sb.append((char) i);
        }
        return sb.toString();
    }

    public static boolean d(String str) {
        try {
            return new File(str).exists();
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean c(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 128);
            if ((packageInfo.applicationInfo.flags & 1) <= 0) {
                return false;
            }
            return (packageInfo.applicationInfo.flags & 128) == 0;
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean e(String str) {
        Long l = f.get(str);
        f.put(str, Long.valueOf(System.currentTimeMillis()));
        return l != null && System.currentTimeMillis() - l.longValue() < 86400000;
    }

    public static boolean g(String str) {
        return str.startsWith(com.mnt.impl.e.oR);
    }

    public static String a(long j) {
        try {
            Date date = new Date(j);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(com.mnt.impl.e.oS, Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(com.mnt.impl.e.oT));
            return simpleDateFormat.format(date);
        } catch (Exception e2) {
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0021 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(byte[] r3) {
        /*
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r0.<init>()
            r2 = 0
            java.util.zip.GZIPOutputStream r1 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Exception -> L1b java.lang.Throwable -> L29
            r1.<init>(r0)     // Catch: java.lang.Exception -> L1b java.lang.Throwable -> L29
            r1.write(r3)     // Catch: java.lang.Throwable -> L1e java.lang.Exception -> L2c
            r1.flush()     // Catch: java.lang.Throwable -> L1e java.lang.Exception -> L2c
            r1.close()     // Catch: java.lang.Exception -> L25
        L14:
            java.lang.String r1 = com.mnt.impl.e.oU
            java.lang.String r0 = r0.toString(r1)
            return r0
        L1b:
            r0 = move-exception
            r1 = r2
        L1d:
            throw r0     // Catch: java.lang.Throwable -> L1e
        L1e:
            r0 = move-exception
        L1f:
            if (r1 == 0) goto L24
            r1.close()     // Catch: java.lang.Exception -> L27
        L24:
            throw r0
        L25:
            r1 = move-exception
            goto L14
        L27:
            r1 = move-exception
            goto L24
        L29:
            r0 = move-exception
            r1 = r2
            goto L1f
        L2c:
            r0 = move-exception
            goto L1d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mnt.impl.b.k.a(byte[]):java.lang.String");
    }

    public static String h(String str) {
        if (str != null && str.length() != 0) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                try {
                    GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(str.getBytes(com.mnt.impl.e.oV)));
                    byte[] bArr = new byte[256];
                    while (true) {
                        int read = gZIPInputStream.read(bArr);
                        if (read >= 0) {
                            byteArrayOutputStream.write(bArr, 0, read);
                        } else {
                            try {
                                break;
                            } catch (Exception e2) {
                            }
                        }
                    }
                    byteArrayOutputStream.close();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                return byteArrayOutputStream.toString();
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (Exception e4) {
                }
            }
        }
        return str;
    }

    public static String d(Context context) {
        if (!TextUtils.isEmpty(g)) {
            return g;
        }
        synchronized (com.mnt.a.a.class) {
            if (!TextUtils.isEmpty(g)) {
                return g;
            }
            if (context == null) {
                return "";
            }
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(com.mnt.impl.e.oW);
                File file = new File(context.getApplicationInfo().sourceDir);
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[4096];
                long length = file.length();
                long j = 0;
                while (j < length && !Thread.interrupted()) {
                    int read = fileInputStream.read(bArr);
                    j += read;
                    messageDigest.update(bArr, 0, read);
                }
                String b2 = b(messageDigest.digest());
                if (b2 != null) {
                    String upperCase = b2.toUpperCase();
                    g = upperCase;
                    return upperCase;
                }
                return "";
            } catch (Exception e2) {
                return "";
            }
        }
    }

    public static String d(Context context, String str) {
        if (context != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    MessageDigest messageDigest = MessageDigest.getInstance(com.mnt.impl.e.oX);
                    File file = new File(context.getPackageManager().getApplicationInfo(str, 128).sourceDir);
                    FileInputStream fileInputStream = new FileInputStream(file);
                    byte[] bArr = new byte[4096];
                    long length = file.length();
                    long j = 0;
                    while (j < length && !Thread.interrupted()) {
                        int read = fileInputStream.read(bArr);
                        j += read;
                        messageDigest.update(bArr, 0, read);
                    }
                    String b2 = b(messageDigest.digest());
                    if (b2 != null) {
                        return b2.toUpperCase();
                    }
                    return "";
                }
            } catch (Exception e2) {
                return "";
            }
        }
        return "";
    }

    public static int e(Context context, String str) {
        if (context == null) {
            return -1;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return -1;
            }
            return context.getPackageManager().getPackageInfo(str, 128).versionCode;
        } catch (Exception e2) {
            return -1;
        }
    }

    private static String b(byte[] bArr) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (int i = 0; i < bArr.length; i++) {
            sb.append(Integer.toHexString((bArr[i] >> 4) & 15));
            sb.append(Integer.toHexString(bArr[i] & 15));
        }
        return sb.toString();
    }

    public static boolean e(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            boolean z = packageManager.resolveActivity(new Intent(context, (Class<?>) MntActivity.class), 65536) != null;
            if (!f(context)) {
                z = false;
            }
            if (-1 == packageManager.checkPermission("android.permission.INTERNET", context.getPackageName())) {
                return false;
            }
            return z;
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean f(Context context) {
        try {
            return context.getPackageManager().getReceiverInfo(new ComponentName(context, (Class<?>) MntBroadcastReceiver.class), 65536) != null;
        } catch (Throwable th) {
            return false;
        }
    }

    public static final boolean g(Context context) {
        return context.getPackageManager().checkPermission(com.mnt.impl.e.oY, context.getPackageName()) == 0;
    }

    public static long h(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public static int i(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static void f(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
                if (launchIntentForPackage != null) {
                    context.startActivity(launchIntentForPackage);
                }
            } catch (Throwable th) {
            }
        }
    }

    public static String j(Context context) {
        if (!TextUtils.isEmpty(h)) {
            return h;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            h = WebSettings.getDefaultUserAgent(context);
        } else {
            try {
                Class<?> cls = Class.forName(com.mnt.impl.e.oZ);
                Constructor<?> declaredConstructor = cls.getDeclaredConstructor(Context.class, Class.forName(com.mnt.impl.e.pa));
                declaredConstructor.setAccessible(true);
                h = (String) cls.getMethod(com.mnt.impl.e.pb, new Class[0]).invoke(declaredConstructor.newInstance(context, null), new Object[0]);
            } catch (Throwable th) {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    return com.mnt.a.a.g();
                }
                try {
                    h = new WebView(context).getSettings().getUserAgentString();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                    return com.mnt.a.a.g();
                }
            }
        }
        return h;
    }

    public static String a(Throwable th) {
        try {
            return th.getMessage().replaceAll(com.mnt.impl.e.pc, com.mnt.impl.e.pd);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return "";
        }
    }

    private static long i(Context context, String str) {
        try {
            if (a(context, str)) {
                return context.getApplicationContext().getPackageManager().getPackageInfo(str, 0).firstInstallTime;
            }
            return 0L;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0L;
        }
    }

    public static long g(Context context, String str) {
        if (TextUtils.isEmpty(str) || context == null) {
            return 0L;
        }
        long i = i(context, str);
        if (i >= 1) {
            return ((System.currentTimeMillis() - i) / 86400000) + 1;
        }
        return 0L;
    }

    public static long k(Context context) {
        if (context == null) {
            return 0L;
        }
        return g(context, context.getPackageName());
    }

    public static int h(Context context, String str) {
        com.mnt.impl.e.a a2 = a.a(context).a(str);
        if (a2 != null && !a2.a()) {
            return 1;
        }
        if (h.c(context, str)) {
            return 2;
        }
        return 0;
    }

    public static void a(Context context, com.mnt.impl.e.b bVar) {
        String str = bVar.c;
        if (!TextUtils.isEmpty(str)) {
            if ((!com.mnt.impl.f.h.a(str, bVar.f3984b) || TextUtils.isEmpty(com.mnt.impl.f.h.b(str))) && bVar.g == 1) {
                str = com.mnt.impl.e.oB + bVar.f3984b;
            }
        } else {
            str = bVar.d;
            if (a(context, com.mnt.impl.e.oz) && bVar.g == 1) {
                a(context, com.mnt.impl.e.oA + bVar.f3984b, false);
                return;
            }
        }
        LogUtil.showToast(context, com.mnt.impl.e.oC + str);
        a(context, str, true);
    }

    public static String f(String str) {
        if (str.startsWith(com.mnt.impl.e.oR)) {
            return com.mnt.impl.e.oQ + str.substring(5);
        }
        return str;
    }
}
