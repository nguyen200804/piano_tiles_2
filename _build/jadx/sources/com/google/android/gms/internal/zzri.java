package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzrk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzri extends com.google.android.gms.common.internal.zzk<zzrk> {
    public zzri(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 39, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* renamed from: zzdy, reason: merged with bridge method [inline-methods] */
    public zzrk zzbb(IBinder iBinder) {
        return zzrk.zza.zzea(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    public String zzqz() {
        return "com.google.android.gms.common.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return "com.google.android.gms.common.internal.service.ICommonService";
    }
}
