package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AccountChangeEventsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new zzb();
    Account aL;

    @Deprecated
    String cb;
    int cd;
    final int mVersion;

    public AccountChangeEventsRequest() {
        this.mVersion = 1;
    }

    AccountChangeEventsRequest(int i, int i2, String str, Account account) {
        this.mVersion = i;
        this.cd = i2;
        this.cb = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.aL = account;
        } else {
            this.aL = new Account(str, "com.google");
        }
    }

    public Account getAccount() {
        return this.aL;
    }

    @Deprecated
    public String getAccountName() {
        return this.cb;
    }

    public int getEventIndex() {
        return this.cd;
    }

    public AccountChangeEventsRequest setAccount(Account account) {
        this.aL = account;
        return this;
    }

    @Deprecated
    public AccountChangeEventsRequest setAccountName(String str) {
        this.cb = str;
        return this;
    }

    public AccountChangeEventsRequest setEventIndex(int i) {
        this.cd = i;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
