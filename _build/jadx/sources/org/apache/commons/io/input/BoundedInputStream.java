package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BoundedInputStream extends InputStream {
    private final InputStream in;
    private long mark;
    private final long max;
    private long pos;
    private boolean propagateClose;

    public BoundedInputStream(InputStream in, long size) {
        this.pos = 0L;
        this.mark = -1L;
        this.propagateClose = true;
        this.max = size;
        this.in = in;
    }

    public BoundedInputStream(InputStream in) {
        this(in, -1L);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.max >= 0 && this.pos >= this.max) {
            return -1;
        }
        int read = this.in.read();
        this.pos++;
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] b2) throws IOException {
        return read(b2, 0, b2.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] b2, int off, int len) throws IOException {
        if (this.max >= 0 && this.pos >= this.max) {
            return -1;
        }
        int read = this.in.read(b2, off, (int) (this.max >= 0 ? Math.min(len, this.max - this.pos) : len));
        if (read == -1) {
            return -1;
        }
        this.pos += read;
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long n) throws IOException {
        if (this.max >= 0) {
            n = Math.min(n, this.max - this.pos);
        }
        long skip = this.in.skip(n);
        this.pos += skip;
        return skip;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (this.max < 0 || this.pos < this.max) {
            return this.in.available();
        }
        return 0;
    }

    public String toString() {
        return this.in.toString();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.propagateClose) {
            this.in.close();
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.in.reset();
        this.pos = this.mark;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int readlimit) {
        this.in.mark(readlimit);
        this.mark = this.pos;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.in.markSupported();
    }

    public boolean isPropagateClose() {
        return this.propagateClose;
    }

    public void setPropagateClose(boolean propagateClose) {
        this.propagateClose = propagateClose;
    }
}
