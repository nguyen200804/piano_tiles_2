package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.internal.zzpo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class Batch extends zzpo<BatchResult> {
    private int rH;
    private boolean rI;
    private boolean rJ;
    private final PendingResult<?>[] rK;
    private final Object zzail;

    public static final class Builder {
        private GoogleApiClient gY;
        private List<PendingResult<?>> rM = new ArrayList();

        public Builder(GoogleApiClient googleApiClient) {
            this.gY = googleApiClient;
        }

        public <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            BatchResultToken<R> batchResultToken = new BatchResultToken<>(this.rM.size());
            this.rM.add(pendingResult);
            return batchResultToken;
        }

        public Batch build() {
            return new Batch(this.rM, this.gY);
        }
    }

    private Batch(List<PendingResult<?>> list, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.zzail = new Object();
        this.rH = list.size();
        this.rK = new PendingResult[this.rH];
        if (list.isEmpty()) {
            zzc((Batch) new BatchResult(Status.sq, this.rK));
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return;
            }
            PendingResult<?> pendingResult = list.get(i2);
            this.rK[i2] = pendingResult;
            pendingResult.zza(new PendingResult.zza() { // from class: com.google.android.gms.common.api.Batch.1
                @Override // com.google.android.gms.common.api.PendingResult.zza
                public void zzv(Status status) {
                    synchronized (Batch.this.zzail) {
                        if (Batch.this.isCanceled()) {
                            return;
                        }
                        if (status.isCanceled()) {
                            Batch.this.rJ = true;
                        } else if (!status.isSuccess()) {
                            Batch.this.rI = true;
                        }
                        Batch.zzb(Batch.this);
                        if (Batch.this.rH == 0) {
                            if (Batch.this.rJ) {
                                Batch.super.cancel();
                            } else {
                                Batch.this.zzc((Batch) new BatchResult(Batch.this.rI ? new Status(13) : Status.sq, Batch.this.rK));
                            }
                        }
                    }
                }
            });
            i = i2 + 1;
        }
    }

    static /* synthetic */ int zzb(Batch batch) {
        int i = batch.rH;
        batch.rH = i - 1;
        return i;
    }

    @Override // com.google.android.gms.internal.zzpo, com.google.android.gms.common.api.PendingResult
    public void cancel() {
        super.cancel();
        for (PendingResult<?> pendingResult : this.rK) {
            pendingResult.cancel();
        }
    }

    @Override // com.google.android.gms.internal.zzpo
    /* renamed from: createFailedResult, reason: merged with bridge method [inline-methods] */
    public BatchResult zzc(Status status) {
        return new BatchResult(status, this.rK);
    }
}
