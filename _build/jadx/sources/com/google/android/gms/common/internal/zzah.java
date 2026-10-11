package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzah<T extends IInterface> extends zzk<T> {
    private final Api.zzg<T> zn;

    public zzah(Context context, Looper looper, int i, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, zzg zzgVar, Api.zzg<T> zzgVar2) {
        super(context, looper, i, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zn = zzgVar2;
    }

    public Api.zzg<T> zzatn() {
        return this.zn;
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected T zzbb(IBinder iBinder) {
        return this.zn.zzbb(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected void zzc(int i, T t) {
        this.zn.zza(i, t);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzqz() {
        return this.zn.zzqz();
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return this.zn.zzra();
    }
}
