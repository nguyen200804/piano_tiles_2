package com.google.android.gms.internal;

import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzqu extends zzpo<Status> {
    @Deprecated
    public zzqu(Looper looper) {
        super(looper);
    }

    public zzqu(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzpo
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public Status zzc(Status status) {
        return status;
    }
}
