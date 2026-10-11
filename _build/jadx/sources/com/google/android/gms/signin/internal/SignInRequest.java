package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class SignInRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInRequest> CREATOR = new zzh();
    final ResolveAccountRequest aud;
    final int mVersionCode;

    SignInRequest(int i, ResolveAccountRequest resolveAccountRequest) {
        this.mVersionCode = i;
        this.aud = resolveAccountRequest;
    }

    public SignInRequest(ResolveAccountRequest resolveAccountRequest) {
        this(1, resolveAccountRequest);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public ResolveAccountRequest zzbzy() {
        return this.aud;
    }
}
