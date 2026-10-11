package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class RecordConsentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RecordConsentRequest> CREATOR = new zzf();
    private final Account aL;
    private final Scope[] aua;
    private final String dR;
    final int mVersionCode;

    RecordConsentRequest(int i, Account account, Scope[] scopeArr, String str) {
        this.mVersionCode = i;
        this.aL = account;
        this.aua = scopeArr;
        this.dR = str;
    }

    public Account getAccount() {
        return this.aL;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    public String zzafu() {
        return this.dR;
    }

    public Scope[] zzbzw() {
        return this.aua;
    }
}
