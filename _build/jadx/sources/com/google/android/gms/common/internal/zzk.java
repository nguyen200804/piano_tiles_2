package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzl;
import java.util.Iterator;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzk<T extends IInterface> extends zzd<T> implements Api.zze, zzl.zza {
    private final Account aL;
    private final Set<Scope> dT;
    private final zzg tN;

    protected zzk(Context context, Looper looper, int i, zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, zzm.zzce(context), GoogleApiAvailability.getInstance(), i, zzgVar, (GoogleApiClient.ConnectionCallbacks) zzab.zzy(connectionCallbacks), (GoogleApiClient.OnConnectionFailedListener) zzab.zzy(onConnectionFailedListener));
    }

    protected zzk(Context context, Looper looper, zzm zzmVar, GoogleApiAvailability googleApiAvailability, int i, zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, zzmVar, googleApiAvailability, i, zza(connectionCallbacks), zza(onConnectionFailedListener), zzgVar.zzasn());
        this.tN = zzgVar;
        this.aL = zzgVar.getAccount();
        this.dT = zzb(zzgVar.zzask());
    }

    @Nullable
    private static zzd.zzb zza(final GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        if (connectionCallbacks == null) {
            return null;
        }
        return new zzd.zzb() { // from class: com.google.android.gms.common.internal.zzk.1
            @Override // com.google.android.gms.common.internal.zzd.zzb
            public void onConnected(@Nullable Bundle bundle) {
                GoogleApiClient.ConnectionCallbacks.this.onConnected(bundle);
            }

            @Override // com.google.android.gms.common.internal.zzd.zzb
            public void onConnectionSuspended(int i) {
                GoogleApiClient.ConnectionCallbacks.this.onConnectionSuspended(i);
            }
        };
    }

    @Nullable
    private static zzd.zzc zza(final GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        if (onConnectionFailedListener == null) {
            return null;
        }
        return new zzd.zzc() { // from class: com.google.android.gms.common.internal.zzk.2
            @Override // com.google.android.gms.common.internal.zzd.zzc
            public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
                GoogleApiClient.OnConnectionFailedListener.this.onConnectionFailed(connectionResult);
            }
        };
    }

    private Set<Scope> zzb(@NonNull Set<Scope> set) {
        Set<Scope> zzc = zzc(set);
        Iterator<Scope> it = zzc.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return zzc;
    }

    @Override // com.google.android.gms.common.internal.zzd
    public final Account getAccount() {
        return this.aL;
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected final Set<Scope> zzasc() {
        return this.dT;
    }

    protected final zzg zzasv() {
        return this.tN;
    }

    @NonNull
    protected Set<Scope> zzc(@NonNull Set<Scope> set) {
        return set;
    }
}
