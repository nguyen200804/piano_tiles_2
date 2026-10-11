package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzab;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class BatchResult implements Result {
    private final Status bY;
    private final PendingResult<?>[] rK;

    BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.bY = status;
        this.rK = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.bY;
    }

    public <R extends Result> R take(BatchResultToken<R> batchResultToken) {
        zzab.zzb(batchResultToken.mId < this.rK.length, "The result token does not belong to this batch");
        return (R) this.rK[batchResultToken.mId].await(0L, TimeUnit.MILLISECONDS);
    }
}
