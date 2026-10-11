package com.google.android.gms.auth.account;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzms;
import com.google.android.gms.internal.zzmt;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WorkAccount {
    private static final Api.zzf<zzmt> bJ = new Api.zzf<>();
    private static final Api.zza<zzmt, Api.ApiOptions.NoOptions> bK = new Api.zza<zzmt, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.auth.account.WorkAccount.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
        public zzmt zza(Context context, Looper looper, zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzmt(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("WorkAccount.API", bK, bJ);
    public static final WorkAccountApi WorkAccountApi = new zzms();

    private WorkAccount() {
    }
}
