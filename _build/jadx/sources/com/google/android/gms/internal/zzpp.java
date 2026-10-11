package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzpp implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    public final Api<?> pN;
    private final int tf;
    private zzqa tg;

    public zzpp(Api<?> api, int i) {
        this.pN = api;
        this.tf = i;
    }

    private void zzapa() {
        com.google.android.gms.common.internal.zzab.zzb(this.tg, "Callbacks must be attached to a GoogleApiClient instance before connecting the client.");
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(@Nullable Bundle bundle) {
        zzapa();
        this.tg.onConnected(bundle);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        zzapa();
        this.tg.zza(connectionResult, this.pN, this.tf);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        zzapa();
        this.tg.onConnectionSuspended(i);
    }

    public void zza(zzqa zzqaVar) {
        this.tg = zzqaVar;
    }
}
