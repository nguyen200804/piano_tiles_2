package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpm;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class zznd extends zzpm.zza<ProxyApi.ProxyResult, zzna> {
    public zznd(GoogleApiClient googleApiClient) {
        super(com.google.android.gms.auth.api.zza.API, googleApiClient);
    }

    protected abstract void zza(Context context, zznc zzncVar) throws RemoteException;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzpm.zza
    public final void zza(zzna zznaVar) throws RemoteException {
        zza(zznaVar.getContext(), (zznc) zznaVar.zzasa());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzpo
    /* renamed from: zzk, reason: merged with bridge method [inline-methods] */
    public ProxyApi.ProxyResult zzc(Status status) {
        return new zznf(status);
    }
}
