package com.mopub.volley.toolbox;

import android.os.SystemClock;
import com.mopub.volley.Cache;
import com.mopub.volley.VolleyLog;
import java.io.BufferedInputStream;
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

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DiskBasedCache implements Cache {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, a> f4781a;

    /* renamed from: b, reason: collision with root package name */
    private long f4782b;
    private final File c;
    private final int d;

    public DiskBasedCache(File rootDirectory, int maxCacheSizeInBytes) {
        this.f4781a = new LinkedHashMap(16, 0.75f, true);
        this.f4782b = 0L;
        this.c = rootDirectory;
        this.d = maxCacheSizeInBytes;
    }

    public DiskBasedCache(File rootDirectory) {
        this(rootDirectory, 5242880);
    }

    @Override // com.mopub.volley.Cache
    public synchronized void clear() {
        synchronized (this) {
            File[] listFiles = this.c.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            this.f4781a.clear();
            this.f4782b = 0L;
            VolleyLog.d("Cache cleared.", new Object[0]);
        }
    }

    @Override // com.mopub.volley.Cache
    public synchronized Cache.Entry get(String key) {
        b bVar;
        Cache.Entry entry;
        File fileForKey;
        a aVar = this.f4781a.get(key);
        if (aVar == null) {
            entry = null;
        } else {
            try {
                fileForKey = getFileForKey(key);
            } catch (Throwable th) {
                th = th;
            }
            try {
                bVar = new b(new FileInputStream(fileForKey));
                try {
                    a.readHeader(bVar);
                    entry = aVar.toCacheEntry(a(bVar, (int) (fileForKey.length() - bVar.f4783a)));
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (IOException e) {
                            entry = null;
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    VolleyLog.d("%s: %s", fileForKey.getAbsolutePath(), e.toString());
                    remove(key);
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (IOException e3) {
                            entry = null;
                        }
                    }
                    entry = null;
                    return entry;
                }
            } catch (IOException e4) {
                e = e4;
                bVar = null;
            } catch (Throwable th2) {
                th = th2;
                bVar = null;
                if (bVar != null) {
                    try {
                        bVar.close();
                    } catch (IOException e5) {
                        entry = null;
                    }
                }
                throw th;
            }
        }
        return entry;
    }

    @Override // com.mopub.volley.Cache
    public synchronized void initialize() {
        BufferedInputStream bufferedInputStream;
        if (!this.c.exists()) {
            if (!this.c.mkdirs()) {
                VolleyLog.e("Unable to create cache dir %s", this.c.getAbsolutePath());
            }
        } else {
            File[] listFiles = this.c.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    BufferedInputStream bufferedInputStream2 = null;
                    try {
                        bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                        try {
                            try {
                                a readHeader = a.readHeader(bufferedInputStream);
                                readHeader.size = file.length();
                                a(readHeader.key, readHeader);
                                if (bufferedInputStream != null) {
                                    try {
                                        bufferedInputStream.close();
                                    } catch (IOException e) {
                                    }
                                }
                            } catch (IOException e2) {
                                if (file != null) {
                                    file.delete();
                                }
                                if (bufferedInputStream != null) {
                                    try {
                                        bufferedInputStream.close();
                                    } catch (IOException e3) {
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            bufferedInputStream2 = bufferedInputStream;
                            th = th;
                            if (bufferedInputStream2 != null) {
                                try {
                                    bufferedInputStream2.close();
                                } catch (IOException e4) {
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e5) {
                        bufferedInputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
        }
    }

    @Override // com.mopub.volley.Cache
    public synchronized void invalidate(String key, boolean fullExpire) {
        Cache.Entry entry = get(key);
        if (entry != null) {
            entry.softTtl = 0L;
            if (fullExpire) {
                entry.ttl = 0L;
            }
            put(key, entry);
        }
    }

    @Override // com.mopub.volley.Cache
    public synchronized void put(String key, Cache.Entry entry) {
        FileOutputStream fileOutputStream;
        a aVar;
        a(entry.data.length);
        File fileForKey = getFileForKey(key);
        try {
            fileOutputStream = new FileOutputStream(fileForKey);
            aVar = new a(key, entry);
        } catch (IOException e) {
            if (!fileForKey.delete()) {
                VolleyLog.d("Could not clean up file %s", fileForKey.getAbsolutePath());
            }
        }
        if (!aVar.writeHeader(fileOutputStream)) {
            fileOutputStream.close();
            VolleyLog.d("Failed to write header for %s", fileForKey.getAbsolutePath());
            throw new IOException();
        }
        fileOutputStream.write(entry.data);
        fileOutputStream.close();
        a(key, aVar);
    }

    @Override // com.mopub.volley.Cache
    public synchronized void remove(String key) {
        boolean delete = getFileForKey(key).delete();
        b(key);
        if (!delete) {
            VolleyLog.d("Could not delete cache entry for key=%s, filename=%s", key, a(key));
        }
    }

    private String a(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    public File getFileForKey(String key) {
        return new File(this.c, a(key));
    }

    private void a(int i) {
        int i2;
        if (this.f4782b + i >= this.d) {
            if (VolleyLog.DEBUG) {
                VolleyLog.v("Pruning old cache entries.", new Object[0]);
            }
            long j = this.f4782b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator<Map.Entry<String, a>> it = this.f4781a.entrySet().iterator();
            int i3 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i2 = i3;
                    break;
                }
                a value = it.next().getValue();
                if (getFileForKey(value.key).delete()) {
                    this.f4782b -= value.size;
                } else {
                    VolleyLog.d("Could not delete cache entry for key=%s, filename=%s", value.key, a(value.key));
                }
                it.remove();
                i2 = i3 + 1;
                if (this.f4782b + i < this.d * 0.9f) {
                    break;
                } else {
                    i3 = i2;
                }
            }
            if (VolleyLog.DEBUG) {
                VolleyLog.v("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.f4782b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
            }
        }
    }

    private void a(String str, a aVar) {
        if (!this.f4781a.containsKey(str)) {
            this.f4782b += aVar.size;
        } else {
            this.f4782b = (aVar.size - this.f4781a.get(str).size) + this.f4782b;
        }
        this.f4781a.put(str, aVar);
    }

    private void b(String str) {
        a aVar = this.f4781a.get(str);
        if (aVar != null) {
            this.f4782b -= aVar.size;
            this.f4781a.remove(str);
        }
    }

    private static byte[] a(InputStream inputStream, int i) throws IOException {
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

    static class a {
        public String etag;
        public String key;
        public Map<String, String> responseHeaders;
        public long serverDate;
        public long size;
        public long softTtl;
        public long ttl;

        private a() {
        }

        public a(String str, Cache.Entry entry) {
            this.key = str;
            this.size = entry.data.length;
            this.etag = entry.etag;
            this.serverDate = entry.serverDate;
            this.ttl = entry.ttl;
            this.softTtl = entry.softTtl;
            this.responseHeaders = entry.responseHeaders;
        }

        public static a readHeader(InputStream is) throws IOException {
            a aVar = new a();
            if (DiskBasedCache.a(is) != 538183203) {
                throw new IOException();
            }
            aVar.key = DiskBasedCache.c(is);
            aVar.etag = DiskBasedCache.c(is);
            if (aVar.etag.equals("")) {
                aVar.etag = null;
            }
            aVar.serverDate = DiskBasedCache.b(is);
            aVar.ttl = DiskBasedCache.b(is);
            aVar.softTtl = DiskBasedCache.b(is);
            aVar.responseHeaders = DiskBasedCache.d(is);
            return aVar;
        }

        public Cache.Entry toCacheEntry(byte[] data) {
            Cache.Entry entry = new Cache.Entry();
            entry.data = data;
            entry.etag = this.etag;
            entry.serverDate = this.serverDate;
            entry.ttl = this.ttl;
            entry.softTtl = this.softTtl;
            entry.responseHeaders = this.responseHeaders;
            return entry;
        }

        public boolean writeHeader(OutputStream os) {
            try {
                DiskBasedCache.a(os, 538183203);
                DiskBasedCache.a(os, this.key);
                DiskBasedCache.a(os, this.etag == null ? "" : this.etag);
                DiskBasedCache.a(os, this.serverDate);
                DiskBasedCache.a(os, this.ttl);
                DiskBasedCache.a(os, this.softTtl);
                DiskBasedCache.a(this.responseHeaders, os);
                os.flush();
                return true;
            } catch (IOException e) {
                VolleyLog.d("%s", e.toString());
                return false;
            }
        }
    }

    private static class b extends FilterInputStream {

        /* renamed from: a, reason: collision with root package name */
        private int f4783a;

        private b(InputStream inputStream) {
            super(inputStream);
            this.f4783a = 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.f4783a++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] buffer, int offset, int count) throws IOException {
            int read = super.read(buffer, offset, count);
            if (read != -1) {
                this.f4783a += read;
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
