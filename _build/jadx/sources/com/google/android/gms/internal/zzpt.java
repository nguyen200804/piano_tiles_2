package com.google.android.gms.internal;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzpt implements Releasable, Result {
    protected final Status bY;
    protected final DataHolder tu;

    protected zzpt(DataHolder dataHolder, Status status) {
        this.bY = status;
        this.tu = dataHolder;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.bY;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
        if (this.tu != null) {
            this.tu.close();
        }
    }
}
