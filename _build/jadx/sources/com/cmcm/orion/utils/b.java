package com.cmcm.orion.utils;

import android.app.Activity;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.cmcm.orion.utils.internal.PicksTransparentActivity;
import java.security.Key;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import org.json.JSONObject;

/* compiled from: Commons.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {
    private static String d;
    private static String e;

    /* renamed from: a, reason: collision with root package name */
    private static ArrayList<PendingIntent> f1061a = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    private static AtomicInteger f1062b = new AtomicInteger(666666);
    private static a c = null;
    private static String f = "";
    private static Object g = new Object();

    /* compiled from: Commons.java */
    /* renamed from: com.cmcm.orion.utils.b$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public String f1063a;

        /* renamed from: b, reason: collision with root package name */
        public int f1064b;
        public String c;
    }

    public static boolean a(Context context, String str) {
        if (context == null || str == null) {
            return false;
        }
        List<String> b2 = com.cmcm.orion.utils.internal.c.a().b();
        if (b2 != null && b2.size() > 0) {
            return b2.contains(str);
        }
        try {
            context.getPackageManager().getPackageInfo(str, 256);
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    private static boolean a(Context context, Intent intent) {
        try {
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode() || !com.cmcm.orion.adsdk.e.e()) {
                context.startActivity(intent);
                return true;
            }
            synchronized (f1061a) {
                f1061a.add(PendingIntent.getActivity(context, f1062b.addAndGet(1), intent, 1073741824));
                g(context);
            }
            PicksTransparentActivity.a(com.cmcm.orion.adsdk.e.a());
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* compiled from: Commons.java */
    static class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                synchronized (b.f1061a) {
                    try {
                        Iterator it = b.f1061a.iterator();
                        while (it.hasNext()) {
                            PendingIntent pendingIntent = (PendingIntent) it.next();
                            if (pendingIntent != null) {
                                pendingIntent.send();
                            }
                        }
                        b.f1061a.clear();
                        b.h(context);
                    } catch (Exception e) {
                    }
                }
            }
        }
    }

    private static synchronized void g(Context context) {
        synchronized (b.class) {
            if (c == null) {
                c = new a((byte) 0);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.USER_PRESENT");
                context.registerReceiver(c, intentFilter);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void h(Context context) {
        synchronized (b.class) {
            if (c != null) {
                context.unregisterReceiver(c);
                c = null;
            }
        }
    }

    public static boolean b(Context context, String str) {
        String str2 = null;
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
        if (queryIntentActivities != null && queryIntentActivities.size() > 1) {
            Iterator<ResolveInfo> it = queryIntentActivities.iterator();
            String str3 = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ResolveInfo next = it.next();
                if ("com.android.chrome".equals(next.activityInfo.packageName)) {
                    str2 = next.activityInfo.packageName;
                    break;
                }
                ApplicationInfo applicationInfo = next.activityInfo.applicationInfo;
                str3 = (applicationInfo.flags & 1) != 0 || (applicationInfo.flags & 128) != 0 ? next.activityInfo.packageName : str3;
            }
            if (!TextUtils.isEmpty(str2)) {
                str3 = str2;
            } else if (TextUtils.isEmpty(str3)) {
                str3 = queryIntentActivities.get(0).activityInfo.packageName;
            }
            intent.setPackage(str3);
            a(context, intent);
            return true;
        }
        if (queryIntentActivities == null || queryIntentActivities.size() != 1) {
            return false;
        }
        a(context, intent);
        return true;
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("https://play.google.com") || str.startsWith("http://play.google.com") || str.startsWith("market:");
    }

    public static void a(String str, Context context, com.cmcm.orion.picks.a.a.a aVar) {
        if (!TextUtils.isEmpty(str)) {
            if (aVar != null && !str.contains("refferrer=")) {
                str = str + "&referrer=utm_source%3Dcheetah_ads";
            }
            a(context, new Intent("android.intent.action.VIEW", Uri.parse(str)));
        }
    }

    public static boolean a(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            return a(context, new Intent("android.intent.action.VIEW", Uri.parse(str2)));
        }
        Intent intent = null;
        try {
            intent = com.cmcm.orion.adsdk.e.a().getPackageManager().getLaunchIntentForPackage(str);
        } catch (Exception e2) {
        }
        if (intent != null) {
            a(context, intent);
        }
        return true;
    }

    private static void i(Context context) {
        if (context != null) {
            try {
                String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
                if (!TextUtils.isEmpty(simOperator)) {
                    if (simOperator.length() >= 3) {
                        d = simOperator.substring(0, 3);
                    }
                    if (simOperator.length() >= 5) {
                        e = simOperator.substring(3, 5);
                    }
                }
            } catch (Exception e2) {
                d = "";
                e = "";
            }
        }
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(d)) {
            i(context);
        }
        return d;
    }

    public static String b(Context context) {
        if (TextUtils.isEmpty(e)) {
            i(context);
        }
        return e;
    }

    public static String c(Context context) {
        Locale j = j(context);
        if (j != null) {
            return j.getLanguage();
        }
        return null;
    }

    public static String d(Context context) {
        Locale j = j(context);
        if (j != null) {
            return j.getCountry();
        }
        return null;
    }

    private static Locale j(Context context) {
        Resources resources;
        Locale locale = null;
        if (context != null && (resources = context.getResources()) != null) {
            Configuration configuration = resources.getConfiguration();
            if (configuration != null) {
                locale = configuration.locale;
            }
            if (locale == null) {
                return Locale.getDefault();
            }
            return locale;
        }
        return Locale.getDefault();
    }

    public static String a() {
        Context a2 = com.cmcm.orion.adsdk.e.a();
        if (TextUtils.isEmpty(f)) {
            synchronized (g) {
                if (TextUtils.isEmpty(f)) {
                    try {
                        String string = Settings.System.getString(a2.getContentResolver(), "android_id");
                        if (!TextUtils.isEmpty(string)) {
                            f = string;
                        }
                    } catch (Exception e2) {
                    }
                }
            }
        }
        return f;
    }

    public static String a(String str, String str2) {
        String g2 = g(str);
        if (TextUtils.isEmpty(g2)) {
            g2 = Build.MODEL;
        }
        return !TextUtils.isEmpty(g2) ? g2 : str2;
    }

    private static String g(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Exception e2) {
            return "";
        }
    }

    public static int e(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e2) {
            return 0;
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) throws Exception {
        Key h = h(new String(bArr));
        Cipher cipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
        cipher.init(1, h);
        return cipher.doFinal(bArr2);
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) throws Exception {
        Key h = h(new String(bArr));
        Cipher cipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
        cipher.init(2, h);
        return cipher.doFinal(bArr2);
    }

    private static Key h(String str) throws Exception {
        return SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(b(str)));
    }

    public static byte[] b(String str) {
        byte[] bArr = new byte[str.length() / 2];
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = i + 1;
            char charAt = str.charAt(i);
            i = i3 + 1;
            bArr[i2] = (byte) (a(str.charAt(i3)) | (a(charAt) << 4));
        }
        return bArr;
    }

    private static int a(char c2) {
        return c2 >= 'a' ? ((c2 - 'a') + 10) & 15 : c2 >= 'A' ? ((c2 - 'A') + 10) & 15 : (c2 - '0') & 15;
    }

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static boolean c(String str) {
        if (str == null || "".equals(str.trim())) {
            return false;
        }
        return TextUtils.isDigitsOnly(str);
    }

    public static int d(String str) {
        try {
            return Integer.parseInt(str);
        } catch (Exception e2) {
            return 0;
        }
    }

    public static boolean e(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("st", "");
            String optString2 = jSONObject.optString("et", "");
            if (TextUtils.isEmpty(optString)) {
                return true;
            }
            return TextUtils.isEmpty(optString2);
        } catch (Exception e2) {
            e2.toString();
            return true;
        }
    }

    public static boolean f(String str) {
        return (TextUtils.isEmpty(str) || "0".equals(str)) ? false : true;
    }

    public static boolean a(String str, boolean z) {
        long time;
        long time2;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("st", "");
            String optString2 = jSONObject.optString("et", "");
            new StringBuilder("before:st:").append(optString).append(";et:").append(optString2);
            int optInt = jSONObject.optInt("localtime", 1);
            if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) {
                return false;
            }
            if (optString.length() <= 10 || !optString.startsWith("20")) {
                time = Long.parseLong(optString) * 1000;
                time2 = Long.parseLong(optString2) * 1000;
            } else {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(optString.length() == 14 ? "yyyyMMddHHmmss" : "yyyyMMddHHmm");
                time = simpleDateFormat.parse(optString).getTime();
                time2 = simpleDateFormat.parse(optString2).getTime();
            }
            if (time > time2) {
                return false;
            }
            com.cmcm.orion.utils.internal.e eVar = new com.cmcm.orion.utils.internal.e(time, time2, 2 == optInt);
            return z ? eVar.b() : eVar.a();
        } catch (Exception e2) {
            e2.toString();
            return false;
        }
    }
}
