package com.google.android.gms.common.server;

import android.os.Parcel;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final zza CREATOR = new zza();
    final int mVersionCode;
    public final String zx;
    public final int zy;

    public FavaDiagnosticsEntity(int i, String str, int i2) {
        this.mVersionCode = i;
        this.zx = str;
        this.zy = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
