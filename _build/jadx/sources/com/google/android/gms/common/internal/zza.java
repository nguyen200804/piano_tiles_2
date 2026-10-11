package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzq;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza extends zzq.zza {
    int xi;

    public static Account zza(zzq zzqVar) {
        Account account = null;
        if (zzqVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = zzqVar.getAccount();
            } catch (RemoteException e) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }

    public boolean equals(Object obj) {
        Account account = null;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zza)) {
            return false;
        }
        return account.equals(null);
    }

    @Override // com.google.android.gms.common.internal.zzq
    public Account getAccount() {
        int callingUid = Binder.getCallingUid();
        if (callingUid != this.xi) {
            if (!com.google.android.gms.common.zze.zze(null, callingUid)) {
                throw new SecurityException("Caller is not GooglePlayServices");
            }
            this.xi = callingUid;
        }
        return null;
    }
}
