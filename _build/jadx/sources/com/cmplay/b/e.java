package com.cmplay.b;

import android.content.Context;
import android.os.Environment;
import android.os.Process;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: CacheUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static Map<String, e> f1185a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private a f1186b;

    public static synchronized e a(Context context) {
        e a2;
        synchronized (e.class) {
            a2 = a(context, "tiles2");
        }
        return a2;
    }

    public static synchronized e a(Context context, String str) {
        e a2;
        synchronized (e.class) {
            a2 = a(new File(Environment.getExternalStorageDirectory(), str), 50000000L, Integer.MAX_VALUE);
        }
        return a2;
    }

    public static synchronized e a(File file, long j, int i) {
        e eVar;
        synchronized (e.class) {
            eVar = f1185a.get(file.getAbsoluteFile() + a());
            if (eVar == null) {
                eVar = new e(file, j, i);
                f1185a.put(file.getAbsolutePath() + a(), eVar);
            }
        }
        return eVar;
    }

    private static String a() {
        return "_" + Process.myPid();
    }

    private e(File file, long j, int i) {
        if (!file.exists() && !file.mkdirs()) {
            Log.e("cache dir error", "can't make dirs in " + file.getAbsolutePath());
        } else {
            this.f1186b = new a(file, j, i);
        }
    }

    public void a(String str, String str2) {
        if (this.f1186b == null) {
            return;
        }
        File b2 = this.f1186b.b(str);
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(b2), 1024);
            try {
                bufferedWriter.write(str2);
                bufferedWriter.flush();
            } finally {
                bufferedWriter.close();
                this.f1186b.a(b2);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(java.lang.String r6) {
        /*
            r5 = this;
            r0 = 0
            com.cmplay.b.e$a r1 = r5.f1186b
            if (r1 != 0) goto L6
        L5:
            return r0
        L6:
            com.cmplay.b.e$a r1 = r5.f1186b
            java.io.File r1 = com.cmplay.b.e.a.b(r1, r6)
            boolean r2 = r1.exists()
            if (r2 == 0) goto L5
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.io.IOException -> L59 java.lang.Throwable -> L69
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.io.IOException -> L59 java.lang.Throwable -> L69
            r3.<init>(r1)     // Catch: java.io.IOException -> L59 java.lang.Throwable -> L69
            r2.<init>(r3)     // Catch: java.io.IOException -> L59 java.lang.Throwable -> L69
            java.lang.String r1 = ""
        L1e:
            java.lang.String r3 = r2.readLine()     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            if (r3 == 0) goto L36
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            r4.<init>()     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            java.lang.StringBuilder r1 = r4.append(r1)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            goto L1e
        L36:
            boolean r3 = com.cmplay.b.e.b.a(r1)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            if (r3 != 0) goto L4b
            java.lang.String r0 = com.cmplay.b.e.b.b(r1)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            if (r2 == 0) goto L5
            r2.close()     // Catch: java.io.IOException -> L46
            goto L5
        L46:
            r1 = move-exception
            r1.printStackTrace()
            goto L5
        L4b:
            if (r2 == 0) goto L50
            r2.close()     // Catch: java.io.IOException -> L54
        L50:
            r5.b(r6)
            goto L5
        L54:
            r1 = move-exception
            r1.printStackTrace()
            goto L50
        L59:
            r1 = move-exception
            r2 = r0
        L5b:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L77
            if (r2 == 0) goto L5
            r2.close()     // Catch: java.io.IOException -> L64
            goto L5
        L64:
            r1 = move-exception
            r1.printStackTrace()
            goto L5
        L69:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L6c:
            if (r2 == 0) goto L71
            r2.close()     // Catch: java.io.IOException -> L72
        L71:
            throw r0
        L72:
            r1 = move-exception
            r1.printStackTrace()
            goto L71
        L77:
            r0 = move-exception
            goto L6c
        L79:
            r1 = move-exception
            goto L5b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.b.e.a(java.lang.String):java.lang.String");
    }

    public boolean b(String str) {
        if (this.f1186b == null) {
            return false;
        }
        return this.f1186b.c(str);
    }

    /* compiled from: CacheUtils.java */
    public class a {

        /* renamed from: a, reason: collision with root package name */
        protected File f1187a;
        private final AtomicLong c;
        private final AtomicInteger d;
        private final long e;
        private final int f;
        private final Map<File, Long> g;

        private a(File file, long j, int i) {
            this.g = Collections.synchronizedMap(new HashMap());
            this.f1187a = file;
            this.e = j;
            this.f = i;
            this.c = new AtomicLong();
            this.d = new AtomicInteger();
            a();
        }

        private void a() {
            new Thread(new Runnable() { // from class: com.cmplay.b.e.a.1
                @Override // java.lang.Runnable
                public void run() {
                    File[] listFiles = a.this.f1187a.listFiles();
                    if (listFiles != null) {
                        int i = 0;
                        int i2 = 0;
                        for (File file : listFiles) {
                            i2 = (int) (i2 + a.this.b(file));
                            i++;
                            a.this.g.put(file, Long.valueOf(file.lastModified()));
                        }
                        a.this.c.set(i2);
                        a.this.d.set(i);
                    }
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(File file) {
            int i = this.d.get();
            while (i + 1 > this.f) {
                this.c.addAndGet(-b());
                i = this.d.addAndGet(-1);
            }
            this.d.addAndGet(1);
            long b2 = b(file);
            long j = this.c.get();
            while (j + b2 > this.e) {
                j = this.c.addAndGet(-b());
            }
            this.c.addAndGet(b2);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            file.setLastModified(valueOf.longValue());
            this.g.put(file, valueOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File a(String str) {
            File b2 = b(str);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            b2.setLastModified(valueOf.longValue());
            this.g.put(b2, valueOf);
            return b2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File b(String str) {
            return new File(this.f1187a, str.hashCode() + "");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean c(String str) {
            return a(str).delete();
        }

        private long b() {
            File file;
            Long l;
            File file2 = null;
            if (this.g.isEmpty()) {
                return 0L;
            }
            Set<Map.Entry<File, Long>> entrySet = this.g.entrySet();
            synchronized (this.g) {
                Long l2 = null;
                for (Map.Entry<File, Long> entry : entrySet) {
                    if (file2 == null) {
                        file = entry.getKey();
                        l = entry.getValue();
                    } else {
                        Long value = entry.getValue();
                        if (value.longValue() < l2.longValue()) {
                            File key = entry.getKey();
                            l = value;
                            file = key;
                        } else {
                            file = file2;
                            l = l2;
                        }
                    }
                    file2 = file;
                    l2 = l;
                }
            }
            long b2 = b(file2);
            if (file2 != null && file2.delete()) {
                this.g.remove(file2);
                return b2;
            }
            return b2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long b(File file) {
            if (file == null) {
                return 0L;
            }
            return file.length();
        }
    }

    /* compiled from: CacheUtils.java */
    private static class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static boolean c(String str) {
            return a(str.getBytes());
        }

        private static boolean a(byte[] bArr) {
            String[] c = c(bArr);
            if (c != null && c.length == 2) {
                String str = c[0];
                while (str.startsWith("0")) {
                    str = str.substring(1, str.length());
                }
                if (System.currentTimeMillis() > Long.valueOf(str).longValue() + (Long.valueOf(c[1]).longValue() * 1000)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String d(String str) {
            if (str != null && b(str.getBytes())) {
                return str.substring(str.indexOf(32) + 1, str.length());
            }
            return str;
        }

        private static boolean b(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && a(bArr, ' ') > 14;
        }

        private static String[] c(byte[] bArr) {
            if (b(bArr)) {
                return new String[]{new String(a(bArr, 0, 13)), new String(a(bArr, 14, a(bArr, ' ')))};
            }
            return null;
        }

        private static int a(byte[] bArr, char c) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == c) {
                    return i;
                }
            }
            return -1;
        }

        private static byte[] a(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 < 0) {
                throw new IllegalArgumentException(i + " > " + i2);
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
            return bArr2;
        }
    }
}
