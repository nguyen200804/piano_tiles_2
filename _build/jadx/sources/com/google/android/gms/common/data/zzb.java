package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.zzab;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzb<T> implements Iterator<T> {
    protected final DataBuffer<T> vU;
    protected int vV = -1;

    public zzb(DataBuffer<T> dataBuffer) {
        this.vU = (DataBuffer) zzab.zzy(dataBuffer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.vV < this.vU.getCount() + (-1);
    }

    @Override // java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException(new StringBuilder(46).append("Cannot advance the iterator beyond ").append(this.vV).toString());
        }
        DataBuffer<T> dataBuffer = this.vU;
        int i = this.vV + 1;
        this.vV = i;
        return dataBuffer.get(i);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
