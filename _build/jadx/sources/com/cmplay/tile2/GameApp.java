package com.cmplay.tile2;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.appsflyer.AppsFlyerLib;
import com.cmplay.base.util.g;
import com.cmplay.cloud.CloudUpdateReceiver;
import com.cmplay.crashreport.a;
import com.cmplay.crashreport.b;
import com.cmplay.i.c;
import com.cmplay.internalpush.e;
import com.cmplay.tile2.ui.ReportService;
import com.cmplay.util.ConnectionChangedReceiver;
import com.cmplay.util.aa;
import com.cmplay.util.b.d;
import com.facebook.l;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import org.cocos2dx.lib.Cocos2dxHelper;
import org.cocos2dx.lib.ICloudConfigGetter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GameApp extends Application {

    /* renamed from: a, reason: collision with root package name */
    public static Context f1598a;
    private Handler i = new Handler(Looper.getMainLooper());
    private a j = new a() { // from class: com.cmplay.tile2.GameApp.3
        @Override // com.cmplay.crashreport.a
        public String a() {
            return c.f();
        }

        @Override // com.cmplay.crashreport.a
        public String b() {
            return com.cmplay.i.a.a(GameApp.f1598a);
        }
    };

    /* renamed from: b, reason: collision with root package name */
    public static boolean f1599b = false;
    private static GameApp h = null;
    public static boolean c = false;
    public static long d = 0;
    public static long e = 0;
    public static long f = 0;
    public static String g = "";

    public static long a() {
        return d;
    }

    public static void a(long j) {
        d = j;
    }

    public static long b() {
        return e;
    }

    public static void b(long j) {
        e = j;
    }

    public static long c() {
        return f;
    }

    public static void c(long j) {
        f = j;
    }

    @Override // android.app.Application
    public void onCreate() {
        if (d == 0) {
            d = System.currentTimeMillis();
        }
        g.a(true);
        com.ijinshan.cloudconfig.d.a.f3591a = true;
        f1598a = getApplicationContext();
        h = this;
        super.onCreate();
        j();
        c = aa.b("key_android_sdk_later_load", false);
        if (!c || c.a()) {
            d();
        }
        if (b() == 0) {
            b(System.currentTimeMillis());
        }
    }

    private void j() {
        c.a(f1598a);
        aa.a(this, new d(f1598a, aa.a()));
        Cocos2dxHelper.setSharedPreferenceImpl(new d(f1598a, Cocos2dxHelper.getSharedPreferenceName()));
        b.a(this, this.j);
        k();
        l();
        m();
    }

    private void k() {
        if (c.b()) {
            f();
            q();
            l.a(getApplicationContext());
            e.a(this);
            CloudUpdateReceiver.a(f1598a);
            t();
            o();
            r();
            com.cmplay.d.a.a().a(new com.cmplay.d.c());
            ConnectionChangedReceiver.a(f1598a);
            s();
        }
    }

    private void l() {
        if (c.a()) {
            f();
            q();
            e.a(this);
            CloudUpdateReceiver.a(f1598a);
            Cocos2dxHelper.initByService(this);
            Cocos2dxHelper.registerExceptionHandler();
            com.cmplay.c.a.a.a(f1598a);
            l.a(getApplicationContext());
            t();
            a(this);
            ConnectionChangedReceiver.a(f1598a);
        }
    }

    private void m() {
        if (c.c()) {
            f();
            q();
            l.a(getApplicationContext());
            Cocos2dxHelper.initByService(this);
        }
    }

    public void d() {
        if (c.b()) {
            n();
            com.cmplay.b.b.a().b();
        }
        if (c.a()) {
            p();
            com.cmplay.d.b.a().a(this, aa.b("key_language_selected", ""), aa.b("key_country_selected", ""));
        }
    }

    private void n() {
    }

    private void o() {
        startService(new Intent(getApplicationContext(), (Class<?>) ReportService.class));
    }

    private void a(Context context) {
        com.cmcm.dmc.sdk.c.a().a(1002);
        com.cmcm.dmc.sdk.c.a().a(context, 0, new com.cmcm.dmc.sdk.a() { // from class: com.cmplay.tile2.GameApp.1
            @Override // com.cmcm.dmc.sdk.a
            public int a(Integer num, String str, String str2, int i) {
                return com.cmplay.cloud.a.a().a(num.intValue(), str, str2, i);
            }
        });
    }

    private void p() {
        Intent intent = new Intent(this, (Class<?>) ReportService.class);
        intent.putExtra("command_preload_image", true);
        startService(intent);
    }

    private boolean a(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        if (applicationInfo != null && packageInfo != null) {
            try {
                String str = getFilesDir().getParentFile().getAbsolutePath() + "/lib/libcocos2dcpp.so";
                if (new File(str).exists()) {
                    System.load(str);
                    return true;
                }
                Log.d("nativelib", str + " not exist");
            } catch (Exception e2) {
                e2.printStackTrace();
            } catch (UnsatisfiedLinkError e3) {
                e3.printStackTrace();
            }
        }
        return false;
    }

    private boolean b(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        if (applicationInfo != null && packageInfo != null) {
            try {
                Log.d("nativelib", "source dir: " + applicationInfo.sourceDir);
                Log.d("nativelib", "native lib dir: " + applicationInfo.nativeLibraryDir);
                String str = applicationInfo.nativeLibraryDir + File.separator + "libcocos2dcpp.so";
                if (new File(str).exists()) {
                    System.load(str);
                    return true;
                }
                Log.d("nativelib", str + " not exist");
            } catch (Exception e2) {
                e2.printStackTrace();
            } catch (UnsatisfiedLinkError e3) {
                e3.printStackTrace();
            }
        }
        return false;
    }

    private boolean c(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        if (applicationInfo != null && packageInfo != null) {
            try {
                File a2 = a(applicationInfo.sourceDir, packageInfo.lastUpdateTime, packageInfo.versionCode);
                if (a2 != null && a2.exists()) {
                    System.load(a2.getAbsolutePath());
                    return true;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            } catch (UnsatisfiedLinkError e3) {
                e3.printStackTrace();
                throw e3;
            }
        }
        return false;
    }

    public static void e() {
        if (h != null) {
            h.f();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f() {
        /*
            r8 = this;
            r2 = 0
            r6 = 0
            r5 = 1
            boolean r0 = com.cmplay.tile2.GameApp.f1599b
            if (r0 == 0) goto L8
        L7:
            return
        L8:
            android.content.pm.PackageManager r0 = r8.getPackageManager()     // Catch: java.lang.Exception -> L5d java.lang.UnsatisfiedLinkError -> L68
            java.lang.String r1 = r8.getPackageName()     // Catch: java.lang.Exception -> L5d java.lang.UnsatisfiedLinkError -> L68
            r3 = 1152(0x480, float:1.614E-42)
            android.content.pm.ApplicationInfo r1 = r0.getApplicationInfo(r1, r3)     // Catch: java.lang.Exception -> L5d java.lang.UnsatisfiedLinkError -> L68
            android.content.pm.PackageManager r0 = r8.getPackageManager()     // Catch: java.lang.UnsatisfiedLinkError -> L85 java.lang.Exception -> L8c
            java.lang.String r3 = r8.getPackageName()     // Catch: java.lang.UnsatisfiedLinkError -> L85 java.lang.Exception -> L8c
            r4 = 64
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r3, r4)     // Catch: java.lang.UnsatisfiedLinkError -> L85 java.lang.Exception -> L8c
            java.lang.String r2 = r1.nativeLibraryDir     // Catch: java.lang.UnsatisfiedLinkError -> L8a java.lang.Exception -> L91
            android.os.Bundle r2 = r1.metaData     // Catch: java.lang.UnsatisfiedLinkError -> L8a java.lang.Exception -> L91
            java.lang.String r3 = "android.app.lib_name"
            java.lang.String r2 = r2.getString(r3)     // Catch: java.lang.UnsatisfiedLinkError -> L8a java.lang.Exception -> L91
            java.lang.System.loadLibrary(r2)     // Catch: java.lang.UnsatisfiedLinkError -> L8a java.lang.Exception -> L91
            r2 = 1
            com.cmplay.tile2.GameApp.f1599b = r2     // Catch: java.lang.UnsatisfiedLinkError -> L8a java.lang.Exception -> L91
        L34:
            boolean r2 = com.cmplay.tile2.GameApp.f1599b
            if (r2 != 0) goto L7
            java.lang.String r2 = "nativelib"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "======== auto load lib failed, try load custom at "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = com.cmplay.i.d.a(r8)
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            android.util.Log.d(r2, r3)
            boolean r2 = r8.a(r1, r0)
            if (r2 == 0) goto L73
            com.cmplay.tile2.GameApp.f1599b = r5
            goto L7
        L5d:
            r0 = move-exception
            r1 = r2
            r7 = r2
            r2 = r0
            r0 = r7
        L62:
            com.cmplay.tile2.GameApp.f1599b = r6
            r2.printStackTrace()
            goto L34
        L68:
            r0 = move-exception
            r1 = r2
            r7 = r2
            r2 = r0
            r0 = r7
        L6d:
            com.cmplay.tile2.GameApp.f1599b = r6
            r2.printStackTrace()
            goto L34
        L73:
            boolean r2 = r8.b(r1, r0)
            if (r2 == 0) goto L7c
            com.cmplay.tile2.GameApp.f1599b = r5
            goto L7
        L7c:
            boolean r0 = r8.c(r1, r0)
            if (r0 == 0) goto L7
            com.cmplay.tile2.GameApp.f1599b = r5
            goto L7
        L85:
            r0 = move-exception
            r7 = r0
            r0 = r2
            r2 = r7
            goto L6d
        L8a:
            r2 = move-exception
            goto L6d
        L8c:
            r0 = move-exception
            r7 = r0
            r0 = r2
            r2 = r7
            goto L62
        L91:
            r2 = move-exception
            goto L62
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.tile2.GameApp.f():void");
    }

    private void a(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isFile() && file2.getAbsolutePath().endsWith("libcocos2dcpp.so")) {
                    Log.d("nativelib", "deleting old so :" + file2.getName());
                    file2.delete();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0194 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v16, types: [java.io.FileOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.io.File a(java.lang.String r11, long r12, int r14) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.tile2.GameApp.a(java.lang.String, long, int):java.io.File");
    }

    private void q() {
        Cocos2dxHelper.setCloudConfigGetter(new ICloudConfigGetter() { // from class: com.cmplay.tile2.GameApp.2
            @Override // org.cocos2dx.lib.ICloudConfigGetter
            public String getData(int func_tion, String section) {
                return com.cmplay.cloud.a.a().b(func_tion, section);
            }

            @Override // org.cocos2dx.lib.ICloudConfigGetter
            public String getStringValue(int func_tion, String section, String key, String defValue) {
                return com.cmplay.cloud.a.a().a(func_tion, section, key, defValue);
            }

            @Override // org.cocos2dx.lib.ICloudConfigGetter
            public int getIntValue(int func_tion, String section, String key, int defValue) {
                return com.cmplay.cloud.a.a().a(func_tion, section, key, defValue);
            }

            @Override // org.cocos2dx.lib.ICloudConfigGetter
            public long getLongValue(int func_tion, String section, String key, long defValue) {
                return com.cmplay.cloud.a.a().a(func_tion, section, key, defValue);
            }

            @Override // org.cocos2dx.lib.ICloudConfigGetter
            public boolean getBooleanValue(int func_tion, String section, String key, boolean defValue) {
                return com.cmplay.cloud.a.a().a(func_tion, section, key, defValue);
            }

            @Override // org.cocos2dx.lib.ICloudConfigGetter
            public double getDoubleValue(int func_tion, String section, String key, double defValue) {
                return com.cmplay.cloud.a.a().a(func_tion, section, key, defValue);
            }
        });
    }

    private void r() {
        AppsFlyerLib.b("Ga5Y8wyWYUt5CsGqUoiJD5");
        AppsFlyerLib.c("CNY");
    }

    private void s() {
        com.duapps.ad.base.a.a(this, "{\"native\": [{\"pid\": \"138420\",\"fbids\": [\"\"]}]}");
    }

    private void t() {
        if (c.a()) {
            com.cmplay.cloud.d.a().b();
        }
    }

    public static GameApp g() {
        return h;
    }

    public void a(Runnable runnable) {
        this.i.post(runnable);
    }

    public void a(Runnable runnable, long j) {
        this.i.postDelayed(runnable, j);
    }

    public static String h() {
        return Build.MODEL;
    }

    public static String i() {
        BufferedReader bufferedReader;
        String str;
        int indexOf;
        if (g != "") {
            return g;
        }
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"), 8192);
            try {
                char[] cArr = new char[2048];
                bufferedReader.read(cArr, 0, 2048);
                str = new String(cArr);
                indexOf = str.indexOf("Hardware");
            } finally {
                bufferedReader.close();
            }
        } catch (IOException e2) {
        }
        if (indexOf <= 0) {
            return g;
        }
        String[] split = str.substring(indexOf).split("\\s+");
        if (split.length > 2) {
            g = split[2];
        }
        bufferedReader.close();
        return g;
    }
}
