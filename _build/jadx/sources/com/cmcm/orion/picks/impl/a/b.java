package com.cmcm.orion.picks.impl.a;

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
import java.io.OutputStream;
import java.io.OutputStreamWriter;
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

/* compiled from: DiskLruCache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    static final Pattern f929a = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream p = new OutputStream() { // from class: com.cmcm.orion.picks.impl.a.b.2
        @Override // java.io.OutputStream
        public final void write(int b2) throws IOException {
        }
    };
    private final File c;
    private final File d;
    private final File e;
    private final File f;
    private Writer k;
    private int m;
    private long j = 0;
    private final LinkedHashMap<String, C0021b> l = new LinkedHashMap<>(0, 0.75f, true);
    private long n = 0;

    /* renamed from: b, reason: collision with root package name */
    final ThreadPoolExecutor f930b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> o = new Callable<Void>() { // from class: com.cmcm.orion.picks.impl.a.b.1
        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (b.this) {
                if (b.this.k != null) {
                    b.this.j();
                    if (b.this.h()) {
                        b.this.g();
                        b.e(b.this);
                    }
                }
            }
            return null;
        }
    };
    private final int g = 1;
    private final int i = 1;
    private long h = 68157440;

    static /* synthetic */ int e(b bVar) {
        bVar.m = 0;
        return 0;
    }

    private b(File file) {
        this.c = file;
        this.d = new File(file, "journal");
        this.e = new File(file, "journal.tmp");
        this.f = new File(file, "journal.bkp");
    }

    public static b a(File file) throws IOException {
        if (68157440 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                a(file2, file3, false);
            }
        }
        b bVar = new b(file);
        if (bVar.d.exists()) {
            try {
                bVar.e();
                bVar.f();
                bVar.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(bVar.d, true), d.f942a));
                return bVar;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                bVar.close();
                d.a(bVar.c);
            }
        }
        file.mkdirs();
        b bVar2 = new b(file);
        bVar2.g();
        return bVar2;
    }

    private void e() throws IOException {
        String a2;
        String substring;
        com.cmcm.orion.picks.impl.a.c cVar = new com.cmcm.orion.picks.impl.a.c(new FileInputStream(this.d), d.f942a);
        try {
            String a3 = cVar.a();
            String a4 = cVar.a();
            String a5 = cVar.a();
            String a6 = cVar.a();
            String a7 = cVar.a();
            if (!"libcore.io.DiskLruCache".equals(a3) || !"1".equals(a4) || !Integer.toString(this.g).equals(a5) || !Integer.toString(this.i).equals(a6) || !"".equals(a7)) {
                throw new IOException("unexpected journal header: [" + a3 + ", " + a4 + ", " + a6 + ", " + a7 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    a2 = cVar.a();
                    int indexOf = a2.indexOf(32);
                    if (indexOf == -1) {
                        throw new IOException("unexpected journal line: " + a2);
                    }
                    int i2 = indexOf + 1;
                    int indexOf2 = a2.indexOf(32, i2);
                    if (indexOf2 == -1) {
                        String substring2 = a2.substring(i2);
                        if (indexOf == 6 && a2.startsWith("REMOVE")) {
                            this.l.remove(substring2);
                            i++;
                        } else {
                            substring = substring2;
                        }
                    } else {
                        substring = a2.substring(i2, indexOf2);
                    }
                    C0021b c0021b = this.l.get(substring);
                    if (c0021b == null) {
                        c0021b = new C0021b(this, substring, (byte) 0);
                        this.l.put(substring, c0021b);
                    }
                    if (indexOf2 != -1 && indexOf == 5 && a2.startsWith("CLEAN")) {
                        String[] split = a2.substring(indexOf2 + 1).split(" ");
                        C0021b.a(c0021b);
                        c0021b.e = null;
                        C0021b.a(c0021b, split);
                    } else if (indexOf2 == -1 && indexOf == 5 && a2.startsWith("DIRTY")) {
                        c0021b.e = new a(this, c0021b, (byte) 0);
                    } else if (indexOf2 != -1 || indexOf != 4 || !a2.startsWith("READ")) {
                        break;
                    }
                    i++;
                } catch (EOFException e) {
                    this.m = i - this.l.size();
                    d.a(cVar);
                    return;
                }
            }
            throw new IOException("unexpected journal line: " + a2);
        } catch (Throwable th) {
            d.a(cVar);
            throw th;
        }
    }

    private void f() throws IOException {
        b(this.e);
        Iterator<C0021b> it = this.l.values().iterator();
        while (it.hasNext()) {
            C0021b next = it.next();
            if (next.e == null) {
                for (int i = 0; i < this.i; i++) {
                    this.j += next.c[i];
                }
            } else {
                next.e = null;
                for (int i2 = 0; i2 < this.i; i2++) {
                    b(next.a(i2));
                    b(next.b(i2));
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g() throws IOException {
        if (this.k != null) {
            this.k.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.e), d.f942a));
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
            for (C0021b c0021b : this.l.values()) {
                if (c0021b.e != null) {
                    bufferedWriter.write("DIRTY " + c0021b.f936b + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + c0021b.f936b + c0021b.a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.d.exists()) {
                a(this.d, this.f, true);
            }
            a(this.e, this.d, false);
            this.f.delete();
            this.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d, true), d.f942a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    private static void b(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            b(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public final synchronized c a(String str) throws IOException {
        c cVar = null;
        synchronized (this) {
            i();
            e(str);
            C0021b c0021b = this.l.get(str);
            if (c0021b != null && c0021b.d) {
                InputStream[] inputStreamArr = new InputStream[this.i];
                for (int i = 0; i < this.i; i++) {
                    try {
                        File a2 = c0021b.a(i);
                        a2.setLastModified(System.currentTimeMillis());
                        inputStreamArr[i] = new FileInputStream(a2);
                    } catch (FileNotFoundException e) {
                        for (int i2 = 0; i2 < this.i && inputStreamArr[i2] != null; i2++) {
                            d.a(inputStreamArr[i2]);
                        }
                    }
                }
                this.m++;
                this.k.append((CharSequence) ("READ " + str + '\n'));
                if (h()) {
                    this.f930b.submit(this.o);
                }
                cVar = new c(this, str, c0021b.f, inputStreamArr, c0021b.c, (byte) 0);
            }
        }
        return cVar;
    }

    public final a b(String str) throws IOException {
        return d(str);
    }

    private synchronized a d(String str) throws IOException {
        C0021b c0021b;
        a aVar;
        i();
        e(str);
        C0021b c0021b2 = this.l.get(str);
        if (-1 == -1 || (c0021b2 != null && c0021b2.f == -1)) {
            if (c0021b2 == null) {
                C0021b c0021b3 = new C0021b(this, str, (byte) 0);
                this.l.put(str, c0021b3);
                c0021b = c0021b3;
            } else if (c0021b2.e != null) {
                aVar = null;
            } else {
                c0021b = c0021b2;
            }
            aVar = new a(this, c0021b, (byte) 0);
            c0021b.e = aVar;
            this.k.write("DIRTY " + str + '\n');
            this.k.flush();
        } else {
            aVar = null;
        }
        return aVar;
    }

    public final File a() {
        return this.c;
    }

    public final synchronized void a(long j) {
        this.h = j;
        this.f930b.submit(this.o);
    }

    public final synchronized long b() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(a aVar, boolean z) throws IOException {
        synchronized (this) {
            C0021b c0021b = aVar.f933b;
            if (c0021b.e != aVar) {
                throw new IllegalStateException();
            }
            if (z && !c0021b.d) {
                for (int i = 0; i < this.i; i++) {
                    if (!aVar.c[i]) {
                        aVar.c();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    }
                    if (!c0021b.b(i).exists()) {
                        aVar.c();
                        break;
                    }
                }
            }
            for (int i2 = 0; i2 < this.i; i2++) {
                File b2 = c0021b.b(i2);
                if (z) {
                    if (b2.exists()) {
                        File a2 = c0021b.a(i2);
                        b2.renameTo(a2);
                        long j = c0021b.c[i2];
                        long length = a2.length();
                        c0021b.c[i2] = length;
                        this.j = (this.j - j) + length;
                    }
                } else {
                    b(b2);
                }
            }
            this.m++;
            c0021b.e = null;
            if (c0021b.d | z) {
                C0021b.a(c0021b);
                this.k.write("CLEAN " + c0021b.f936b + c0021b.a() + '\n');
                if (z) {
                    long j2 = this.n;
                    this.n = 1 + j2;
                    c0021b.f = j2;
                }
            } else {
                this.l.remove(c0021b.f936b);
                this.k.write("REMOVE " + c0021b.f936b + '\n');
            }
            this.k.flush();
            if (this.j > this.h || h()) {
                this.f930b.submit(this.o);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        return this.m >= 2000 && this.m >= this.l.size();
    }

    public final synchronized boolean c(String str) throws IOException {
        boolean z;
        synchronized (this) {
            i();
            e(str);
            C0021b c0021b = this.l.get(str);
            if (c0021b == null || c0021b.e != null) {
                z = false;
            } else {
                for (int i = 0; i < this.i; i++) {
                    File a2 = c0021b.a(i);
                    if (a2.exists() && !a2.delete()) {
                        throw new IOException("failed to delete " + a2);
                    }
                    this.j -= c0021b.c[i];
                    c0021b.c[i] = 0;
                }
                this.m++;
                this.k.append((CharSequence) ("REMOVE " + str + '\n'));
                this.l.remove(str);
                if (h()) {
                    this.f930b.submit(this.o);
                }
                z = true;
            }
        }
        return z;
    }

    private void i() {
        if (this.k == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public final synchronized void c() throws IOException {
        i();
        j();
        this.k.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        if (this.k != null) {
            Iterator it = new ArrayList(this.l.values()).iterator();
            while (it.hasNext()) {
                C0021b c0021b = (C0021b) it.next();
                if (c0021b.e != null) {
                    c0021b.e.c();
                }
            }
            j();
            this.k.close();
            this.k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() throws IOException {
        while (this.j > this.h) {
            c(this.l.entrySet().iterator().next().getKey());
        }
    }

    private static void e(String str) {
        if (!f929a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* compiled from: DiskLruCache.java */
    public final class c implements Closeable {

        /* renamed from: b, reason: collision with root package name */
        private final String f938b;
        private final long c;
        private final InputStream[] d;
        private final long[] e;

        /* synthetic */ c(b bVar, String str, long j, InputStream[] inputStreamArr, long[] jArr, byte b2) {
            this(str, j, inputStreamArr, jArr);
        }

        private c(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f938b = str;
            this.c = j;
            this.d = inputStreamArr;
            this.e = jArr;
        }

        public final InputStream a() {
            return this.d[0];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (InputStream inputStream : this.d) {
                d.a(inputStream);
            }
        }
    }

    /* compiled from: DiskLruCache.java */
    public final class a {

        /* renamed from: b, reason: collision with root package name */
        private final C0021b f933b;
        private final boolean[] c;
        private boolean d;
        private boolean e;

        /* synthetic */ a(b bVar, C0021b c0021b, byte b2) {
            this(c0021b);
        }

        static /* synthetic */ boolean c(a aVar) {
            aVar.d = true;
            return true;
        }

        private a(C0021b c0021b) {
            this.f933b = c0021b;
            this.c = c0021b.d ? null : new boolean[b.this.i];
        }

        public final OutputStream a() throws IOException {
            OutputStream outputStream;
            FileOutputStream fileOutputStream;
            synchronized (b.this) {
                if (this.f933b.e != this) {
                    throw new IllegalStateException();
                }
                if (!this.f933b.d) {
                    this.c[0] = true;
                }
                File b2 = this.f933b.b(0);
                try {
                    fileOutputStream = new FileOutputStream(b2);
                } catch (FileNotFoundException e) {
                    b.this.c.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(b2);
                    } catch (FileNotFoundException e2) {
                        outputStream = b.p;
                    }
                }
                outputStream = new C0020a(this, fileOutputStream, (byte) 0);
            }
            return outputStream;
        }

        public final void b() throws IOException {
            if (this.d) {
                b.this.a(this, false);
                b.this.c(this.f933b.f936b);
            } else {
                b.this.a(this, true);
            }
            this.e = true;
        }

        public final void c() throws IOException {
            b.this.a(this, false);
        }

        /* compiled from: DiskLruCache.java */
        /* renamed from: com.cmcm.orion.picks.impl.a.b$a$a, reason: collision with other inner class name */
        class C0020a extends FilterOutputStream {
            /* synthetic */ C0020a(a aVar, OutputStream outputStream, byte b2) {
                this(outputStream);
            }

            private C0020a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(int oneByte) {
                try {
                    this.out.write(oneByte);
                } catch (IOException e) {
                    a.c(a.this);
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(@NonNull byte[] buffer, int offset, int length) {
                try {
                    this.out.write(buffer, offset, length);
                } catch (IOException e) {
                    a.c(a.this);
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    a.c(a.this);
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public final void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    a.c(a.this);
                }
            }
        }
    }

    /* compiled from: DiskLruCache.java */
    /* renamed from: com.cmcm.orion.picks.impl.a.b$b, reason: collision with other inner class name */
    final class C0021b {

        /* renamed from: b, reason: collision with root package name */
        private final String f936b;
        private final long[] c;
        private boolean d;
        private a e;
        private long f;

        /* synthetic */ C0021b(b bVar, String str, byte b2) {
            this(str);
        }

        static /* synthetic */ boolean a(C0021b c0021b) {
            c0021b.d = true;
            return true;
        }

        private C0021b(String str) {
            this.f936b = str;
            this.c = new long[b.this.i];
        }

        public final String a() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.c) {
                sb.append(' ').append(j);
            }
            return sb.toString();
        }

        private static IOException a(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public final File a(int i) {
            return new File(b.this.c, this.f936b + "." + i);
        }

        public final File b(int i) {
            return new File(b.this.c, this.f936b + "." + i + ".tmp");
        }

        static /* synthetic */ void a(C0021b c0021b, String[] strArr) throws IOException {
            if (strArr.length != b.this.i) {
                throw a(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    c0021b.c[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw a(strArr);
                }
            }
        }
    }
}
