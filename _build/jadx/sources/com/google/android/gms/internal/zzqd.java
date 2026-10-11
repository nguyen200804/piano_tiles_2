package com.google.android.gms.internal;

import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzpm;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzqd<O extends Api.ApiOptions> extends zzpu {
    private final com.google.android.gms.common.api.zzc<O> vb;

    public zzqd(com.google.android.gms.common.api.zzc<O> zzcVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.vb = zzcVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Looper getLooper() {
        return this.vb.getLooper();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zza(zzqx zzqxVar) {
        this.vb.zzanx();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zzb(zzqx zzqxVar) {
        this.vb.zzany();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, R extends Result, T extends zzpm.zza<R, A>> T zzc(@NonNull T t) {
        return (T) this.vb.zza((com.google.android.gms.common.api.zzc<O>) t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, T extends zzpm.zza<? extends Result, A>> T zzd(@NonNull T t) {
        return (T) this.vb.zzb((com.google.android.gms.common.api.zzc<O>) t);
    }
}
