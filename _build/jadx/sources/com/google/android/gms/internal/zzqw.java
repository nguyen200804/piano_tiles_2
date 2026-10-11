package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzqw<A extends Api.zzb, TResult> {
    protected abstract void zza(A a2, TaskCompletionSource<TResult> taskCompletionSource) throws RemoteException;
}
