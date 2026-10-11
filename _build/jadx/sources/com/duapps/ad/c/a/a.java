package com.duapps.ad.c.a;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import com.duapps.ad.base.h;
import com.duapps.ad.base.m;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: NetworkRequestFilterManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final int f2094a;
    private static volatile a c;
    private static boolean f;

    /* renamed from: b, reason: collision with root package name */
    private int f2095b;
    private Context d;
    private String e;

    static {
        f2094a = Build.VERSION.SDK_INT >= 18 ? 1 : 2049;
    }

    private a(Context context) {
        this.d = context.getApplicationContext();
    }

    public static a a(Context context) {
        if (c == null) {
            synchronized (a.class) {
                if (c == null) {
                    c = new a(context);
                }
            }
        }
        return c;
    }

    public boolean a(String str) {
        this.e = str;
        return a();
    }

    public boolean a() {
        boolean z = false;
        boolean b2 = b();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long t = m.t(this.d);
        long u = m.u(this.d);
        if (b2) {
            boolean z2 = elapsedRealtime - t >= u;
            h.c("NetworkRequestFilterManager", "isOverTime（4H）:" + z2 + ", last check time:" + t);
            if (!z2) {
                this.f2095b = 0;
                com.duapps.ad.stats.c.a(this.d, this.f2095b, this.e);
                return z;
            }
        }
        z = c();
        if (!z) {
            com.duapps.ad.stats.c.a(this.d, f(), this.e);
        }
        return z;
    }

    public boolean b() {
        return m.v(this.d);
    }

    public boolean c() {
        if (m.w(this.d)) {
            boolean d = d();
            h.c("NetworkRequestFilterManager", "isTcpDumpRunning:" + d);
            if (d) {
                this.f2095b = 2;
                return false;
            }
        }
        if (m.x(this.d)) {
            boolean e = e();
            h.c("NetworkRequestFilterManager", "isSimulator:" + e);
            if (e) {
                this.f2095b = 5;
                return false;
            }
        }
        return true;
    }

    public boolean d() {
        return g();
    }

    public boolean e() {
        b a2 = b.a(this.d);
        boolean z = a2.g() || a2.e() || a2.b() || a2.d() || a2.c() || a2.f();
        if (z) {
            a2.a();
        }
        return z;
    }

    public int f() {
        return this.f2095b;
    }

    public static boolean g() {
        if (f) {
            return f;
        }
        f = h() != null;
        return f;
    }

    private static String h() {
        for (String str : System.getenv("PATH").split(":")) {
            String str2 = str + "/su";
            if (new File(str2).exists()) {
                h.c("NetworkRequestFilterManager", "path:" + str2 + " is exists");
                return str2;
            }
        }
        return null;
    }

    /* compiled from: NetworkRequestFilterManager.java */
    static class c {

        /* renamed from: a, reason: collision with root package name */
        public String f2101a;

        /* renamed from: b, reason: collision with root package name */
        public String f2102b;

        public c(String str, String str2) {
            this.f2101a = str;
            this.f2102b = str2;
        }
    }

    /* compiled from: NetworkRequestFilterManager.java */
    /* renamed from: com.duapps.ad.c.a.a$a, reason: collision with other inner class name */
    static class C0059a {

        /* renamed from: a, reason: collision with root package name */
        private static String f2096a = "TracerPid";

        public static boolean a() {
            BufferedReader bufferedReader;
            int i;
            boolean z = false;
            BufferedReader bufferedReader2 = null;
            try {
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/net/tcp")), 1000);
                    try {
                        bufferedReader.readLine();
                        ArrayList arrayList = new ArrayList();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            arrayList.add(C0060a.a(readLine.split("\\W+")));
                        }
                        bufferedReader.close();
                        Iterator it = arrayList.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                i = -1;
                                break;
                            }
                            C0060a c0060a = (C0060a) it.next();
                            if (c0060a.f2098b == 0) {
                                i = c0060a.c;
                                break;
                            }
                        }
                        if (i != -1) {
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                C0060a c0060a2 = (C0060a) it2.next();
                                z = (c0060a2.f2098b == 0 || c0060a2.c != i) ? z : true;
                            }
                        }
                        bufferedReader.close();
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        bufferedReader.close();
                        return z;
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader2.close();
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                bufferedReader = null;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2.close();
                throw th;
            }
            return z;
        }

        /* compiled from: NetworkRequestFilterManager.java */
        /* renamed from: com.duapps.ad.c.a.a$a$a, reason: collision with other inner class name */
        public static class C0060a {

            /* renamed from: a, reason: collision with root package name */
            public int f2097a;

            /* renamed from: b, reason: collision with root package name */
            public long f2098b;
            public int c;

            static C0060a a(String[] strArr) {
                return new C0060a(strArr[1], strArr[2], strArr[3], strArr[4], strArr[5], strArr[6], strArr[7], strArr[8], strArr[9], strArr[10], strArr[11], strArr[12], strArr[13], strArr[14]);
            }

            public C0060a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14) {
                this.f2097a = Integer.parseInt(str, 16);
                this.f2098b = Long.parseLong(str2, 16);
                this.c = Integer.parseInt(str3, 16);
            }
        }
    }

    /* compiled from: NetworkRequestFilterManager.java */
    static class b {

        /* renamed from: b, reason: collision with root package name */
        private static b f2099b;
        private static String[] e = {"15555215554", "15555215556", "15555215558", "15555215560", "15555215562", "15555215564", "15555215566", "15555215568", "15555215570", "15555215572", "15555215574", "15555215576", "15555215578", "15555215580", "15555215582", "15555215584"};
        private static String[] f = {"000000000000000", "e21833235b6eef10", "012345678912345"};
        private static String[] g = {"310260000000000"};
        private static String[] h = {"/dev/socket/qemud", "/dev/qemu_pipe"};
        private static String[] i = {"/dev/socket/genyd", "/dev/socket/baseband_genyd"};
        private static String[] j = {"goldfish"};
        private static c[] k = {new c("init.svc.qemud", null), new c("init.svc.qemu-props", null), new c("qemu.hw.mainkeys", null), new c("qemu.sf.fake_camera", null), new c("qemu.sf.lcd_density", null), new c("ro.bootloader", EnvironmentCompat.MEDIA_UNKNOWN), new c("ro.bootmode", EnvironmentCompat.MEDIA_UNKNOWN), new c("ro.hardware", "goldfish"), new c("ro.kernel.android.qemud", null), new c("ro.kernel.qemu.gles", null), new c("ro.kernel.qemu", "1"), new c("ro.product.device", "generic"), new c("ro.product.model", "sdk"), new c("ro.product.name", "sdk"), new c("ro.serialno", null)};
        private static int l = 5;

        /* renamed from: a, reason: collision with root package name */
        private Context f2100a;
        private int c;
        private String d;

        private b(Context context) {
            this.f2100a = context;
        }

        public static b a(Context context) {
            if (f2099b == null) {
                synchronized (b.class) {
                    if (f2099b == null) {
                        f2099b = new b(context.getApplicationContext());
                    }
                }
            }
            return f2099b;
        }

        private void a(String str, int i2) {
            this.d = str;
            this.c = i2;
        }

        public void a() {
            com.duapps.ad.stats.c.b(this.f2100a, this.c, this.d);
        }

        public boolean b() {
            for (String str : h) {
                if (new File(str).exists()) {
                    a("hasPipes " + str, 1);
                    return true;
                }
            }
            return false;
        }

        public boolean c() {
            for (String str : i) {
                if (new File(str).exists()) {
                    a("hasGenyFiles " + str, 3);
                    return true;
                }
            }
            return false;
        }

        public boolean d() {
            for (File file : new File[]{new File("/proc/tty/drivers"), new File("/proc/cpuinfo")}) {
                if (file.exists() && file.canRead()) {
                    byte[] bArr = new byte[1024];
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        fileInputStream.read(bArr);
                        fileInputStream.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    String str = new String(bArr);
                    for (String str2 : j) {
                        if (str.indexOf(str2) != -1) {
                            a("hasQEmuDrivers " + str2, 4);
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        public boolean e() {
            String str = Build.BOARD;
            String str2 = Build.BRAND;
            String str3 = Build.DEVICE;
            String str4 = Build.HARDWARE;
            String str5 = Build.MODEL;
            String str6 = Build.PRODUCT;
            StringBuilder sb = new StringBuilder("hasEmulatorBuild ");
            if (str.compareTo(EnvironmentCompat.MEDIA_UNKNOWN) == 0) {
                sb.append("BOARD:" + str);
                a(sb.toString(), 8);
                return true;
            }
            if (str2.compareTo("generic") == 0) {
                sb.append("BOARD:" + str);
                a(sb.toString(), 8);
                return true;
            }
            if (str3.compareTo("generic") == 0) {
                sb.append("DEVICE:" + str3);
                a(sb.toString(), 8);
                return true;
            }
            if (str5.compareTo("sdk") == 0) {
                sb.append("MODEL:" + str5);
                a(sb.toString(), 8);
                return true;
            }
            if (str6.compareTo("sdk") == 0) {
                sb.append("PRODUCT:" + str6);
                a(sb.toString(), 8);
                return true;
            }
            if (str4.compareTo("goldfish") == 0) {
                sb.append("HARDWARE:" + str4);
                a(sb.toString(), 8);
                return true;
            }
            return false;
        }

        public boolean f() {
            try {
                boolean a2 = C0059a.a();
                a("hasAdbInEmulator " + a2, 10);
                return a2;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }

        public boolean g() {
            String a2 = a(this.f2100a, "ro.kernel.qemu");
            boolean z = !TextUtils.isEmpty(a2) && a2.equals("1");
            if (z) {
                a("hasQEmu " + a2, 11);
            }
            return z;
        }

        public static String a(Context context, String str) {
            try {
                Class<?> loadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
                return (String) loadClass.getMethod("get", String.class).invoke(loadClass, new String(str));
            } catch (IllegalArgumentException e2) {
                throw e2;
            } catch (Exception e3) {
                throw null;
            }
        }
    }
}
