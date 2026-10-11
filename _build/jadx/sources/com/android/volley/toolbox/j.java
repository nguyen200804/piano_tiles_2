package com.android.volley.toolbox;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* compiled from: PoolingByteArrayOutputStream.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j extends ByteArrayOutputStream {

    /* renamed from: a, reason: collision with root package name */
    private final b f294a;

    public j(b bVar, int i) {
        this.f294a = bVar;
        this.buf = this.f294a.a(Math.max(i, 256));
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f294a.a(this.buf);
        this.buf = null;
        super.close();
    }

    public void finalize() {
        this.f294a.a(this.buf);
    }

    private void a(int i) {
        if (this.count + i > this.buf.length) {
            byte[] a2 = this.f294a.a((this.count + i) * 2);
            System.arraycopy(this.buf, 0, a2, 0, this.count);
            this.f294a.a(this.buf);
            this.buf = a2;
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
