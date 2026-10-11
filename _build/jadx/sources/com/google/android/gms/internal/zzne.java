package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzne implements ProxyApi {
    @Override // com.google.android.gms.auth.api.proxy.ProxyApi
    public PendingResult<ProxyApi.ProxyResult> performProxyRequest(GoogleApiClient googleApiClient, final ProxyRequest proxyRequest) {
        com.google.android.gms.common.internal.zzab.zzy(googleApiClient);
        com.google.android.gms.common.internal.zzab.zzy(proxyRequest);
        return googleApiClient.zzd(new zznd(googleApiClient) { // from class: com.google.android.gms.internal.zzne.1
            @Override // com.google.android.gms.internal.zznd
            protected void zza(Context context, zznc zzncVar) throws RemoteException {
                zzncVar.zza(new zzmz() { // from class: com.google.android.gms.internal.zzne.1.1
                    @Override // com.google.android.gms.internal.zzmz, com.google.android.gms.internal.zznb
                    public void zza(ProxyResponse proxyResponse) {
                        zzc((AnonymousClass1) new zznf(proxyResponse));
                    }
                }, proxyRequest);
            }
        });
    }
}
