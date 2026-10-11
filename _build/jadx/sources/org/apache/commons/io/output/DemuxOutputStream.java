package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DemuxOutputStream extends OutputStream {
    private final InheritableThreadLocal<OutputStream> m_streams = new InheritableThreadLocal<>();

    public OutputStream bindStream(OutputStream output) {
        OutputStream outputStream = this.m_streams.get();
        this.m_streams.set(output);
        return outputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        OutputStream outputStream = this.m_streams.get();
        if (outputStream != null) {
            outputStream.close();
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        OutputStream outputStream = this.m_streams.get();
        if (outputStream != null) {
            outputStream.flush();
        }
    }

    @Override // java.io.OutputStream
    public void write(int ch) throws IOException {
        OutputStream outputStream = this.m_streams.get();
        if (outputStream != null) {
            outputStream.write(ch);
        }
    }
}
