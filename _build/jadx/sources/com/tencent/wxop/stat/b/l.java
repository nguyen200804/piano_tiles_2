package com.tencent.wxop.stat.b;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileReader;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpHost;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    private static String f4828a = null;

    /* renamed from: b, reason: collision with root package name */
    private static String f4829b = null;
    private static String c = null;
    private static String W = null;
    private static Random cR = null;
    private static DisplayMetrics cS = null;
    private static String bq = null;
    private static String br = "";
    private static String bs = "";
    private static int bG = -1;
    private static b cT = null;
    private static String cU = null;
    private static String aR = null;
    private static volatile int bn = -1;
    private static String cV = null;
    private static String cC = null;
    private static long cW = -1;
    private static String cE = "";
    private static o cX = null;
    private static String cY = "__MTA_FIRST_ACTIVATE__";
    private static int U = -1;
    private static long cZ = -1;
    private static int w = 0;
    private static String da = "";

    public static String A(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                Object obj = applicationInfo.metaData.get("InstallChannel");
                if (obj != null) {
                    return obj.toString();
                }
                cT.c("Could not read InstallChannel meta-data from AndroidManifest.xml");
            }
        } catch (Throwable th) {
            cT.d("Could not read InstallChannel meta-data from AndroidManifest.xml");
        }
        return null;
    }

    public static String B(Context context) {
        if (context == null) {
            return null;
        }
        return context.getClass().getName();
    }

    public static String C(Context context) {
        TelephonyManager telephonyManager;
        if (bq != null) {
            return bq;
        }
        try {
            if (r.a(context, "android.permission.READ_PHONE_STATE")) {
                if ((context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) == 0) && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                    bq = telephonyManager.getSimOperator();
                }
            } else {
                cT.d("Could not get permission of android.permission.READ_PHONE_STATE");
            }
        } catch (Throwable th) {
            cT.b(th);
        }
        return bq;
    }

    public static String D(Context context) {
        if (e(br)) {
            return br;
        }
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            br = str;
            if (str == null) {
                return "";
            }
        } catch (Throwable th) {
            cT.b(th);
        }
        return br;
    }

    public static String E(Context context) {
        String str;
        String str2 = "";
        try {
            if (r.a(context, "android.permission.INTERNET") && r.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    str = activeNetworkInfo.getTypeName();
                    String extraInfo = activeNetworkInfo.getExtraInfo();
                    if (str != null) {
                        if (str.equalsIgnoreCase("WIFI")) {
                            str2 = "WIFI";
                        } else if (str.equalsIgnoreCase("MOBILE")) {
                            str2 = extraInfo != null ? extraInfo : "MOBILE";
                        } else {
                            if (extraInfo != null) {
                                str2 = extraInfo;
                            }
                            str2 = str;
                        }
                    }
                }
                str = "";
                str2 = str;
            } else {
                cT.d("can not get the permission of android.permission.ACCESS_WIFI_STATE");
            }
        } catch (Throwable th) {
            cT.b(th);
        }
        return str2;
    }

    public static Integer F(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return Integer.valueOf(telephonyManager.getNetworkType());
            }
        } catch (Throwable th) {
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
    
        if (com.tencent.wxop.stat.b.l.bs.length() == 0) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String G(android.content.Context r3) {
        /*
            java.lang.String r0 = com.tencent.wxop.stat.b.l.bs
            boolean r0 = e(r0)
            if (r0 == 0) goto Lb
            java.lang.String r0 = com.tencent.wxop.stat.b.l.bs
        La:
            return r0
        Lb:
            android.content.pm.PackageManager r0 = r3.getPackageManager()     // Catch: java.lang.Throwable -> L29
            java.lang.String r1 = r3.getPackageName()     // Catch: java.lang.Throwable -> L29
            r2 = 0
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r1, r2)     // Catch: java.lang.Throwable -> L29
            java.lang.String r0 = r0.versionName     // Catch: java.lang.Throwable -> L29
            com.tencent.wxop.stat.b.l.bs = r0     // Catch: java.lang.Throwable -> L29
            if (r0 == 0) goto L26
            java.lang.String r0 = com.tencent.wxop.stat.b.l.bs     // Catch: java.lang.Throwable -> L29
            int r0 = r0.length()     // Catch: java.lang.Throwable -> L29
            if (r0 != 0) goto L2f
        L26:
            java.lang.String r0 = "unknown"
            goto La
        L29:
            r0 = move-exception
            com.tencent.wxop.stat.b.b r1 = com.tencent.wxop.stat.b.l.cT
            r1.b(r0)
        L2f:
            java.lang.String r0 = com.tencent.wxop.stat.b.l.bs
            goto La
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.b.l.G(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0077 -> B:16:0x000b). Please report as a decompilation issue!!! */
    public static String H(Context context) {
        String str;
        String path;
        if (e(cU)) {
            return cU;
        }
        try {
        } catch (Throwable th) {
            cT.b(th);
        }
        if (r.a(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            String externalStorageState = Environment.getExternalStorageState();
            if (externalStorageState != null && externalStorageState.equals("mounted") && (path = Environment.getExternalStorageDirectory().getPath()) != null) {
                StatFs statFs = new StatFs(path);
                str = String.valueOf((statFs.getBlockSize() * statFs.getAvailableBlocks()) / 1000000) + "/" + String.valueOf((statFs.getBlockCount() * statFs.getBlockSize()) / 1000000);
                cU = str;
            }
            str = null;
        } else {
            cT.warn("can not get the permission of android.permission.WRITE_EXTERNAL_STORAGE");
            str = null;
        }
        return str;
    }

    static String I(Context context) {
        if (aR != null) {
            return aR;
        }
        int myPid = Process.myPid();
        Iterator<ActivityManager.RunningAppProcessInfo> it = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ActivityManager.RunningAppProcessInfo next = it.next();
            if (next.pid == myPid) {
                aR = next.processName;
                break;
            }
        }
        return aR;
    }

    public static String J(Context context) {
        return e(context, a.ct);
    }

    public static synchronized Integer K(Context context) {
        Integer valueOf;
        synchronized (l.class) {
            if (bn <= 0) {
                bn = q.a(context, "MTA_EVENT_INDEX", 0);
                q.b(context, "MTA_EVENT_INDEX", bn + 1000);
            } else if (bn % 1000 == 0) {
                try {
                    q.b(context, "MTA_EVENT_INDEX", bn < 2147383647 ? bn + 1000 : 0);
                } catch (Throwable th) {
                    cT.c(th);
                }
            }
            int i = bn + 1;
            bn = i;
            valueOf = Integer.valueOf(i);
        }
        return valueOf;
    }

    public static String L(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return String.valueOf(memoryInfo.availMem / 1000000) + "/" + String.valueOf(ay() / 1000000);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String M(Context context) {
        List<Sensor> sensorList;
        if (e(cE)) {
            return cE;
        }
        try {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            if (sensorManager != null && (sensorList = sensorManager.getSensorList(-1)) != null) {
                StringBuilder sb = new StringBuilder(sensorList.size() * 10);
                for (int i = 0; i < sensorList.size(); i++) {
                    sb.append(sensorList.get(i).getType());
                    if (i != sensorList.size() - 1) {
                        sb.append(",");
                    }
                }
                cE = sb.toString();
            }
        } catch (Throwable th) {
            cT.b(th);
        }
        return cE;
    }

    public static synchronized int N(Context context) {
        int i;
        synchronized (l.class) {
            if (U != -1) {
                i = U;
            } else {
                O(context);
                i = U;
            }
        }
        return i;
    }

    public static void O(Context context) {
        int a2 = q.a(context, cY, 1);
        U = a2;
        if (a2 == 1) {
            q.b(context, cY, 0);
        }
    }

    public static boolean P(Context context) {
        if (cZ < 0) {
            cZ = q.f(context, "mta.qq.com.checktime");
        }
        return Math.abs(System.currentTimeMillis() - cZ) > 86400000;
    }

    public static void Q(Context context) {
        cZ = System.currentTimeMillis();
        q.a(context, "mta.qq.com.checktime", cZ);
    }

    public static String R(Context context) {
        if (context == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        if (resolveActivity.activityInfo == null || resolveActivity.activityInfo.packageName.equals("android")) {
            return null;
        }
        return resolveActivity.activityInfo.packageName;
    }

    public static int a(Context context, boolean z) {
        if (z) {
            w = q.a(context, "mta.qq.com.difftime", 0);
        }
        return w;
    }

    private static Long a(String str, String str2, Long l) {
        if (str == null || str2 == null) {
            return l;
        }
        if (str2.equalsIgnoreCase(".") || str2.equalsIgnoreCase("|")) {
            str2 = "\\" + str2;
        }
        String[] split = str.split(str2);
        if (split.length != 3) {
            return l;
        }
        try {
            Long l2 = 0L;
            int i = 0;
            while (i < split.length) {
                Long valueOf = Long.valueOf(100 * (l2.longValue() + Long.valueOf(split[i]).longValue()));
                i++;
                l2 = valueOf;
            }
            return l2;
        } catch (NumberFormatException e) {
            return l;
        }
    }

    public static void a(Context context, int i) {
        w = i;
        q.b(context, "mta.qq.com.difftime", i);
    }

    public static boolean a(com.tencent.wxop.stat.f fVar) {
        if (fVar == null) {
            return false;
        }
        return e(fVar.S());
    }

    public static long ad() {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            return calendar.getTimeInMillis() + 86400000;
        } catch (Throwable th) {
            cT.b(th);
            return System.currentTimeMillis() + 86400000;
        }
    }

    private static synchronized Random at() {
        Random random;
        synchronized (l.class) {
            if (cR == null) {
                cR = new Random();
            }
            random = cR;
        }
        return random;
    }

    public static int au() {
        if (bG != -1) {
            return bG;
        }
        try {
            if (p.a()) {
                bG = 1;
            }
        } catch (Throwable th) {
            cT.b(th);
        }
        bG = 0;
        return 0;
    }

    public static synchronized b av() {
        b bVar;
        synchronized (l.class) {
            if (cT == null) {
                b bVar2 = new b("MtaSDK");
                cT = bVar2;
                bVar2.ap();
            }
            bVar = cT;
        }
        return bVar;
    }

    public static String aw() {
        Calendar calendar = Calendar.getInstance();
        calendar.roll(6, 0);
        return new SimpleDateFormat("yyyyMMdd").format(calendar.getTime());
    }

    public static String ax() {
        if (e(cC)) {
            return cC;
        }
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
        String str = String.valueOf((statFs2.getAvailableBlocks() * statFs2.getBlockSize()) / 1000000) + "/" + String.valueOf((statFs.getBlockCount() * statFs.getBlockSize()) / 1000000);
        cC = str;
        return str;
    }

    private static long ay() {
        if (cW > 0) {
            return cW;
        }
        long j = 1;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
            j = Integer.valueOf(bufferedReader.readLine().split("\\s+")[1]).intValue() * 1024;
            bufferedReader.close();
        } catch (Exception e) {
        }
        cW = j;
        return j;
    }

    public static JSONObject az() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("n", m.r());
            String ax = m.ax();
            if (ax != null && ax.length() > 0) {
                jSONObject.put("na", ax);
            }
            int aA = m.aA();
            if (aA > 0) {
                jSONObject.put("fx", aA / 1000000);
            }
            int D = m.D();
            if (D > 0) {
                jSONObject.put("fn", D / 1000000);
            }
        } catch (Throwable th) {
            Log.w("MtaSDK", "get cpu error", th);
        }
        return jSONObject;
    }

    public static byte[] b(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length * 2);
        while (true) {
            int read = gZIPInputStream.read(bArr2);
            if (read == -1) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayInputStream.close();
                gZIPInputStream.close();
                byteArrayOutputStream.close();
                return byteArray;
            }
            byteArrayOutputStream.write(bArr2, 0, read);
        }
    }

    public static synchronized String c(Context context) {
        String str;
        synchronized (l.class) {
            if (f4828a == null || f4828a.trim().length() == 0) {
                String b2 = r.b(context);
                f4828a = b2;
                if (b2 == null || f4828a.trim().length() == 0) {
                    f4828a = Integer.toString(at().nextInt(Integer.MAX_VALUE));
                }
                str = f4828a;
            } else {
                str = f4828a;
            }
        }
        return str;
    }

    public static String d(long j) {
        return new SimpleDateFormat("yyyyMMdd").format(new Date(j));
    }

    public static String e(Context context, String str) {
        if (!com.tencent.wxop.stat.c.E()) {
            return str;
        }
        if (aR == null) {
            aR = I(context);
        }
        return aR != null ? str + "_" + aR : str;
    }

    public static boolean e(String str) {
        return (str == null || str.trim().length() == 0) ? false : true;
    }

    public static int r() {
        return at().nextInt(Integer.MAX_VALUE);
    }

    public static String t(String str) {
        if (str == null) {
            return "0";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b2 : digest) {
                int i = b2 & 255;
                if (i < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i));
            }
            return stringBuffer.toString();
        } catch (Throwable th) {
            return "0";
        }
    }

    public static long u(String str) {
        return a(str, ".", 0L).longValue();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x006b -> B:10:0x0004). Please report as a decompilation issue!!! */
    public static HttpHost v(Context context) {
        HttpHost httpHost;
        if (context == null) {
            return null;
        }
        try {
        } catch (Throwable th) {
            cT.b(th);
        }
        if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) != 0) {
            httpHost = null;
        } else {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                httpHost = null;
            } else if (activeNetworkInfo.getTypeName() == null || !activeNetworkInfo.getTypeName().equalsIgnoreCase("WIFI")) {
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (extraInfo == null) {
                    httpHost = null;
                } else if (extraInfo.equals("cmwap") || extraInfo.equals("3gwap") || extraInfo.equals("uniwap")) {
                    httpHost = new HttpHost("10.0.0.172", 80);
                } else if (extraInfo.equals("ctwap")) {
                    httpHost = new HttpHost("10.0.0.200", 80);
                } else {
                    String defaultHost = Proxy.getDefaultHost();
                    if (defaultHost != null && defaultHost.trim().length() > 0) {
                        httpHost = new HttpHost(defaultHost, Proxy.getDefaultPort());
                    }
                    httpHost = null;
                }
            } else {
                httpHost = null;
            }
        }
        return httpHost;
    }

    public static synchronized String w(Context context) {
        String str;
        synchronized (l.class) {
            if (c == null || c.trim().length() == 0) {
                c = r.c(context);
            }
            str = c;
        }
        return str;
    }

    public static DisplayMetrics x(Context context) {
        if (cS == null) {
            cS = new DisplayMetrics();
            ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(cS);
        }
        return cS;
    }

    public static boolean y(Context context) {
        NetworkInfo[] allNetworkInfo;
        try {
        } catch (Throwable th) {
            cT.b(th);
        }
        if (!r.a(context, "android.permission.ACCESS_WIFI_STATE")) {
            cT.warn("can not get the permission of android.permission.ACCESS_WIFI_STATE");
            return false;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
            for (int i = 0; i < allNetworkInfo.length; i++) {
                if (allNetworkInfo[i].getTypeName().equalsIgnoreCase("WIFI") && allNetworkInfo[i].isConnected()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String z(Context context) {
        if (f4829b != null) {
            return f4829b;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                String string = applicationInfo.metaData.getString("TA_APPKEY");
                if (string != null) {
                    f4829b = string;
                    return string;
                }
                cT.b("Could not read APPKEY meta-data from AndroidManifest.xml");
            }
        } catch (Throwable th) {
            cT.b("Could not read APPKEY meta-data from AndroidManifest.xml");
        }
        return null;
    }
}
