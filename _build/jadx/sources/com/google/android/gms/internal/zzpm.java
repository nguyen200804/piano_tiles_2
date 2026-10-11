package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzqy;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzpm {

    public static abstract class zza<R extends Result, A extends Api.zzb> extends zzpo<R> implements zzb<R> {
        private final Api<?> pN;
        private final Api.zzc<A> sJ;
        private AtomicReference<zzqy.zzb> sK;

        @Deprecated
        protected zza(Api.zzc<A> zzcVar, GoogleApiClient googleApiClient) {
            super((GoogleApiClient) com.google.android.gms.common.internal.zzab.zzb(googleApiClient, "GoogleApiClient must not be null"));
            this.sK = new AtomicReference<>();
            this.sJ = (Api.zzc) com.google.android.gms.common.internal.zzab.zzy(zzcVar);
            this.pN = null;
        }

        protected zza(Api<?> api, GoogleApiClient googleApiClient) {
            super((GoogleApiClient) com.google.android.gms.common.internal.zzab.zzb(googleApiClient, "GoogleApiClient must not be null"));
            this.sK = new AtomicReference<>();
            this.sJ = (Api.zzc<A>) api.zzans();
            this.pN = api;
        }

        private void zza(RemoteException remoteException) {
            zzz(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzpm.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzc((zza<R, A>) obj);
        }

        protected abstract void zza(A a2) throws RemoteException;

        public void zza(zzqy.zzb zzbVar) {
            this.sK.set(zzbVar);
        }

        public final Api.zzc<A> zzans() {
            return this.sJ;
        }

        public final Api<?> zzanz() {
            return this.pN;
        }

        public void zzaor() {
            setResultCallback(null);
        }

        @Override // com.google.android.gms.internal.zzpo
        protected void zzaos() {
            zzqy.zzb andSet = this.sK.getAndSet(null);
            if (andSet != null) {
                andSet.zzh(this);
            }
        }

        public final void zzb(A a2) throws DeadObjectException {
            try {
                zza((zza<R, A>) a2);
            } catch (DeadObjectException e) {
                zza(e);
                throw e;
            } catch (RemoteException e2) {
                zza(e2);
            }
        }

        protected void zzb(R r) {
        }

        @Override // com.google.android.gms.internal.zzpm.zzb
        public final void zzz(Status status) {
            com.google.android.gms.common.internal.zzab.zzb(!status.isSuccess(), "Failed result must not be success");
            R zzc = zzc(status);
            zzc((zza<R, A>) zzc);
            zzb((zza<R, A>) zzc);
        }
    }

    public interface zzb<R> {
        void setResult(R r);

        void zzz(Status status);
    }
}
