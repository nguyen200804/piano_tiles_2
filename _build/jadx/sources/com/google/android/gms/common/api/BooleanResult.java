package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzab;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BooleanResult implements Result {
    private final Status bY;
    private final boolean rN;

    public BooleanResult(Status status, boolean z) {
        this.bY = (Status) zzab.zzb(status, "Status must not be null");
        this.rN = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BooleanResult)) {
            return false;
        }
        BooleanResult booleanResult = (BooleanResult) obj;
        return this.bY.equals(booleanResult.bY) && this.rN == booleanResult.rN;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.bY;
    }

    public boolean getValue() {
        return this.rN;
    }

    public final int hashCode() {
        return (this.rN ? 1 : 0) + ((this.bY.hashCode() + 527) * 31);
    }
}
