package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.auth.account.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzmt extends com.google.android.gms.common.internal.zzk<com.google.android.gms.auth.account.zzb> {
    public zzmt(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 120, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* renamed from: zzby, reason: merged with bridge method [inline-methods] */
    public com.google.android.gms.auth.account.zzb zzbb(IBinder iBinder) {
        return zzb.zza.zzbx(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzqz() {
        return "com.google.android.gms.auth.account.workaccount.START";
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return "com.google.android.gms.auth.account.IWorkAccountService";
    }
}
