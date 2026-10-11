package com.android.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/* compiled from: ByteArrayPool.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    protected static final Comparator<byte[]> f271a = new Comparator<byte[]>() { // from class: com.android.volley.toolbox.b.1
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    /* renamed from: b, reason: collision with root package name */
    private List<byte[]> f272b = new LinkedList();
    private List<byte[]> c = new ArrayList(64);
    private int d = 0;
    private final int e;

    public b(int i) {
        this.e = i;
    }

    public synchronized byte[] a(int i) {
        byte[] bArr;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.c.size()) {
                bArr = this.c.get(i3);
                if (bArr.length < i) {
                    i2 = i3 + 1;
                } else {
                    this.d -= bArr.length;
                    this.c.remove(i3);
                    this.f272b.remove(bArr);
                    break;
                }
            } else {
                bArr = new byte[i];
                break;
            }
        }
        return bArr;
    }

    public synchronized void a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.e) {
                this.f272b.add(bArr);
                int binarySearch = Collections.binarySearch(this.c, bArr, f271a);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.c.add(binarySearch, bArr);
                this.d += bArr.length;
                a();
            }
        }
    }

    private synchronized void a() {
        while (this.d > this.e) {
            byte[] remove = this.f272b.remove(0);
            this.c.remove(remove);
            this.d -= remove.length;
        }
    }
}
