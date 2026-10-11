package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AuthAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthAccountRequest> CREATOR = new zzc();
    final int mVersionCode;
    final Scope[] ry;
    final IBinder xj;
    Integer xk;
    Integer xl;

    AuthAccountRequest(int i, IBinder iBinder, Scope[] scopeArr, Integer num, Integer num2) {
        this.mVersionCode = i;
        this.xj = iBinder;
        this.ry = scopeArr;
        this.xk = num;
        this.xl = num2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
