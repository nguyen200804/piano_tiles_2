package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzpm;
import java.util.Collections;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzpx implements zzpz {
    private final zzqa tw;

    public zzpx(zzqa zzqaVar) {
        this.tw = zzqaVar;
    }

    @Override // com.google.android.gms.internal.zzpz
    public void begin() {
        this.tw.zzaqb();
        this.tw.th.uj = Collections.emptySet();
    }

    @Override // com.google.android.gms.internal.zzpz
    public void connect() {
        this.tw.zzapz();
    }

    @Override // com.google.android.gms.internal.zzpz
    public boolean disconnect() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzpz
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.zzpz
    public void onConnectionSuspended(int i) {
    }

    @Override // com.google.android.gms.internal.zzpz
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    @Override // com.google.android.gms.internal.zzpz
    public <A extends Api.zzb, R extends Result, T extends zzpm.zza<R, A>> T zzc(T t) {
        this.tw.th.uc.add(t);
        return t;
    }

    @Override // com.google.android.gms.internal.zzpz
    public <A extends Api.zzb, T extends zzpm.zza<? extends Result, A>> T zzd(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
