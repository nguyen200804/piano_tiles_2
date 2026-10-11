package com.jirbo.adcolony;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.UUID;
import org.apache.commons.io.FilenameUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class u {

    /* renamed from: a, reason: collision with root package name */
    static byte[] f3853a = new byte[1024];

    /* renamed from: b, reason: collision with root package name */
    static StringBuilder f3854b = new StringBuilder();

    static boolean a(String str) {
        if (t.E == null) {
            return false;
        }
        try {
            f.d().getApplication().getPackageManager().getApplicationInfo(str, 0);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    static String b(String str) {
        try {
            return ab.a(str);
        } catch (Exception e) {
            return null;
        }
    }

    static String a() {
        return UUID.randomUUID().toString();
    }

    static double b() {
        return System.currentTimeMillis() / 1000.0d;
    }

    static String a(double d, int i) {
        StringBuilder sb = new StringBuilder();
        a(d, i, sb);
        return sb.toString();
    }

    static void a(double d, int i, StringBuilder sb) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            sb.append(d);
            return;
        }
        if (d < 0.0d) {
            d = -d;
            sb.append('-');
        }
        if (i == 0) {
            sb.append(Math.round(d));
            return;
        }
        long pow = (long) Math.pow(10.0d, i);
        long round = Math.round(pow * d);
        sb.append(round / pow);
        sb.append(FilenameUtils.EXTENSION_SEPARATOR);
        long j = round % pow;
        if (j == 0) {
            for (int i2 = 0; i2 < i; i2++) {
                sb.append('0');
            }
            return;
        }
        for (long j2 = j * 10; j2 < pow; j2 *= 10) {
            sb.append('0');
        }
        sb.append(j);
    }

    static boolean c() {
        return new File(new StringBuilder().append(t.c.f.c()).append("/../lib/libImmEndpointWarpJ.so").toString()).exists();
    }

    static String a(String str, String str2) {
        String sb;
        if (str != null) {
            try {
                al.f3721a.a("Loading ").b((Object) str);
                FileInputStream fileInputStream = new FileInputStream(str);
                synchronized (f3853a) {
                    f3854b.setLength(0);
                    f3854b.append(str2);
                    for (int read = fileInputStream.read(f3853a, 0, f3853a.length); read != -1; read = fileInputStream.read(f3853a, 0, f3853a.length)) {
                        for (int i = 0; i < read; i++) {
                            f3854b.append((char) f3853a[i]);
                        }
                    }
                    fileInputStream.close();
                    sb = f3854b.toString();
                }
                return sb;
            } catch (IOException e) {
                al.d.a("Unable to load ").b((Object) str);
                return "";
            }
        }
        return "";
    }

    static boolean d() {
        return t.E != null && t.b().checkCallingOrSelfPermission("android.permission.VIBRATE") == 0;
    }

    static String e() {
        return t.E == null ? "" : t.b().getPackageName();
    }

    static class a {

        /* renamed from: a, reason: collision with root package name */
        long f3855a = System.currentTimeMillis();

        a() {
        }

        void a() {
            this.f3855a = System.currentTimeMillis();
        }

        double b() {
            return (System.currentTimeMillis() - this.f3855a) / 1000.0d;
        }

        public String toString() {
            return u.a(b(), 2);
        }
    }

    static class b {

        /* renamed from: a, reason: collision with root package name */
        double f3856a = System.currentTimeMillis();

        b(double d) {
            a(d);
        }

        void a(double d) {
            this.f3856a = (System.currentTimeMillis() / 1000.0d) + d;
        }

        boolean a() {
            return b() == 0.0d;
        }

        double b() {
            double currentTimeMillis = this.f3856a - (System.currentTimeMillis() / 1000.0d);
            if (currentTimeMillis <= 0.0d) {
                return 0.0d;
            }
            return currentTimeMillis;
        }

        public String toString() {
            return u.a(b(), 2);
        }
    }
}
