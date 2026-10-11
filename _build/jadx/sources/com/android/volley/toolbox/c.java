package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.b;
import com.android.volley.t;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: DiskBasedCache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c implements com.android.volley.b {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, a> f273a;

    /* renamed from: b, reason: collision with root package name */
    private long f274b;
    private final File c;
    private final int d;

    public c(File file, int i) {
        this.f273a = new LinkedHashMap(16, 0.75f, true);
        this.f274b = 0L;
        this.c = file;
        this.d = i;
    }

    public c(File file) {
        this(file, 5242880);
    }

    @Override // com.android.volley.b
    public synchronized b.a a(String str) {
        b bVar;
        b.a aVar;
        File c;
        a aVar2 = this.f273a.get(str);
        if (aVar2 == null) {
            aVar = null;
        } else {
            try {
                c = c(str);
            } catch (Throwable th) {
                th = th;
            }
            try {
                bVar = new b(new FileInputStream(c));
                try {
                    a.a(bVar);
                    aVar = aVar2.a(a(bVar, (int) (c.length() - bVar.f277a)));
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (IOException e) {
                            aVar = null;
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    t.b("%s: %s", c.getAbsolutePath(), e.toString());
                    b(str);
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (IOException e3) {
                            aVar = null;
                        }
                    }
                    aVar = null;
                    return aVar;
                } catch (NegativeArraySizeException e4) {
                    b(str);
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (IOException e5) {
                            aVar = null;
                        }
                    }
                    aVar = null;
                    return aVar;
                } catch (OutOfMemoryError e6) {
                    b(str);
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (IOException e7) {
                            aVar = null;
                        }
                    }
                    aVar = null;
                    return aVar;
                }
            } catch (IOException e8) {
                e = e8;
                bVar = null;
            } catch (NegativeArraySizeException e9) {
                bVar = null;
            } catch (OutOfMemoryError e10) {
                bVar = null;
            } catch (Throwable th2) {
                th = th2;
                bVar = null;
                if (bVar != null) {
                    try {
                        bVar.close();
                    } catch (IOException e11) {
                        aVar = null;
                    }
                }
                throw th;
            }
        }
        return aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.android.volley.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a() {
        /*
            r9 = this;
            r0 = 0
            monitor-enter(r9)
            java.io.File r1 = r9.c     // Catch: java.lang.Throwable -> L7f
            boolean r1 = r1.exists()     // Catch: java.lang.Throwable -> L7f
            if (r1 != 0) goto L25
            java.io.File r0 = r9.c     // Catch: java.lang.Throwable -> L7f
            boolean r0 = r0.mkdirs()     // Catch: java.lang.Throwable -> L7f
            if (r0 != 0) goto L23
            java.lang.String r0 = "Unable to create cache dir %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L7f
            r2 = 0
            java.io.File r3 = r9.c     // Catch: java.lang.Throwable -> L7f
            java.lang.String r3 = r3.getAbsolutePath()     // Catch: java.lang.Throwable -> L7f
            r1[r2] = r3     // Catch: java.lang.Throwable -> L7f
            com.android.volley.t.c(r0, r1)     // Catch: java.lang.Throwable -> L7f
        L23:
            monitor-exit(r9)
            return
        L25:
            java.io.File r1 = r9.c     // Catch: java.lang.Throwable -> L7f
            java.io.File[] r3 = r1.listFiles()     // Catch: java.lang.Throwable -> L7f
            if (r3 == 0) goto L23
            int r4 = r3.length     // Catch: java.lang.Throwable -> L7f
            r2 = r0
        L2f:
            if (r2 >= r4) goto L23
            r5 = r3[r2]     // Catch: java.lang.Throwable -> L7f
            r1 = 0
            java.io.BufferedInputStream r0 = new java.io.BufferedInputStream     // Catch: java.io.IOException -> L56 java.lang.NegativeArraySizeException -> L65 java.lang.Throwable -> L78 java.lang.OutOfMemoryError -> L82
            java.io.FileInputStream r6 = new java.io.FileInputStream     // Catch: java.io.IOException -> L56 java.lang.NegativeArraySizeException -> L65 java.lang.Throwable -> L78 java.lang.OutOfMemoryError -> L82
            r6.<init>(r5)     // Catch: java.io.IOException -> L56 java.lang.NegativeArraySizeException -> L65 java.lang.Throwable -> L78 java.lang.OutOfMemoryError -> L82
            r0.<init>(r6)     // Catch: java.io.IOException -> L56 java.lang.NegativeArraySizeException -> L65 java.lang.Throwable -> L78 java.lang.OutOfMemoryError -> L82
            com.android.volley.toolbox.c$a r1 = com.android.volley.toolbox.c.a.a(r0)     // Catch: java.lang.Throwable -> L95 java.lang.OutOfMemoryError -> L9a java.lang.NegativeArraySizeException -> L9c java.io.IOException -> La1
            long r6 = r5.length()     // Catch: java.lang.Throwable -> L95 java.lang.OutOfMemoryError -> L9a java.lang.NegativeArraySizeException -> L9c java.io.IOException -> La1
            r1.f275a = r6     // Catch: java.lang.Throwable -> L95 java.lang.OutOfMemoryError -> L9a java.lang.NegativeArraySizeException -> L9c java.io.IOException -> La1
            java.lang.String r6 = r1.f276b     // Catch: java.lang.Throwable -> L95 java.lang.OutOfMemoryError -> L9a java.lang.NegativeArraySizeException -> L9c java.io.IOException -> La1
            r9.a(r6, r1)     // Catch: java.lang.Throwable -> L95 java.lang.OutOfMemoryError -> L9a java.lang.NegativeArraySizeException -> L9c java.io.IOException -> La1
            if (r0 == 0) goto L52
            r0.close()     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L91
        L52:
            int r0 = r2 + 1
            r2 = r0
            goto L2f
        L56:
            r0 = move-exception
            r0 = r1
        L58:
            if (r5 == 0) goto L5d
            r5.delete()     // Catch: java.lang.Throwable -> L95
        L5d:
            if (r0 == 0) goto L52
            r0.close()     // Catch: java.io.IOException -> L63 java.lang.Throwable -> L7f
            goto L52
        L63:
            r0 = move-exception
            goto L52
        L65:
            r0 = move-exception
        L66:
            if (r5 == 0) goto L6b
            r5.delete()     // Catch: java.lang.Exception -> L73 java.lang.Throwable -> L78
        L6b:
            if (r1 == 0) goto L52
            r1.close()     // Catch: java.io.IOException -> L71 java.lang.Throwable -> L7f
            goto L52
        L71:
            r0 = move-exception
            goto L52
        L73:
            r5 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L78
            goto L6b
        L78:
            r0 = move-exception
        L79:
            if (r1 == 0) goto L7e
            r1.close()     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L93
        L7e:
            throw r0     // Catch: java.lang.Throwable -> L7f
        L7f:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        L82:
            r0 = move-exception
            r0 = r1
        L84:
            if (r5 == 0) goto L89
            r5.delete()     // Catch: java.lang.Throwable -> L95
        L89:
            if (r0 == 0) goto L52
            r0.close()     // Catch: java.lang.Throwable -> L7f java.io.IOException -> L8f
            goto L52
        L8f:
            r0 = move-exception
            goto L52
        L91:
            r0 = move-exception
            goto L52
        L93:
            r1 = move-exception
            goto L7e
        L95:
            r1 = move-exception
            r8 = r1
            r1 = r0
            r0 = r8
            goto L79
        L9a:
            r1 = move-exception
            goto L84
        L9c:
            r1 = move-exception
            r8 = r1
            r1 = r0
            r0 = r8
            goto L66
        La1:
            r1 = move-exception
            goto L58
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.c.a():void");
    }

    @Override // com.android.volley.b
    public synchronized void a(String str, b.a aVar) {
        FileOutputStream fileOutputStream;
        a aVar2;
        a(aVar.f228a.length);
        File c = c(str);
        if (!this.c.exists()) {
            this.c.mkdirs();
        }
        try {
            fileOutputStream = new FileOutputStream(c);
            aVar2 = new a(str, aVar);
        } catch (IOException e) {
            if (!c.delete()) {
                t.b("Could not clean up file %s", c.getAbsolutePath());
            }
        }
        if (!aVar2.a(fileOutputStream)) {
            fileOutputStream.close();
            t.b("Failed to write header for %s", c.getAbsolutePath());
            throw new IOException();
        }
        fileOutputStream.write(aVar.f228a);
        fileOutputStream.close();
        a(str, aVar2);
    }

    public synchronized void b(String str) {
        boolean delete = c(str).delete();
        e(str);
        if (!delete) {
            t.b("Could not delete cache entry for key=%s, filename=%s", str, d(str));
        }
    }

    private String d(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    public File c(String str) {
        return new File(this.c, d(str));
    }

    private void a(int i) {
        int i2;
        if (this.f274b + i >= this.d) {
            if (t.f258b) {
                t.a("Pruning old cache entries.", new Object[0]);
            }
            long j = this.f274b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator<Map.Entry<String, a>> it = this.f273a.entrySet().iterator();
            int i3 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i2 = i3;
                    break;
                }
                a value = it.next().getValue();
                if (c(value.f276b).delete()) {
                    this.f274b -= value.f275a;
                } else {
                    t.b("Could not delete cache entry for key=%s, filename=%s", value.f276b, d(value.f276b));
                }
                it.remove();
                i2 = i3 + 1;
                if (this.f274b + i < this.d * 0.9f) {
                    break;
                } else {
                    i3 = i2;
                }
            }
            if (t.f258b) {
                t.a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.f274b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
            }
        }
    }

    private void a(String str, a aVar) {
        if (!this.f273a.containsKey(str)) {
            this.f274b += aVar.f275a;
        } else {
            this.f274b = (aVar.f275a - this.f273a.get(str).f275a) + this.f274b;
        }
        this.f273a.put(str, aVar);
    }

    private void e(String str) {
        a aVar = this.f273a.get(str);
        if (aVar != null) {
            this.f274b -= aVar.f275a;
            this.f273a.remove(str);
        }
    }

    private static byte[] a(InputStream inputStream, int i) throws IOException, NegativeArraySizeException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                break;
            }
            i2 += read;
        }
        if (i2 != i) {
            throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
        }
        return bArr;
    }

    /* compiled from: DiskBasedCache.java */
    static class a {

        /* renamed from: a, reason: collision with root package name */
        public long f275a;

        /* renamed from: b, reason: collision with root package name */
        public String f276b;
        public String c;
        public long d;
        public long e;
        public long f;
        public long g;
        public Map<String, String> h;

        private a() {
        }

        public a(String str, b.a aVar) {
            this.f276b = str;
            this.f275a = aVar.f228a.length;
            this.c = aVar.f229b;
            this.d = aVar.c;
            this.e = aVar.d;
            this.f = aVar.e;
            this.g = aVar.f;
            this.h = aVar.g;
        }

        public static a a(InputStream inputStream) throws IOException {
            a aVar = new a();
            if (c.a(inputStream) != 538247942) {
                throw new IOException();
            }
            aVar.f276b = c.c(inputStream);
            aVar.c = c.c(inputStream);
            if (aVar.c.equals("")) {
                aVar.c = null;
            }
            aVar.d = c.b(inputStream);
            aVar.e = c.b(inputStream);
            aVar.f = c.b(inputStream);
            aVar.g = c.b(inputStream);
            aVar.h = c.d(inputStream);
            return aVar;
        }

        public b.a a(byte[] bArr) {
            b.a aVar = new b.a();
            aVar.f228a = bArr;
            aVar.f229b = this.c;
            aVar.c = this.d;
            aVar.d = this.e;
            aVar.e = this.f;
            aVar.f = this.g;
            aVar.g = this.h;
            return aVar;
        }

        public boolean a(OutputStream outputStream) {
            try {
                c.a(outputStream, 538247942);
                c.a(outputStream, this.f276b);
                c.a(outputStream, this.c == null ? "" : this.c);
                c.a(outputStream, this.d);
                c.a(outputStream, this.e);
                c.a(outputStream, this.f);
                c.a(outputStream, this.g);
                c.a(this.h, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                t.b("%s", e.toString());
                return false;
            }
        }
    }

    /* compiled from: DiskBasedCache.java */
    private static class b extends FilterInputStream {

        /* renamed from: a, reason: collision with root package name */
        private int f277a;

        private b(InputStream inputStream) {
            super(inputStream);
            this.f277a = 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.f277a++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] buffer, int offset, int count) throws IOException {
            int read = super.read(buffer, offset, count);
            if (read != -1) {
                this.f277a += read;
            }
            return read;
        }
    }

    private static int e(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read == -1) {
            throw new EOFException();
        }
        return read;
    }

    static void a(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    static int a(InputStream inputStream) throws IOException {
        return 0 | (e(inputStream) << 0) | (e(inputStream) << 8) | (e(inputStream) << 16) | (e(inputStream) << 24);
    }

    static void a(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    static long b(InputStream inputStream) throws IOException {
        return 0 | ((e(inputStream) & 255) << 0) | ((e(inputStream) & 255) << 8) | ((e(inputStream) & 255) << 16) | ((e(inputStream) & 255) << 24) | ((e(inputStream) & 255) << 32) | ((e(inputStream) & 255) << 40) | ((e(inputStream) & 255) << 48) | ((e(inputStream) & 255) << 56);
    }

    static void a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    static String c(InputStream inputStream) throws IOException {
        return new String(a(inputStream, (int) b(inputStream)), "UTF-8");
    }

    static void a(Map<String, String> map, OutputStream outputStream) throws IOException {
        if (map != null) {
            a(outputStream, map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                a(outputStream, entry.getKey());
                a(outputStream, entry.getValue());
            }
            return;
        }
        a(outputStream, 0);
    }

    static Map<String, String> d(InputStream inputStream) throws IOException {
        int a2 = a(inputStream);
        Map<String, String> emptyMap = a2 == 0 ? Collections.emptyMap() : new HashMap<>(a2);
        for (int i = 0; i < a2; i++) {
            emptyMap.put(c(inputStream).intern(), c(inputStream).intern());
        }
        return emptyMap;
    }
}
