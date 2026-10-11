package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.util.SparseArray;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpm;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApiNotAvailableException;
import com.google.firebase.FirebaseException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzpi {
    public final int iq;
    public final int sx;

    public static final class zza extends zzpi {
        public final zzpm.zza<? extends Result, Api.zzb> sy;

        public zza(int i, int i2, zzpm.zza<? extends Result, Api.zzb> zzaVar) {
            super(i, i2);
            this.sy = zzaVar;
        }

        @Override // com.google.android.gms.internal.zzpi
        public boolean cancel() {
            return this.sy.zzaov();
        }

        @Override // com.google.android.gms.internal.zzpi
        public void zza(SparseArray<zzqy> sparseArray) {
            zzqy zzqyVar = sparseArray.get(this.sx);
            if (zzqyVar != null) {
                zzqyVar.zzg(this.sy);
            }
        }

        @Override // com.google.android.gms.internal.zzpi
        public void zzb(Api.zzb zzbVar) throws DeadObjectException {
            this.sy.zzb((zzpm.zza<? extends Result, Api.zzb>) zzbVar);
        }

        @Override // com.google.android.gms.internal.zzpi
        public void zzx(@NonNull Status status) {
            this.sy.zzz(status);
        }
    }

    public static final class zzb<TResult> extends zzpi {
        private static final Status sB = new Status(8, "Connection to Google Play services was lost while executing the API call.");
        private final TaskCompletionSource<TResult> sA;
        private final zzqw<Api.zzb, TResult> sz;

        public zzb(int i, int i2, zzqw<Api.zzb, TResult> zzqwVar, TaskCompletionSource<TResult> taskCompletionSource) {
            super(i, i2);
            this.sA = taskCompletionSource;
            this.sz = zzqwVar;
        }

        @Override // com.google.android.gms.internal.zzpi
        public void zzb(Api.zzb zzbVar) throws DeadObjectException {
            try {
                this.sz.zza(zzbVar, this.sA);
            } catch (DeadObjectException e) {
                zzx(sB);
                throw e;
            } catch (RemoteException e2) {
                zzx(sB);
            }
        }

        @Override // com.google.android.gms.internal.zzpi
        public void zzx(@NonNull Status status) {
            if (status.getStatusCode() == 8) {
                this.sA.setException(new FirebaseException(status.getStatusMessage()));
            } else {
                this.sA.setException(new FirebaseApiNotAvailableException(status.getStatusMessage()));
            }
        }
    }

    public zzpi(int i, int i2) {
        this.sx = i;
        this.iq = i2;
    }

    public boolean cancel() {
        return true;
    }

    public void zza(SparseArray<zzqy> sparseArray) {
    }

    public abstract void zzb(Api.zzb zzbVar) throws DeadObjectException;

    public abstract void zzx(@NonNull Status status);
}
