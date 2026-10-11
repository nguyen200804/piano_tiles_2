package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AccountChangeEventsResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new zzc();
    final int mVersion;
    final List<AccountChangeEvent> zzalc;

    AccountChangeEventsResponse(int i, List<AccountChangeEvent> list) {
        this.mVersion = i;
        this.zzalc = (List) zzab.zzy(list);
    }

    public AccountChangeEventsResponse(List<AccountChangeEvent> list) {
        this.mVersion = 1;
        this.zzalc = (List) zzab.zzy(list);
    }

    public List<AccountChangeEvent> getEvents() {
        return this.zzalc;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
