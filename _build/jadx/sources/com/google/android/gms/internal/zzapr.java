package com.google.android.gms.internal;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzapr implements Cloneable {
    private static final zzaps bjz = new zzaps();
    private boolean bjA;
    private int[] bjB;
    private zzaps[] bjC;
    private int mSize;

    zzapr() {
        this(10);
    }

    zzapr(int i) {
        this.bjA = false;
        int idealIntArraySize = idealIntArraySize(i);
        this.bjB = new int[idealIntArraySize];
        this.bjC = new zzaps[idealIntArraySize];
        this.mSize = 0;
    }

    private int idealByteArraySize(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            if (i <= (1 << i2) - 12) {
                return (1 << i2) - 12;
            }
        }
        return i;
    }

    private int idealIntArraySize(int i) {
        return idealByteArraySize(i * 4) / 4;
    }

    private boolean zza(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private boolean zza(zzaps[] zzapsVarArr, zzaps[] zzapsVarArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!zzapsVarArr[i2].equals(zzapsVarArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    private int zzagh(int i) {
        int i2 = 0;
        int i3 = this.mSize - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) >>> 1;
            int i5 = this.bjB[i4];
            if (i5 < i) {
                i2 = i4 + 1;
            } else {
                if (i5 <= i) {
                    return i4;
                }
                i3 = i4 - 1;
            }
        }
        return i2 ^ (-1);
    }

    /* renamed from: aC, reason: merged with bridge method [inline-methods] */
    public final zzapr clone() {
        int size = size();
        zzapr zzaprVar = new zzapr(size);
        System.arraycopy(this.bjB, 0, zzaprVar.bjB, 0, size);
        for (int i = 0; i < size; i++) {
            if (this.bjC[i] != null) {
                zzaprVar.bjC[i] = (zzaps) this.bjC[i].clone();
            }
        }
        zzaprVar.mSize = size;
        return zzaprVar;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzapr)) {
            return false;
        }
        zzapr zzaprVar = (zzapr) obj;
        if (size() != zzaprVar.size()) {
            return false;
        }
        return zza(this.bjB, zzaprVar.bjB, this.mSize) && zza(this.bjC, zzaprVar.bjC, this.mSize);
    }

    public int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.mSize; i2++) {
            i = (((i * 31) + this.bjB[i2]) * 31) + this.bjC[i2].hashCode();
        }
        return i;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    int size() {
        return this.mSize;
    }

    void zza(int i, zzaps zzapsVar) {
        int zzagh = zzagh(i);
        if (zzagh >= 0) {
            this.bjC[zzagh] = zzapsVar;
            return;
        }
        int i2 = zzagh ^ (-1);
        if (i2 < this.mSize && this.bjC[i2] == bjz) {
            this.bjB[i2] = i;
            this.bjC[i2] = zzapsVar;
            return;
        }
        if (this.mSize >= this.bjB.length) {
            int idealIntArraySize = idealIntArraySize(this.mSize + 1);
            int[] iArr = new int[idealIntArraySize];
            zzaps[] zzapsVarArr = new zzaps[idealIntArraySize];
            System.arraycopy(this.bjB, 0, iArr, 0, this.bjB.length);
            System.arraycopy(this.bjC, 0, zzapsVarArr, 0, this.bjC.length);
            this.bjB = iArr;
            this.bjC = zzapsVarArr;
        }
        if (this.mSize - i2 != 0) {
            System.arraycopy(this.bjB, i2, this.bjB, i2 + 1, this.mSize - i2);
            System.arraycopy(this.bjC, i2, this.bjC, i2 + 1, this.mSize - i2);
        }
        this.bjB[i2] = i;
        this.bjC[i2] = zzapsVar;
        this.mSize++;
    }

    zzaps zzagf(int i) {
        int zzagh = zzagh(i);
        if (zzagh < 0 || this.bjC[zzagh] == bjz) {
            return null;
        }
        return this.bjC[zzagh];
    }

    zzaps zzagg(int i) {
        return this.bjC[i];
    }
}
