package org.apache.commons.io.input;

import java.io.Reader;
import java.io.Serializable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CharSequenceReader extends Reader implements Serializable {
    private final CharSequence charSequence;
    private int idx;
    private int mark;

    public CharSequenceReader(String charSequence) {
        this.charSequence = charSequence == null ? "" : charSequence;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.idx = 0;
        this.mark = 0;
    }

    @Override // java.io.Reader
    public void mark(int readAheadLimit) {
        this.mark = this.idx;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public int read() {
        if (this.idx >= this.charSequence.length()) {
            return -1;
        }
        CharSequence charSequence = this.charSequence;
        int i = this.idx;
        this.idx = i + 1;
        return charSequence.charAt(i);
    }

    @Override // java.io.Reader
    public int read(char[] array, int offset, int length) {
        int i = 0;
        if (this.idx >= this.charSequence.length()) {
            return -1;
        }
        if (array == null) {
            throw new NullPointerException("Character array is missing");
        }
        if (length < 0 || offset < 0 || offset + length > array.length) {
            throw new IndexOutOfBoundsException("Array Size=" + array.length + ", offset=" + offset + ", length=" + length);
        }
        int i2 = 0;
        while (i2 < length) {
            int read = read();
            if (read == -1) {
                return i;
            }
            array[offset + i2] = (char) read;
            i2++;
            i++;
        }
        return i;
    }

    @Override // java.io.Reader
    public void reset() {
        this.idx = this.mark;
    }

    @Override // java.io.Reader
    public long skip(long n) {
        if (n < 0) {
            throw new IllegalArgumentException("Number of characters to skip is less than zero: " + n);
        }
        if (this.idx >= this.charSequence.length()) {
            return -1L;
        }
        int min = (int) Math.min(this.charSequence.length(), this.idx + n);
        int i = min - this.idx;
        this.idx = min;
        return i;
    }

    public String toString() {
        return this.charSequence.toString();
    }
}
