package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zznc;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzna extends com.google.android.gms.common.internal.zzk<zznc> {
    private final Bundle dp;

    public zzna(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, com.google.android.gms.auth.api.zzb zzbVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 16, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.dp = zzbVar == null ? new Bundle() : zzbVar.zzafc();
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected Bundle zzaeu() {
        return this.dp;
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public boolean zzafk() {
        com.google.android.gms.common.internal.zzg zzasv = zzasv();
        return (TextUtils.isEmpty(zzasv.getAccountName()) || zzasv.zzb(com.google.android.gms.auth.api.zza.API).isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* renamed from: zzcf, reason: merged with bridge method [inline-methods] */
    public zznc zzbb(IBinder iBinder) {
        return zznc.zza.zzch(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzqz() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }
}
