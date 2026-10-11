package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.io.ByteOrderMark;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BOMInputStream extends ProxyInputStream {
    private static final Comparator<ByteOrderMark> ByteOrderMarkLengthComparator = new Comparator<ByteOrderMark>() { // from class: org.apache.commons.io.input.BOMInputStream.1
        @Override // java.util.Comparator
        public int compare(ByteOrderMark bom1, ByteOrderMark bom2) {
            int length = bom1.length();
            int length2 = bom2.length();
            if (length > length2) {
                return -1;
            }
            if (length2 > length) {
                return 1;
            }
            return 0;
        }
    };
    private final List<ByteOrderMark> boms;
    private ByteOrderMark byteOrderMark;
    private int fbIndex;
    private int fbLength;
    private int[] firstBytes;
    private final boolean include;
    private int markFbIndex;
    private boolean markedAtStart;

    public BOMInputStream(InputStream delegate) {
        this(delegate, false, ByteOrderMark.UTF_8);
    }

    public BOMInputStream(InputStream delegate, boolean include) {
        this(delegate, include, ByteOrderMark.UTF_8);
    }

    public BOMInputStream(InputStream delegate, ByteOrderMark... boms) {
        this(delegate, false, boms);
    }

    public BOMInputStream(InputStream delegate, boolean include, ByteOrderMark... boms) {
        super(delegate);
        if (boms == null || boms.length == 0) {
            throw new IllegalArgumentException("No BOMs specified");
        }
        this.include = include;
        Arrays.sort(boms, ByteOrderMarkLengthComparator);
        this.boms = Arrays.asList(boms);
    }

    public boolean hasBOM() throws IOException {
        return getBOM() != null;
    }

    public boolean hasBOM(ByteOrderMark bom) throws IOException {
        if (this.boms.contains(bom)) {
            return this.byteOrderMark != null && getBOM().equals(bom);
        }
        throw new IllegalArgumentException("Stream not configure to detect " + bom);
    }

    public ByteOrderMark getBOM() throws IOException {
        if (this.firstBytes == null) {
            this.fbLength = 0;
            this.firstBytes = new int[this.boms.get(0).length()];
            for (int i = 0; i < this.firstBytes.length; i++) {
                this.firstBytes[i] = this.in.read();
                this.fbLength++;
                if (this.firstBytes[i] < 0) {
                    break;
                }
            }
            this.byteOrderMark = find();
            if (this.byteOrderMark != null && !this.include) {
                if (this.byteOrderMark.length() < this.firstBytes.length) {
                    this.fbIndex = this.byteOrderMark.length();
                } else {
                    this.fbLength = 0;
                }
            }
        }
        return this.byteOrderMark;
    }

    public String getBOMCharsetName() throws IOException {
        getBOM();
        if (this.byteOrderMark == null) {
            return null;
        }
        return this.byteOrderMark.getCharsetName();
    }

    private int readFirstBytes() throws IOException {
        getBOM();
        if (this.fbIndex >= this.fbLength) {
            return -1;
        }
        int[] iArr = this.firstBytes;
        int i = this.fbIndex;
        this.fbIndex = i + 1;
        return iArr[i];
    }

    private ByteOrderMark find() {
        for (ByteOrderMark byteOrderMark : this.boms) {
            if (matches(byteOrderMark)) {
                return byteOrderMark;
            }
        }
        return null;
    }

    private boolean matches(ByteOrderMark bom) {
        for (int i = 0; i < bom.length(); i++) {
            if (bom.get(i) != this.firstBytes[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int readFirstBytes = readFirstBytes();
        return readFirstBytes >= 0 ? readFirstBytes : this.in.read();
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] buf, int off, int len) throws IOException {
        int i = 0;
        int i2 = 0;
        int off2 = off;
        while (len > 0 && i2 >= 0) {
            i2 = readFirstBytes();
            if (i2 >= 0) {
                buf[off2] = (byte) (i2 & 255);
                len--;
                i++;
                off2++;
            }
        }
        int read = this.in.read(buf, off2, len);
        if (read >= 0) {
            return i + read;
        }
        if (i > 0) {
            return i;
        }
        return -1;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] buf) throws IOException {
        return read(buf, 0, buf.length);
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int readlimit) {
        this.markFbIndex = this.fbIndex;
        this.markedAtStart = this.firstBytes == null;
        this.in.mark(readlimit);
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        this.fbIndex = this.markFbIndex;
        if (this.markedAtStart) {
            this.firstBytes = null;
        }
        this.in.reset();
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long n) throws IOException {
        while (n > 0 && readFirstBytes() >= 0) {
            n--;
        }
        return this.in.skip(n);
    }
}
