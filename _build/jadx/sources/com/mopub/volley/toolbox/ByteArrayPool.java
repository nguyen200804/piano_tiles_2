package com.mopub.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ByteArrayPool {

    /* renamed from: a, reason: collision with root package name */
    protected static final Comparator<byte[]> f4777a = new Comparator<byte[]>() { // from class: com.mopub.volley.toolbox.ByteArrayPool.1
        @Override // java.util.Comparator
        public int compare(byte[] lhs, byte[] rhs) {
            return lhs.length - rhs.length;
        }
    };

    /* renamed from: b, reason: collision with root package name */
    private List<byte[]> f4778b = new LinkedList();
    private List<byte[]> c = new ArrayList(64);
    private int d = 0;
    private final int e;

    public ByteArrayPool(int sizeLimit) {
        this.e = sizeLimit;
    }

    public synchronized byte[] getBuf(int len) {
        byte[] bArr;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.c.size()) {
                bArr = this.c.get(i2);
                if (bArr.length < len) {
                    i = i2 + 1;
                } else {
                    this.d -= bArr.length;
                    this.c.remove(i2);
                    this.f4778b.remove(bArr);
                    break;
                }
            } else {
                bArr = new byte[len];
                break;
            }
        }
        return bArr;
    }

    public synchronized void returnBuf(byte[] buf) {
        if (buf != null) {
            if (buf.length <= this.e) {
                this.f4778b.add(buf);
                int binarySearch = Collections.binarySearch(this.c, buf, f4777a);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.c.add(binarySearch, buf);
                this.d += buf.length;
                a();
            }
        }
    }

    private synchronized void a() {
        while (this.d > this.e) {
            byte[] remove = this.f4778b.remove(0);
            this.c.remove(remove);
            this.d -= remove.length;
        }
    }
}
