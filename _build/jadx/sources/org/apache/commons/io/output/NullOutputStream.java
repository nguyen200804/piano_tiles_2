package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NullOutputStream extends OutputStream {
    public static final NullOutputStream NULL_OUTPUT_STREAM = new NullOutputStream();

    @Override // java.io.OutputStream
    public void write(byte[] b2, int off, int len) {
    }

    @Override // java.io.OutputStream
    public void write(int b2) {
    }

    @Override // java.io.OutputStream
    public void write(byte[] b2) throws IOException {
    }
}
