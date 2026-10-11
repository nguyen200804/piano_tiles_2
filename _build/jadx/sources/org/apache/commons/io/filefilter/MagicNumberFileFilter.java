package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MagicNumberFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -547733176983104172L;
    private final long byteOffset;
    private final byte[] magicNumbers;

    public MagicNumberFileFilter(byte[] magicNumber) {
        this(magicNumber, 0L);
    }

    public MagicNumberFileFilter(String magicNumber) {
        this(magicNumber, 0L);
    }

    public MagicNumberFileFilter(String magicNumber, long offset) {
        if (magicNumber == null) {
            throw new IllegalArgumentException("The magic number cannot be null");
        }
        if (magicNumber.length() == 0) {
            throw new IllegalArgumentException("The magic number must contain at least one byte");
        }
        if (offset < 0) {
            throw new IllegalArgumentException("The offset cannot be negative");
        }
        this.magicNumbers = magicNumber.getBytes();
        this.byteOffset = offset;
    }

    public MagicNumberFileFilter(byte[] magicNumber, long offset) {
        if (magicNumber == null) {
            throw new IllegalArgumentException("The magic number cannot be null");
        }
        if (magicNumber.length == 0) {
            throw new IllegalArgumentException("The magic number must contain at least one byte");
        }
        if (offset < 0) {
            throw new IllegalArgumentException("The offset cannot be negative");
        }
        this.magicNumbers = new byte[magicNumber.length];
        System.arraycopy(magicNumber, 0, this.magicNumbers, 0, magicNumber.length);
        this.byteOffset = offset;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        RandomAccessFile randomAccessFile;
        byte[] bArr;
        boolean z = false;
        if (file != null && file.isFile() && file.canRead()) {
            try {
                bArr = new byte[this.magicNumbers.length];
                randomAccessFile = new RandomAccessFile(file, "r");
            } catch (IOException e) {
                randomAccessFile = null;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = null;
            }
            try {
                randomAccessFile.seek(this.byteOffset);
                if (randomAccessFile.read(bArr) == this.magicNumbers.length) {
                    z = Arrays.equals(this.magicNumbers, bArr);
                    IOUtils.closeQuietly(randomAccessFile);
                } else {
                    IOUtils.closeQuietly(randomAccessFile);
                }
            } catch (IOException e2) {
                IOUtils.closeQuietly(randomAccessFile);
                return z;
            } catch (Throwable th2) {
                th = th2;
                IOUtils.closeQuietly(randomAccessFile);
                throw th;
            }
        }
        return z;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        return super.toString() + "(" + new String(this.magicNumbers) + "," + this.byteOffset + ")";
    }
}
