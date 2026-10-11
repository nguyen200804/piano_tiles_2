package com.jirbo.adcolony;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class av extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    InputStream f3807a;

    /* renamed from: b, reason: collision with root package name */
    byte[] f3808b = new byte[1024];
    int c;
    int d;
    int e;
    int f;
    int g;
    int h;

    av(String str) throws IOException {
        if (t.e != 0) {
            this.h = 23;
            this.g = 23;
        }
        this.c = (int) new File(str).length();
        this.f3807a = new FileInputStream(str);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return (this.e - this.f) + this.f3807a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3807a.close();
    }

    @Override // java.io.InputStream
    public void mark(int read_limit) {
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.d == this.c) {
            return -1;
        }
        if (this.f >= this.e) {
            a();
        }
        this.d++;
        byte[] bArr = this.f3808b;
        int i = this.f;
        this.f = i + 1;
        return bArr[i];
    }

    @Override // java.io.InputStream
    public int read(byte[] array) throws IOException {
        return read(array, 0, array.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] array, int offset, int count) throws IOException {
        if (this.d == this.c) {
            return -1;
        }
        int count2 = this.c - this.d;
        if (count > count2) {
            count = count2;
        }
        int i = 0;
        while (count > 0) {
            if (this.f == this.e) {
                a();
            }
            int i2 = count < this.e ? count : this.e;
            int i3 = 0;
            int offset2 = offset;
            while (i3 < i2) {
                byte[] bArr = this.f3808b;
                int i4 = this.f;
                this.f = i4 + 1;
                array[offset2] = bArr[i4];
                i3++;
                offset2++;
            }
            count -= i2;
            i += i2;
            this.d = i2 + this.d;
            offset = offset2;
        }
        return i;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        throw new IOException("ADCStreamReader does not support reset().");
    }

    @Override // java.io.InputStream
    public long skip(long n) throws IOException {
        throw new IOException("ADCStreamReader does not support skip().");
    }

    void a() throws IOException {
        this.e = 0;
        while (this.e == 0) {
            this.e = this.f3807a.read(this.f3808b, 0, 1024);
        }
        for (int i = 0; i < this.e; i++) {
            this.f3808b[i] = (byte) (this.f3808b[i] ^ this.g);
            this.g += this.h;
        }
        this.f = 0;
    }
}
