package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzqq;
import com.google.android.gms.internal.zzqu;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class PendingResults {

    private static final class zza<R extends Result> extends zzpo<R> {
        private final R sl;

        public zza(R r) {
            super(Looper.getMainLooper());
            this.sl = r;
        }

        @Override // com.google.android.gms.internal.zzpo
        protected R zzc(Status status) {
            if (status.getStatusCode() != this.sl.getStatus().getStatusCode()) {
                throw new UnsupportedOperationException("Creating failed results is not supported");
            }
            return this.sl;
        }
    }

    private static final class zzb<R extends Result> extends zzpo<R> {
        private final R sm;

        public zzb(GoogleApiClient googleApiClient, R r) {
            super(googleApiClient);
            this.sm = r;
        }

        @Override // com.google.android.gms.internal.zzpo
        protected R zzc(Status status) {
            return this.sm;
        }
    }

    private static final class zzc<R extends Result> extends zzpo<R> {
        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpo
        protected R zzc(Status status) {
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    private PendingResults() {
    }

    public static PendingResult<Status> canceledPendingResult() {
        zzqu zzquVar = new zzqu(Looper.getMainLooper());
        zzquVar.cancel();
        return zzquVar;
    }

    public static <R extends Result> PendingResult<R> canceledPendingResult(R r) {
        zzab.zzb(r, "Result must not be null");
        zzab.zzb(r.getStatus().getStatusCode() == 16, "Status code must be CommonStatusCodes.CANCELED");
        zza zzaVar = new zza(r);
        zzaVar.cancel();
        return zzaVar;
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r) {
        zzab.zzb(r, "Result must not be null");
        zzc zzcVar = new zzc(null);
        zzcVar.zzc((zzc) r);
        return new zzqq(zzcVar);
    }

    public static PendingResult<Status> immediatePendingResult(Status status) {
        zzab.zzb(status, "Result must not be null");
        zzqu zzquVar = new zzqu(Looper.getMainLooper());
        zzquVar.zzc((zzqu) status);
        return zzquVar;
    }

    public static <R extends Result> PendingResult<R> zza(R r, GoogleApiClient googleApiClient) {
        zzab.zzb(r, "Result must not be null");
        zzab.zzb(!r.getStatus().isSuccess(), "Status code must not be SUCCESS");
        zzb zzbVar = new zzb(googleApiClient, r);
        zzbVar.zzc((zzb) r);
        return zzbVar;
    }

    public static PendingResult<Status> zza(Status status, GoogleApiClient googleApiClient) {
        zzab.zzb(status, "Result must not be null");
        zzqu zzquVar = new zzqu(googleApiClient);
        zzquVar.zzc((zzqu) status);
        return zzquVar;
    }

    public static <R extends Result> OptionalPendingResult<R> zzb(R r, GoogleApiClient googleApiClient) {
        zzab.zzb(r, "Result must not be null");
        zzc zzcVar = new zzc(googleApiClient);
        zzcVar.zzc((zzc) r);
        return new zzqq(zzcVar);
    }
}
