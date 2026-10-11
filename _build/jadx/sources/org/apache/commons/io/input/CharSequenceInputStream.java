package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CharSequenceInputStream extends InputStream {
    private final ByteBuffer bbuf;
    private final CharBuffer cbuf;
    private final CharsetEncoder encoder;
    private int mark;

    public CharSequenceInputStream(CharSequence s, Charset charset, int bufferSize) {
        this.encoder = charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
        this.bbuf = ByteBuffer.allocate(bufferSize);
        this.bbuf.flip();
        this.cbuf = CharBuffer.wrap(s);
        this.mark = -1;
    }

    public CharSequenceInputStream(CharSequence s, String charset, int bufferSize) {
        this(s, Charset.forName(charset), bufferSize);
    }

    public CharSequenceInputStream(CharSequence s, Charset charset) {
        this(s, charset, 2048);
    }

    public CharSequenceInputStream(CharSequence s, String charset) {
        this(s, charset, 2048);
    }

    private void fillBuffer() throws CharacterCodingException {
        this.bbuf.compact();
        CoderResult encode = this.encoder.encode(this.cbuf, this.bbuf, true);
        if (encode.isError()) {
            encode.throwException();
        }
        this.bbuf.flip();
    }

    @Override // java.io.InputStream
    public int read(byte[] b2, int off, int len) throws IOException {
        int i = 0;
        if (b2 == null) {
            throw new NullPointerException("Byte array is null");
        }
        if (len < 0 || off + len > b2.length) {
            throw new IndexOutOfBoundsException("Array Size=" + b2.length + ", offset=" + off + ", length=" + len);
        }
        if (len == 0) {
            return 0;
        }
        if (!this.bbuf.hasRemaining() && !this.cbuf.hasRemaining()) {
            return -1;
        }
        while (len > 0) {
            if (this.bbuf.hasRemaining()) {
                int min = Math.min(this.bbuf.remaining(), len);
                this.bbuf.get(b2, off, min);
                off += min;
                len -= min;
                i += min;
            } else {
                fillBuffer();
                if (!this.bbuf.hasRemaining() && !this.cbuf.hasRemaining()) {
                    break;
                }
            }
        }
        if (i != 0 || this.cbuf.hasRemaining()) {
            return i;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        while (!this.bbuf.hasRemaining()) {
            fillBuffer();
            if (!this.bbuf.hasRemaining() && !this.cbuf.hasRemaining()) {
                return -1;
            }
        }
        return this.bbuf.get() & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] b2) throws IOException {
        return read(b2, 0, b2.length);
    }

    @Override // java.io.InputStream
    public long skip(long n) throws IOException {
        int i = 0;
        while (n > 0 && this.cbuf.hasRemaining()) {
            this.cbuf.get();
            n--;
            i++;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.cbuf.remaining();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // java.io.InputStream
    public synchronized void mark(int readlimit) {
        this.mark = this.cbuf.position();
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.mark != -1) {
            this.cbuf.position(this.mark);
            this.mark = -1;
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }
}
