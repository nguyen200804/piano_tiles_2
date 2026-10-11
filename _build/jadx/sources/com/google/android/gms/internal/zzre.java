package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzre {
    public static final Api.zzf<zzri> bJ = new Api.zzf<>();
    private static final Api.zza<zzri, Api.ApiOptions.NoOptions> bK = new Api.zza<zzri, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.internal.zzre.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzf, reason: merged with bridge method [inline-methods] */
        public zzri zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzri(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Common.API", bK, bJ);
    public static final zzrf zt = new zzrg();
}
