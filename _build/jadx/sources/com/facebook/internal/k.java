package com.facebook.internal;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* compiled from: FileLruCache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    static final String f3207a = k.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static final AtomicLong f3208b = new AtomicLong();
    private final String c;
    private final d d;
    private final File e;
    private boolean f;
    private boolean g;
    private AtomicLong i = new AtomicLong(0);
    private final Object h = new Object();

    /* compiled from: FileLruCache.java */
    private interface f {
        void a();
    }

    public k(String str, d dVar) {
        this.c = str;
        this.d = dVar;
        this.e = new File(com.facebook.l.m(), str);
        if (this.e.mkdirs() || this.e.isDirectory()) {
            a.a(this.e);
        }
    }

    public InputStream a(String str) throws IOException {
        return a(str, (String) null);
    }

    public InputStream a(String str, String str2) throws IOException {
        File file = new File(this.e, aa.b(str));
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 8192);
            try {
                JSONObject a2 = g.a(bufferedInputStream);
                if (a2 == null) {
                    return null;
                }
                String optString = a2.optString("key");
                if (optString == null || !optString.equals(str)) {
                    return null;
                }
                String optString2 = a2.optString("tag", null);
                if ((str2 == null && optString2 != null) || (str2 != null && !str2.equals(optString2))) {
                    return null;
                }
                long time = new Date().getTime();
                s.a(com.facebook.u.CACHE, f3207a, "Setting lastModified to " + Long.valueOf(time) + " for " + file.getName());
                file.setLastModified(time);
                return bufferedInputStream;
            } finally {
                bufferedInputStream.close();
            }
        } catch (IOException e2) {
            return null;
        }
    }

    public OutputStream b(String str) throws IOException {
        return b(str, null);
    }

    public OutputStream b(final String str, String str2) throws IOException {
        final File b2 = a.b(this.e);
        b2.delete();
        if (!b2.createNewFile()) {
            throw new IOException("Could not create file at " + b2.getAbsolutePath());
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(b2);
            final long currentTimeMillis = System.currentTimeMillis();
            b bVar = new b(fileOutputStream, new f() { // from class: com.facebook.internal.k.1
                @Override // com.facebook.internal.k.f
                public void a() {
                    if (currentTimeMillis >= k.this.i.get()) {
                        k.this.a(str, b2);
                    } else {
                        b2.delete();
                    }
                }
            });
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(bVar, 8192);
            try {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", str);
                    if (!aa.a(str2)) {
                        jSONObject.put("tag", str2);
                    }
                    g.a(bufferedOutputStream, jSONObject);
                    return bufferedOutputStream;
                } catch (JSONException e2) {
                    s.a(com.facebook.u.CACHE, 5, f3207a, "Error creating JSON header for cache file: " + e2);
                    throw new IOException(e2.getMessage());
                }
            } catch (Throwable th) {
                bufferedOutputStream.close();
                bVar.close();
                throw th;
            }
        } catch (FileNotFoundException e3) {
            s.a(com.facebook.u.CACHE, 5, f3207a, "Error creating buffer output stream: " + e3);
            throw new IOException(e3.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, File file) {
        if (!file.renameTo(new File(this.e, aa.b(str)))) {
            file.delete();
        }
        b();
    }

    public InputStream a(String str, InputStream inputStream) throws IOException {
        return new c(inputStream, b(str));
    }

    public String toString() {
        return "{FileLruCache: tag:" + this.c + " file:" + this.e.getName() + "}";
    }

    private void b() {
        synchronized (this.h) {
            if (!this.f) {
                this.f = true;
                com.facebook.l.d().execute(new Runnable() { // from class: com.facebook.internal.k.2
                    @Override // java.lang.Runnable
                    public void run() {
                        k.this.c();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        synchronized (this.h) {
            this.f = false;
            this.g = true;
        }
        try {
            s.a(com.facebook.u.CACHE, f3207a, "trim started");
            PriorityQueue priorityQueue = new PriorityQueue();
            long j = 0;
            long j2 = 0;
            File[] listFiles = this.e.listFiles(a.a());
            if (listFiles != null) {
                int length = listFiles.length;
                int i = 0;
                while (i < length) {
                    File file = listFiles[i];
                    e eVar = new e(file);
                    priorityQueue.add(eVar);
                    s.a(com.facebook.u.CACHE, f3207a, "  trim considering time=" + Long.valueOf(eVar.b()) + " name=" + eVar.a().getName());
                    i++;
                    j2 = 1 + j2;
                    j = file.length() + j;
                }
            }
            long j3 = j;
            while (true) {
                long j4 = j2;
                if (j3 > this.d.a() || j4 > this.d.b()) {
                    File a2 = ((e) priorityQueue.remove()).a();
                    s.a(com.facebook.u.CACHE, f3207a, "  trim removing " + a2.getName());
                    j3 -= a2.length();
                    j2 = j4 - 1;
                    a2.delete();
                } else {
                    synchronized (this.h) {
                        this.g = false;
                        this.h.notifyAll();
                    }
                    return;
                }
            }
        } catch (Throwable th) {
            synchronized (this.h) {
                this.g = false;
                this.h.notifyAll();
                throw th;
            }
        }
    }

    /* compiled from: FileLruCache.java */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final FilenameFilter f3212a = new FilenameFilter() { // from class: com.facebook.internal.k.a.1
            @Override // java.io.FilenameFilter
            public boolean accept(File dir, String filename) {
                return !filename.startsWith("buffer");
            }
        };

        /* renamed from: b, reason: collision with root package name */
        private static final FilenameFilter f3213b = new FilenameFilter() { // from class: com.facebook.internal.k.a.2
            @Override // java.io.FilenameFilter
            public boolean accept(File dir, String filename) {
                return filename.startsWith("buffer");
            }
        };

        static void a(File file) {
            File[] listFiles = file.listFiles(b());
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    file2.delete();
                }
            }
        }

        static FilenameFilter a() {
            return f3212a;
        }

        static FilenameFilter b() {
            return f3213b;
        }

        static File b(File file) {
            return new File(file, "buffer" + Long.valueOf(k.f3208b.incrementAndGet()).toString());
        }
    }

    /* compiled from: FileLruCache.java */
    private static final class g {
        static void a(OutputStream outputStream, JSONObject jSONObject) throws IOException {
            byte[] bytes = jSONObject.toString().getBytes();
            outputStream.write(0);
            outputStream.write((bytes.length >> 16) & 255);
            outputStream.write((bytes.length >> 8) & 255);
            outputStream.write((bytes.length >> 0) & 255);
            outputStream.write(bytes);
        }

        static JSONObject a(InputStream inputStream) throws IOException {
            JSONObject jSONObject;
            int i = 0;
            if (inputStream.read() != 0) {
                return null;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < 3; i3++) {
                int read = inputStream.read();
                if (read == -1) {
                    s.a(com.facebook.u.CACHE, k.f3207a, "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                i2 = (i2 << 8) + (read & 255);
            }
            byte[] bArr = new byte[i2];
            while (i < bArr.length) {
                int read2 = inputStream.read(bArr, i, bArr.length - i);
                if (read2 < 1) {
                    s.a(com.facebook.u.CACHE, k.f3207a, "readHeader: stream.read stopped at " + Integer.valueOf(i) + " when expected " + bArr.length);
                    return null;
                }
                i += read2;
            }
            try {
                Object nextValue = new JSONTokener(new String(bArr)).nextValue();
                if (!(nextValue instanceof JSONObject)) {
                    s.a(com.facebook.u.CACHE, k.f3207a, "readHeader: expected JSONObject, got " + nextValue.getClass().getCanonicalName());
                    jSONObject = null;
                } else {
                    jSONObject = (JSONObject) nextValue;
                }
                return jSONObject;
            } catch (JSONException e) {
                throw new IOException(e.getMessage());
            }
        }
    }

    /* compiled from: FileLruCache.java */
    private static class b extends OutputStream {

        /* renamed from: a, reason: collision with root package name */
        final OutputStream f3214a;

        /* renamed from: b, reason: collision with root package name */
        final f f3215b;

        b(OutputStream outputStream, f fVar) {
            this.f3214a = outputStream;
            this.f3215b = fVar;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.f3214a.close();
            } finally {
                this.f3215b.a();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f3214a.flush();
        }

        @Override // java.io.OutputStream
        public void write(byte[] buffer, int offset, int count) throws IOException {
            this.f3214a.write(buffer, offset, count);
        }

        @Override // java.io.OutputStream
        public void write(byte[] buffer) throws IOException {
            this.f3214a.write(buffer);
        }

        @Override // java.io.OutputStream
        public void write(int oneByte) throws IOException {
            this.f3214a.write(oneByte);
        }
    }

    /* compiled from: FileLruCache.java */
    private static final class c extends InputStream {

        /* renamed from: a, reason: collision with root package name */
        final InputStream f3216a;

        /* renamed from: b, reason: collision with root package name */
        final OutputStream f3217b;

        c(InputStream inputStream, OutputStream outputStream) {
            this.f3216a = inputStream;
            this.f3217b = outputStream;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f3216a.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.f3216a.close();
            } finally {
                this.f3217b.close();
            }
        }

        @Override // java.io.InputStream
        public void mark(int readlimit) {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.InputStream
        public int read(byte[] buffer) throws IOException {
            int read = this.f3216a.read(buffer);
            if (read > 0) {
                this.f3217b.write(buffer, 0, read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int read = this.f3216a.read();
            if (read >= 0) {
                this.f3217b.write(read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read(byte[] buffer, int offset, int length) throws IOException {
            int read = this.f3216a.read(buffer, offset, length);
            if (read > 0) {
                this.f3217b.write(buffer, offset, read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public long skip(long byteCount) throws IOException {
            int read;
            byte[] bArr = new byte[1024];
            long j = 0;
            while (j < byteCount && (read = read(bArr, 0, (int) Math.min(byteCount - j, bArr.length))) >= 0) {
                j += read;
            }
            return j;
        }
    }

    /* compiled from: FileLruCache.java */
    public static final class d {

        /* renamed from: b, reason: collision with root package name */
        private int f3219b = 1024;

        /* renamed from: a, reason: collision with root package name */
        private int f3218a = 1048576;

        int a() {
            return this.f3218a;
        }

        int b() {
            return this.f3219b;
        }
    }

    /* compiled from: FileLruCache.java */
    private static final class e implements Comparable<e> {

        /* renamed from: a, reason: collision with root package name */
        private final File f3220a;

        /* renamed from: b, reason: collision with root package name */
        private final long f3221b;

        e(File file) {
            this.f3220a = file;
            this.f3221b = file.lastModified();
        }

        File a() {
            return this.f3220a;
        }

        long b() {
            return this.f3221b;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(e eVar) {
            if (b() < eVar.b()) {
                return -1;
            }
            if (b() > eVar.b()) {
                return 1;
            }
            return a().compareTo(eVar.a());
        }

        public boolean equals(Object another) {
            return (another instanceof e) && compareTo((e) another) == 0;
        }

        public int hashCode() {
            return ((this.f3220a.hashCode() + 1073) * 37) + ((int) (this.f3221b % 2147483647L));
        }
    }
}
