package com.mopub.volley.toolbox;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PoolingByteArrayOutputStream extends ByteArrayOutputStream {

    /* renamed from: a, reason: collision with root package name */
    private final ByteArrayPool f4810a;

    public PoolingByteArrayOutputStream(ByteArrayPool pool) {
        this(pool, 256);
    }

    public PoolingByteArrayOutputStream(ByteArrayPool pool, int size) {
        this.f4810a = pool;
        this.buf = this.f4810a.getBuf(Math.max(size, 256));
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4810a.returnBuf(this.buf);
        this.buf = null;
        super.close();
    }

    public void finalize() {
        this.f4810a.returnBuf(this.buf);
    }

    private void a(int i) {
        if (this.count + i > this.buf.length) {
            byte[] buf = this.f4810a.getBuf((this.count + i) * 2);
            System.arraycopy(this.buf, 0, buf, 0, this.count);
            this.f4810a.returnBuf(this.buf);
            this.buf = buf;
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(byte[] buffer, int offset, int len) {
        a(len);
        super.write(buffer, offset, len);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(int oneByte) {
        a(1);
        super.write(oneByte);
    }
}
