package org.apache.commons.io.input;

import java.io.InputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CloseShieldInputStream extends ProxyInputStream {
    public CloseShieldInputStream(InputStream in) {
        super(in);
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.in = new ClosedInputStream();
    }
}
