package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BrokenOutputStream extends OutputStream {
    private final IOException exception;

    public BrokenOutputStream(IOException exception) {
        this.exception = exception;
    }

    public BrokenOutputStream() {
        this(new IOException("Broken output stream"));
    }

    @Override // java.io.OutputStream
    public void write(int b2) throws IOException {
        throw this.exception;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        throw this.exception;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw this.exception;
    }
}
