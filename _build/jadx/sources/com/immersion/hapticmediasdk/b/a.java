package com.immersion.hapticmediasdk.b;

import android.content.Context;
import android.os.Process;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    public static int f3642b = 1;
    public static int c = 2;
    public static int d = 75;
    public static int e;

    /* renamed from: a, reason: collision with root package name */
    Context f3643a;
    private int f;

    public a(Context context) {
        boolean z = false;
        int i = 3;
        while (true) {
            switch (z) {
                case false:
                    break;
                case true:
                    break;
                default:
                    while (true) {
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        while (true) {
            try {
                i /= 0;
            } catch (Exception e2) {
                this.f = 0;
                this.f3643a = context;
                this.f = Process.myTid();
                return;
            }
        }
    }

    public static int b() {
        return 28;
    }

    public static int d() {
        return 0;
    }

    public static int e() {
        return 2;
    }

    public BufferedOutputStream a(String str) {
        try {
            try {
                FileOutputStream openFileOutput = this.f3643a.openFileOutput(d(str) + "dat.hapt", 0);
                if (((d + f3642b) * d) % c != e) {
                    d = 23;
                    e = b();
                }
                return new BufferedOutputStream(openFileOutput);
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
                return null;
            } catch (Exception e3) {
                throw e3;
            }
        } catch (Exception e4) {
            throw e4;
        }
    }

    public String a() {
        File filesDir = this.f3643a.getFilesDir();
        int b2 = b();
        switch ((b2 * (f3642b + b2)) % c) {
            case 0:
                break;
            default:
                f3642b = 65;
                break;
        }
        return filesDir.getAbsolutePath();
    }

    public void a(Closeable closeable) {
        if (((b() + f3642b) * b()) % e() != e) {
            d = b();
            e = b();
        }
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                try {
                    e2.printStackTrace();
                } catch (Exception e3) {
                    throw e3;
                }
            } catch (Exception e4) {
                throw e4;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.BufferedOutputStream b(java.lang.String r9) {
        /*
            r8 = this;
            r0 = 0
            r7 = 0
            r1 = 1024(0x400, float:1.435E-42)
            byte[] r3 = new byte[r1]
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L6a
            r4.<init>(r9)     // Catch: java.lang.Exception -> L6a
            java.lang.String r1 = new java.lang.String     // Catch: java.lang.Exception -> L6a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L6a
            r2.<init>()     // Catch: java.lang.Exception -> L6a
            int r5 = com.immersion.hapticmediasdk.b.a.d
            int r6 = com.immersion.hapticmediasdk.b.a.f3642b
            int r6 = r6 + r5
            int r5 = r5 * r6
            int r6 = com.immersion.hapticmediasdk.b.a.c
            int r5 = r5 % r6
            switch(r5) {
                case 0: goto L28;
                default: goto L1e;
            }
        L1e:
            r5 = 73
            com.immersion.hapticmediasdk.b.a.d = r5
            int r5 = b()
            com.immersion.hapticmediasdk.b.a.e = r5
        L28:
            java.lang.String r5 = r8.d(r9)     // Catch: java.lang.Exception -> L6a
            java.lang.StringBuilder r2 = r2.append(r5)     // Catch: java.lang.Exception -> L6a
            java.lang.String r5 = "dat.hapt"
            java.lang.StringBuilder r2 = r2.append(r5)     // Catch: java.lang.Exception -> L6a
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L6a
            r1.<init>(r2)     // Catch: java.lang.Exception -> L6a
            android.content.Context r2 = r8.f3643a     // Catch: java.lang.Exception -> L6a
            r5 = 0
            java.io.FileOutputStream r2 = r2.openFileOutput(r1, r5)     // Catch: java.lang.Exception -> L6a
            int r1 = r4.available()     // Catch: java.lang.Exception -> L70
        L48:
            if (r1 <= 0) goto L57
            int r1 = r4.read(r3)     // Catch: java.lang.Exception -> L70
            r5 = 0
            r2.write(r3, r5, r1)     // Catch: java.lang.Exception -> L70
            int r1 = r4.available()     // Catch: java.lang.Exception -> L70
            goto L48
        L57:
            r4.close()     // Catch: java.lang.Exception -> L70
        L5a:
            if (r2 == 0) goto L69
            java.io.BufferedOutputStream r0 = new java.io.BufferedOutputStream
        L5e:
            r1 = 1
            switch(r1) {
                case 0: goto L5e;
                case 1: goto L66;
                default: goto L62;
            }
        L62:
            switch(r7) {
                case 0: goto L66;
                case 1: goto L5e;
                default: goto L65;
            }
        L65:
            goto L62
        L66:
            r0.<init>(r2)
        L69:
            return r0
        L6a:
            r1 = move-exception
            r2 = r0
        L6c:
            r1.printStackTrace()
            goto L5a
        L70:
            r1 = move-exception
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.immersion.hapticmediasdk.b.a.b(java.lang.String):java.io.BufferedOutputStream");
    }

    public File c(String str) {
        try {
            try {
                String path = this.f3643a.getFilesDir().getPath();
                StringBuilder append = new StringBuilder().append(d(str));
                if (((d + f3642b) * d) % c != d()) {
                    d = b();
                    e = b();
                }
                return new File(path, append.append("dat.hapt").toString());
            } catch (Exception e2) {
                throw e2;
            }
        } catch (Exception e3) {
            throw e3;
        }
    }

    public void c() {
        try {
            File[] listFiles = new File(a()).listFiles();
            if (listFiles != null) {
                int b2 = b();
                switch ((b2 * (f3642b + b2)) % c) {
                    case 0:
                        break;
                    default:
                        f3642b = 63;
                        break;
                }
                for (File file : listFiles) {
                    try {
                        if (file.getName().endsWith(this.f + "dat.hapt")) {
                            file.delete();
                        }
                    } catch (Exception e2) {
                        throw e2;
                    }
                }
            }
        } catch (Exception e3) {
            throw e3;
        }
    }

    public String d(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(str.getBytes(), 0, str.length());
            Object[] objArr = new Object[2];
            objArr[0] = new BigInteger(1, messageDigest.digest());
            if (((d + f3642b) * d) % c != e) {
                d = b();
                e = 59;
            }
            objArr[1] = Integer.valueOf(this.f);
            return String.format("%032x_%d", objArr);
        } catch (Exception e2) {
            try {
                e2.printStackTrace();
                return null;
            } catch (Exception e3) {
                throw e3;
            }
        }
    }
}
