package com.mopub.common;

import android.support.annotation.NonNull;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class DiskLruCache implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    static final Pattern f4133a = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream p = new OutputStream() { // from class: com.mopub.common.DiskLruCache.2
        @Override // java.io.OutputStream
        public void write(int b2) throws IOException {
        }
    };
    private final File c;
    private final File d;
    private final File e;
    private final File f;
    private final int g;
    private long h;
    private final int i;
    private Writer k;
    private int m;
    private long j = 0;
    private final LinkedHashMap<String, a> l = new LinkedHashMap<>(0, 0.75f, true);
    private long n = 0;

    /* renamed from: b, reason: collision with root package name */
    final ThreadPoolExecutor f4134b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> o = new Callable<Void>() { // from class: com.mopub.common.DiskLruCache.1
        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.k != null) {
                    DiskLruCache.this.g();
                    if (DiskLruCache.this.e()) {
                        DiskLruCache.this.d();
                        DiskLruCache.this.m = 0;
                    }
                }
            }
            return null;
        }
    };

    private DiskLruCache(File directory, int appVersion, int valueCount, long maxSize) {
        this.c = directory;
        this.g = appVersion;
        this.d = new File(directory, "journal");
        this.e = new File(directory, "journal.tmp");
        this.f = new File(directory, "journal.bkp");
        this.i = valueCount;
        this.h = maxSize;
    }

    public static DiskLruCache open(File directory, int appVersion, int valueCount, long maxSize) throws IOException {
        if (maxSize <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (valueCount <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file = new File(directory, "journal.bkp");
        if (file.exists()) {
            File file2 = new File(directory, "journal");
            if (file2.exists()) {
                file.delete();
            } else {
                a(file, file2, false);
            }
        }
        DiskLruCache diskLruCache = new DiskLruCache(directory, appVersion, valueCount, maxSize);
        if (diskLruCache.d.exists()) {
            try {
                diskLruCache.b();
                diskLruCache.c();
                diskLruCache.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(diskLruCache.d, true), DiskLruCacheUtil.f4143a));
                return diskLruCache;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + directory + " is corrupt: " + e.getMessage() + ", removing");
                diskLruCache.delete();
            }
        }
        directory.mkdirs();
        DiskLruCache diskLruCache2 = new DiskLruCache(directory, appVersion, valueCount, maxSize);
        diskLruCache2.d();
        return diskLruCache2;
    }

    private void b() throws IOException {
        b bVar = new b(new FileInputStream(this.d), DiskLruCacheUtil.f4143a);
        try {
            String readLine = bVar.readLine();
            String readLine2 = bVar.readLine();
            String readLine3 = bVar.readLine();
            String readLine4 = bVar.readLine();
            String readLine5 = bVar.readLine();
            if (!"libcore.io.DiskLruCache".equals(readLine) || !"1".equals(readLine2) || !Integer.toString(this.g).equals(readLine3) || !Integer.toString(this.i).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + ", " + readLine2 + ", " + readLine4 + ", " + readLine5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    a(bVar.readLine());
                    i++;
                } catch (EOFException e) {
                    this.m = i - this.l.size();
                    DiskLruCacheUtil.a(bVar);
                    return;
                }
            }
        } catch (Throwable th) {
            DiskLruCacheUtil.a(bVar);
            throw th;
        }
    }

    private void a(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            String substring2 = str.substring(i);
            if (indexOf == "REMOVE".length() && str.startsWith("REMOVE")) {
                this.l.remove(substring2);
                return;
            }
            substring = substring2;
        } else {
            substring = str.substring(i, indexOf2);
        }
        a aVar = this.l.get(substring);
        if (aVar == null) {
            aVar = new a(substring);
            this.l.put(substring, aVar);
        }
        if (indexOf2 != -1 && indexOf == "CLEAN".length() && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            aVar.d = true;
            aVar.e = null;
            aVar.a(split);
            return;
        }
        if (indexOf2 != -1 || indexOf != "DIRTY".length() || !str.startsWith("DIRTY")) {
            if (indexOf2 != -1 || indexOf != "READ".length() || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: " + str);
            }
            return;
        }
        aVar.e = new Editor(aVar);
    }

    private void c() throws IOException {
        a(this.e);
        Iterator<a> it = this.l.values().iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next.e == null) {
                for (int i = 0; i < this.i; i++) {
                    this.j += next.c[i];
                }
            } else {
                next.e = null;
                for (int i2 = 0; i2 < this.i; i2++) {
                    a(next.getCleanFile(i2));
                    a(next.getDirtyFile(i2));
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() throws IOException {
        if (this.k != null) {
            this.k.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.e), DiskLruCacheUtil.f4143a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write("1");
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(Integer.toString(this.g));
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(Integer.toString(this.i));
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            for (a aVar : this.l.values()) {
                if (aVar.e != null) {
                    bufferedWriter.write("DIRTY " + aVar.f4142b + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + aVar.f4142b + aVar.getLengths() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.d.exists()) {
                a(this.d, this.f, true);
            }
            a(this.e, this.d, false);
            this.f.delete();
            this.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d, true), DiskLruCacheUtil.f4143a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    private static void a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public synchronized Snapshot get(String key) throws IOException {
        Snapshot snapshot = null;
        synchronized (this) {
            f();
            b(key);
            a aVar = this.l.get(key);
            if (aVar != null && aVar.d) {
                InputStream[] inputStreamArr = new InputStream[this.i];
                for (int i = 0; i < this.i; i++) {
                    try {
                        inputStreamArr[i] = new FileInputStream(aVar.getCleanFile(i));
                    } catch (FileNotFoundException e) {
                        for (int i2 = 0; i2 < this.i && inputStreamArr[i2] != null; i2++) {
                            DiskLruCacheUtil.a(inputStreamArr[i2]);
                        }
                    }
                }
                this.m++;
                this.k.append((CharSequence) ("READ " + key + '\n'));
                if (e()) {
                    this.f4134b.submit(this.o);
                }
                snapshot = new Snapshot(key, aVar.f, inputStreamArr, aVar.c);
            }
        }
        return snapshot;
    }

    public Editor edit(String key) throws IOException {
        return a(key, -1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Editor a(String str, long j) throws IOException {
        a aVar;
        Editor editor;
        f();
        b(str);
        a aVar2 = this.l.get(str);
        if (j == -1 || (aVar2 != null && aVar2.f == j)) {
            if (aVar2 == null) {
                a aVar3 = new a(str);
                this.l.put(str, aVar3);
                aVar = aVar3;
            } else if (aVar2.e != null) {
                editor = null;
            } else {
                aVar = aVar2;
            }
            editor = new Editor(aVar);
            aVar.e = editor;
            this.k.write("DIRTY " + str + '\n');
            this.k.flush();
        } else {
            editor = null;
        }
        return editor;
    }

    public File getDirectory() {
        return this.c;
    }

    public synchronized long getMaxSize() {
        return this.h;
    }

    public synchronized void setMaxSize(long maxSize) {
        this.h = maxSize;
        this.f4134b.submit(this.o);
    }

    public synchronized long size() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(Editor editor, boolean z) throws IOException {
        synchronized (this) {
            a aVar = editor.f4137b;
            if (aVar.e != editor) {
                throw new IllegalStateException();
            }
            if (z && !aVar.d) {
                for (int i = 0; i < this.i; i++) {
                    if (!editor.c[i]) {
                        editor.abort();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    }
                    if (!aVar.getDirtyFile(i).exists()) {
                        editor.abort();
                        break;
                    }
                }
            }
            for (int i2 = 0; i2 < this.i; i2++) {
                File dirtyFile = aVar.getDirtyFile(i2);
                if (z) {
                    if (dirtyFile.exists()) {
                        File cleanFile = aVar.getCleanFile(i2);
                        dirtyFile.renameTo(cleanFile);
                        long j = aVar.c[i2];
                        long length = cleanFile.length();
                        aVar.c[i2] = length;
                        this.j = (this.j - j) + length;
                    }
                } else {
                    a(dirtyFile);
                }
            }
            this.m++;
            aVar.e = null;
            if (aVar.d | z) {
                aVar.d = true;
                this.k.write("CLEAN " + aVar.f4142b + aVar.getLengths() + '\n');
                if (z) {
                    long j2 = this.n;
                    this.n = 1 + j2;
                    aVar.f = j2;
                }
            } else {
                this.l.remove(aVar.f4142b);
                this.k.write("REMOVE " + aVar.f4142b + '\n');
            }
            this.k.flush();
            if (this.j > this.h || e()) {
                this.f4134b.submit(this.o);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        return this.m >= 2000 && this.m >= this.l.size();
    }

    public synchronized boolean remove(String key) throws IOException {
        boolean z;
        synchronized (this) {
            f();
            b(key);
            a aVar = this.l.get(key);
            if (aVar == null || aVar.e != null) {
                z = false;
            } else {
                for (int i = 0; i < this.i; i++) {
                    File cleanFile = aVar.getCleanFile(i);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    this.j -= aVar.c[i];
                    aVar.c[i] = 0;
                }
                this.m++;
                this.k.append((CharSequence) ("REMOVE " + key + '\n'));
                this.l.remove(key);
                if (e()) {
                    this.f4134b.submit(this.o);
                }
                z = true;
            }
        }
        return z;
    }

    public synchronized boolean isClosed() {
        return this.k == null;
    }

    private void f() {
        if (this.k == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void flush() throws IOException {
        f();
        g();
        this.k.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.k != null) {
            Iterator it = new ArrayList(this.l.values()).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                if (aVar.e != null) {
                    aVar.e.abort();
                }
            }
            g();
            this.k.close();
            this.k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() throws IOException {
        while (this.j > this.h) {
            remove(this.l.entrySet().iterator().next().getKey());
        }
    }

    public void delete() throws IOException {
        close();
        DiskLruCacheUtil.a(this.c);
    }

    private void b(String str) {
        if (!f4133a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(InputStream inputStream) throws IOException {
        return DiskLruCacheUtil.a((Reader) new InputStreamReader(inputStream, DiskLruCacheUtil.f4144b));
    }

    public final class Snapshot implements Closeable {

        /* renamed from: b, reason: collision with root package name */
        private final String f4140b;
        private final long c;
        private final InputStream[] d;
        private final long[] e;

        private Snapshot(String key, long sequenceNumber, InputStream[] ins, long[] lengths) {
            this.f4140b = key;
            this.c = sequenceNumber;
            this.d = ins;
            this.e = lengths;
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.a(this.f4140b, this.c);
        }

        public InputStream getInputStream(int index) {
            return this.d[index];
        }

        public String getString(int index) throws IOException {
            return DiskLruCache.b(getInputStream(index));
        }

        public long getLength(int index) {
            return this.e[index];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.d) {
                DiskLruCacheUtil.a(inputStream);
            }
        }
    }

    public final class Editor {

        /* renamed from: b, reason: collision with root package name */
        private final a f4137b;
        private final boolean[] c;
        private boolean d;
        private boolean e;

        private Editor(a entry) {
            this.f4137b = entry;
            this.c = entry.d ? null : new boolean[DiskLruCache.this.i];
        }

        public InputStream newInputStream(int index) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.f4137b.e != this) {
                    throw new IllegalStateException();
                }
                if (!this.f4137b.d) {
                    return null;
                }
                try {
                    return new FileInputStream(this.f4137b.getCleanFile(index));
                } catch (FileNotFoundException e) {
                    return null;
                }
            }
        }

        public String getString(int index) throws IOException {
            InputStream newInputStream = newInputStream(index);
            if (newInputStream != null) {
                return DiskLruCache.b(newInputStream);
            }
            return null;
        }

        public OutputStream newOutputStream(int index) throws IOException {
            OutputStream outputStream;
            FileOutputStream fileOutputStream;
            synchronized (DiskLruCache.this) {
                if (this.f4137b.e != this) {
                    throw new IllegalStateException();
                }
                if (!this.f4137b.d) {
                    this.c[index] = true;
                }
                File dirtyFile = this.f4137b.getDirtyFile(index);
                try {
                    fileOutputStream = new FileOutputStream(dirtyFile);
                } catch (FileNotFoundException e) {
                    DiskLruCache.this.c.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e2) {
                        outputStream = DiskLruCache.p;
                    }
                }
                outputStream = new a(fileOutputStream);
            }
            return outputStream;
        }

        public void set(int index, String value) throws IOException {
            OutputStreamWriter outputStreamWriter;
            try {
                outputStreamWriter = new OutputStreamWriter(newOutputStream(index), DiskLruCacheUtil.f4144b);
            } catch (Throwable th) {
                th = th;
                outputStreamWriter = null;
            }
            try {
                outputStreamWriter.write(value);
                DiskLruCacheUtil.a(outputStreamWriter);
            } catch (Throwable th2) {
                th = th2;
                DiskLruCacheUtil.a(outputStreamWriter);
                throw th;
            }
        }

        public void commit() throws IOException {
            if (this.d) {
                DiskLruCache.this.a(this, false);
                DiskLruCache.this.remove(this.f4137b.f4142b);
            } else {
                DiskLruCache.this.a(this, true);
            }
            this.e = true;
        }

        public void abort() throws IOException {
            DiskLruCache.this.a(this, false);
        }

        public void abortUnlessCommitted() {
            if (!this.e) {
                try {
                    abort();
                } catch (IOException e) {
                }
            }
        }

        private class a extends FilterOutputStream {
            private a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int oneByte) {
                try {
                    this.out.write(oneByte);
                } catch (IOException e) {
                    Editor.this.d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(@NonNull byte[] buffer, int offset, int length) {
                try {
                    this.out.write(buffer, offset, length);
                } catch (IOException e) {
                    Editor.this.d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    Editor.this.d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    Editor.this.d = true;
                }
            }
        }
    }

    private final class a {

        /* renamed from: b, reason: collision with root package name */
        private final String f4142b;
        private final long[] c;
        private boolean d;
        private Editor e;
        private long f;

        private a(String str) {
            this.f4142b = str;
            this.c = new long[DiskLruCache.this.i];
        }

        public String getLengths() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.c) {
                sb.append(' ').append(j);
            }
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.i) {
                throw b(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.c[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw b(strArr);
                }
            }
        }

        private IOException b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File getCleanFile(int i) {
            return new File(DiskLruCache.this.c, this.f4142b + "." + i);
        }

        public File getDirtyFile(int i) {
            return new File(DiskLruCache.this.c, this.f4142b + "." + i + ".tmp");
        }
    }
}
