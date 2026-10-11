package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class SignInResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInResponse> CREATOR = new zzi();
    private final ResolveAccountResponse aue;
    final int mVersionCode;
    private final ConnectionResult rF;

    public SignInResponse(int i) {
        this(new ConnectionResult(i, null), null);
    }

    SignInResponse(int i, ConnectionResult connectionResult, ResolveAccountResponse resolveAccountResponse) {
        this.mVersionCode = i;
        this.rF = connectionResult;
        this.aue = resolveAccountResponse;
    }

    public SignInResponse(ConnectionResult connectionResult, ResolveAccountResponse resolveAccountResponse) {
        this(1, connectionResult, resolveAccountResponse);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public ConnectionResult zzath() {
        return this.rF;
    }

    public ResolveAccountResponse zzbzz() {
        return this.aue;
    }
}
