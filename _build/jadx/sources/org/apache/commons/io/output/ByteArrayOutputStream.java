package org.apache.commons.io.output;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.input.ClosedInputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ByteArrayOutputStream extends OutputStream {
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    private final List<byte[]> buffers;
    private int count;
    private byte[] currentBuffer;
    private int currentBufferIndex;
    private int filledBufferSum;

    public ByteArrayOutputStream() {
        this(1024);
    }

    public ByteArrayOutputStream(int size) {
        this.buffers = new ArrayList();
        if (size < 0) {
            throw new IllegalArgumentException("Negative initial size: " + size);
        }
        synchronized (this) {
            needNewBuffer(size);
        }
    }

    private void needNewBuffer(int newcount) {
        if (this.currentBufferIndex < this.buffers.size() - 1) {
            this.filledBufferSum += this.currentBuffer.length;
            this.currentBufferIndex++;
            this.currentBuffer = this.buffers.get(this.currentBufferIndex);
            return;
        }
        if (this.currentBuffer == null) {
            this.filledBufferSum = 0;
        } else {
            newcount = Math.max(this.currentBuffer.length << 1, newcount - this.filledBufferSum);
            this.filledBufferSum += this.currentBuffer.length;
        }
        this.currentBufferIndex++;
        this.currentBuffer = new byte[newcount];
        this.buffers.add(this.currentBuffer);
    }

    @Override // java.io.OutputStream
    public void write(byte[] b2, int off, int len) {
        if (off < 0 || off > b2.length || len < 0 || off + len > b2.length || off + len < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (len != 0) {
            synchronized (this) {
                int i = this.count + len;
                int i2 = this.count - this.filledBufferSum;
                int i3 = len;
                while (i3 > 0) {
                    int min = Math.min(i3, this.currentBuffer.length - i2);
                    System.arraycopy(b2, (off + len) - i3, this.currentBuffer, i2, min);
                    i3 -= min;
                    if (i3 > 0) {
                        needNewBuffer(i);
                        i2 = 0;
                    }
                }
                this.count = i;
            }
        }
    }

    @Override // java.io.OutputStream
    public synchronized void write(int b2) {
        int i = this.count - this.filledBufferSum;
        if (i == this.currentBuffer.length) {
            needNewBuffer(this.count + 1);
            i = 0;
        }
        this.currentBuffer[i] = (byte) b2;
        this.count++;
    }

    public synchronized int write(InputStream in) throws IOException {
        int i;
        int i2 = this.count - this.filledBufferSum;
        i = 0;
        int read = in.read(this.currentBuffer, i2, this.currentBuffer.length - i2);
        int i3 = i2;
        while (read != -1) {
            i += read;
            i3 += read;
            this.count = read + this.count;
            if (i3 == this.currentBuffer.length) {
                needNewBuffer(this.currentBuffer.length);
                i3 = 0;
            }
            read = in.read(this.currentBuffer, i3, this.currentBuffer.length - i3);
        }
        return i;
    }

    public synchronized int size() {
        return this.count;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public synchronized void reset() {
        this.count = 0;
        this.filledBufferSum = 0;
        this.currentBufferIndex = 0;
        this.currentBuffer = this.buffers.get(this.currentBufferIndex);
    }

    public synchronized void writeTo(OutputStream out) throws IOException {
        int i = this.count;
        Iterator<byte[]> it = this.buffers.iterator();
        do {
            int i2 = i;
            if (!it.hasNext()) {
                break;
            }
            byte[] next = it.next();
            int min = Math.min(next.length, i2);
            out.write(next, 0, min);
            i = i2 - min;
        } while (i != 0);
    }

    public static InputStream toBufferedInputStream(InputStream input) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(input);
        return byteArrayOutputStream.toBufferedInputStream();
    }

    private InputStream toBufferedInputStream() {
        int i = this.count;
        if (i == 0) {
            return new ClosedInputStream();
        }
        ArrayList arrayList = new ArrayList(this.buffers.size());
        Iterator<byte[]> it = this.buffers.iterator();
        do {
            int i2 = i;
            if (!it.hasNext()) {
                break;
            }
            byte[] next = it.next();
            int min = Math.min(next.length, i2);
            arrayList.add(new ByteArrayInputStream(next, 0, min));
            i = i2 - min;
        } while (i != 0);
        return new SequenceInputStream(Collections.enumeration(arrayList));
    }

    public synchronized byte[] toByteArray() {
        byte[] bArr;
        int i = 0;
        synchronized (this) {
            int i2 = this.count;
            if (i2 == 0) {
                bArr = EMPTY_BYTE_ARRAY;
            } else {
                byte[] bArr2 = new byte[i2];
                Iterator<byte[]> it = this.buffers.iterator();
                do {
                    int i3 = i2;
                    int i4 = i;
                    if (!it.hasNext()) {
                        break;
                    }
                    byte[] next = it.next();
                    int min = Math.min(next.length, i3);
                    System.arraycopy(next, 0, bArr2, i4, min);
                    i = i4 + min;
                    i2 = i3 - min;
                } while (i2 != 0);
                bArr = bArr2;
            }
        }
        return bArr;
    }

    public String toString() {
        return new String(toByteArray());
    }

    public String toString(String enc) throws UnsupportedEncodingException {
        return new String(toByteArray(), enc);
    }
}
