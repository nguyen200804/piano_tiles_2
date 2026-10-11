package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpm;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class zzrh<R extends Result> extends zzpm.zza<R, zzri> {

    static abstract class zza extends zzrh<Status> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpo
        /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status zzc(Status status) {
            return status;
        }
    }

    public zzrh(GoogleApiClient googleApiClient) {
        super(zzre.API, googleApiClient);
    }
}
