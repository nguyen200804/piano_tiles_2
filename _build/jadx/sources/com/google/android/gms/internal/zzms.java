package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.RemoteException;
import com.google.android.gms.auth.account.WorkAccount;
import com.google.android.gms.auth.account.WorkAccountApi;
import com.google.android.gms.auth.account.zza;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpm;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzms implements WorkAccountApi {
    private static final Status ct = new Status(13);

    static class zza extends zza.AbstractBinderC0125zza {
        zza() {
        }

        public void zzay(boolean z) {
            throw new UnsupportedOperationException();
        }

        public void zzc(Account account) {
            throw new UnsupportedOperationException();
        }
    }

    static class zzb implements WorkAccountApi.AddAccountResult {
        private final Account aL;
        private final Status bY;

        public zzb(Status status, Account account) {
            this.bY = status;
            this.aL = account;
        }

        @Override // com.google.android.gms.auth.account.WorkAccountApi.AddAccountResult
        public Account getAccount() {
            return this.aL;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.bY;
        }
    }

    static class zzc implements Result {
        private final Status bY;

        public zzc(Status status) {
            this.bY = status;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.bY;
        }
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public PendingResult<WorkAccountApi.AddAccountResult> addWorkAccount(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zzd(new zzpm.zza<WorkAccountApi.AddAccountResult, zzmt>(WorkAccount.API, googleApiClient) { // from class: com.google.android.gms.internal.zzms.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpm.zza
            public void zza(zzmt zzmtVar) throws RemoteException {
                ((com.google.android.gms.auth.account.zzb) zzmtVar.zzasa()).zza(new zza() { // from class: com.google.android.gms.internal.zzms.2.1
                    @Override // com.google.android.gms.internal.zzms.zza, com.google.android.gms.auth.account.zza
                    public void zzc(Account account) {
                        zzc((AnonymousClass2) new zzb(account != null ? Status.sq : zzms.ct, account));
                    }
                }, str);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpo
            /* renamed from: zzf, reason: merged with bridge method [inline-methods] */
            public WorkAccountApi.AddAccountResult zzc(Status status) {
                return new zzb(status, null);
            }
        });
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public PendingResult<Result> removeWorkAccount(GoogleApiClient googleApiClient, final Account account) {
        return googleApiClient.zzd(new zzpm.zza<Result, zzmt>(WorkAccount.API, googleApiClient) { // from class: com.google.android.gms.internal.zzms.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpm.zza
            public void zza(zzmt zzmtVar) throws RemoteException {
                ((com.google.android.gms.auth.account.zzb) zzmtVar.zzasa()).zza(new zza() { // from class: com.google.android.gms.internal.zzms.3.1
                    @Override // com.google.android.gms.internal.zzms.zza, com.google.android.gms.auth.account.zza
                    public void zzay(boolean z) {
                        zzc((AnonymousClass3) new zzc(z ? Status.sq : zzms.ct));
                    }
                }, account);
            }

            @Override // com.google.android.gms.internal.zzpo
            protected Result zzc(Status status) {
                return new zzc(status);
            }
        });
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public void setWorkAuthenticatorEnabled(GoogleApiClient googleApiClient, final boolean z) {
        googleApiClient.zzd(new zzpm.zza<Result, zzmt>(WorkAccount.API, googleApiClient) { // from class: com.google.android.gms.internal.zzms.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpm.zza
            public void zza(zzmt zzmtVar) throws RemoteException {
                ((com.google.android.gms.auth.account.zzb) zzmtVar.zzasa()).zzaz(z);
            }

            @Override // com.google.android.gms.internal.zzpo
            protected Result zzc(Status status) {
                return null;
            }
        });
    }
}
