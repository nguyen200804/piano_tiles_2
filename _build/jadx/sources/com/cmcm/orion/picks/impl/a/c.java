package com.cmcm.orion.picks.impl.a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* compiled from: DiskLruCacheStrictLineReader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class c implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    private final InputStream f939a;

    /* renamed from: b, reason: collision with root package name */
    private final Charset f940b;
    private byte[] c;
    private int d;
    private int e;

    public c(InputStream inputStream, Charset charset) {
        this(inputStream, charset, (byte) 0);
    }

    private c(InputStream inputStream, Charset charset, byte b2) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        }
        if (!charset.equals(d.f942a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f939a = inputStream;
        this.f940b = charset;
        this.c = new byte[8192];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.f939a) {
            if (this.c != null) {
                this.c = null;
                this.f939a.close();
            }
        }
    }

    public final String a() throws IOException {
        int i;
        String byteArrayOutputStream;
        synchronized (this.f939a) {
            if (this.c == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.d >= this.e) {
                b();
            }
            int i2 = this.d;
            while (true) {
                if (i2 != this.e) {
                    if (this.c[i2] != 10) {
                        i2++;
                    } else {
                        byteArrayOutputStream = new String(this.c, this.d, ((i2 == this.d || this.c[i2 + (-1)] != 13) ? i2 : i2 - 1) - this.d, this.f940b.name());
                        this.d = i2 + 1;
                    }
                } else {
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream((this.e - this.d) + 80) { // from class: com.cmcm.orion.picks.impl.a.c.1
                        @Override // java.io.ByteArrayOutputStream
                        public final String toString() {
                            try {
                                return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + (-1)] != 13) ? this.count : this.count - 1, c.this.f940b.name());
                            } catch (UnsupportedEncodingException e) {
                                throw new AssertionError(e);
                            }
                        }
                    };
                    loop1: while (true) {
                        byteArrayOutputStream2.write(this.c, this.d, this.e - this.d);
                        this.e = -1;
                        b();
                        i = this.d;
                        while (i != this.e) {
                            if (this.c[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                    if (i != this.d) {
                        byteArrayOutputStream2.write(this.c, this.d, i - this.d);
                    }
                    this.d = i + 1;
                    byteArrayOutputStream = byteArrayOutputStream2.toString();
                }
            }
            return byteArrayOutputStream;
        }
    }

    private void b() throws IOException {
        int read = this.f939a.read(this.c, 0, this.c.length);
        if (read == -1) {
            throw new EOFException();
        }
        this.d = 0;
        this.e = read;
    }
}
