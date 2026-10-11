package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class ThresholdingOutputStream extends OutputStream {
    private final int threshold;
    private boolean thresholdExceeded;
    private long written;

    protected abstract OutputStream getStream() throws IOException;

    protected abstract void thresholdReached() throws IOException;

    public ThresholdingOutputStream(int threshold) {
        this.threshold = threshold;
    }

    @Override // java.io.OutputStream
    public void write(int b2) throws IOException {
        checkThreshold(1);
        getStream().write(b2);
        this.written++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] b2) throws IOException {
        checkThreshold(b2.length);
        getStream().write(b2);
        this.written += b2.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] b2, int off, int len) throws IOException {
        checkThreshold(len);
        getStream().write(b2, off, len);
        this.written += len;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        getStream().flush();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
        } catch (IOException e) {
        }
        getStream().close();
    }

    public int getThreshold() {
        return this.threshold;
    }

    public long getByteCount() {
        return this.written;
    }

    public boolean isThresholdExceeded() {
        return this.written > ((long) this.threshold);
    }

    protected void checkThreshold(int count) throws IOException {
        if (!this.thresholdExceeded && this.written + count > this.threshold) {
            this.thresholdExceeded = true;
            thresholdReached();
        }
    }

    protected void resetByteCount() {
        this.thresholdExceeded = false;
        this.written = 0L;
    }
}
