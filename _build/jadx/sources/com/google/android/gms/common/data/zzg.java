package com.google.android.gms.common.data;

import java.util.NoSuchElementException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzg<T> extends zzb<T> {
    private T wq;

    public zzg(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.zzb, java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException(new StringBuilder(46).append("Cannot advance the iterator beyond ").append(this.vV).toString());
        }
        this.vV++;
        if (this.vV == 0) {
            this.wq = this.vU.get(0);
            if (!(this.wq instanceof zzc)) {
                String valueOf = String.valueOf(this.wq.getClass());
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 44).append("DataBuffer reference of type ").append(valueOf).append(" is not movable").toString());
            }
        } else {
            ((zzc) this.wq).zzfq(this.vV);
        }
        return this.wq;
    }
}
