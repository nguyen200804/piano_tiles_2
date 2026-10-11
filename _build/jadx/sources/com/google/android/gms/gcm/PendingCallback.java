package com.google.android.gms.gcm;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PendingCallback implements Parcelable, ReflectedParcelable {
    public static final Parcelable.Creator<PendingCallback> CREATOR = new Parcelable.Creator<PendingCallback>() { // from class: com.google.android.gms.gcm.PendingCallback.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: zzmj, reason: merged with bridge method [inline-methods] */
        public PendingCallback createFromParcel(Parcel parcel) {
            return new PendingCallback(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzsp, reason: merged with bridge method [inline-methods] */
        public PendingCallback[] newArray(int i) {
            return new PendingCallback[i];
        }
    };
    final IBinder xL;

    public PendingCallback(Parcel parcel) {
        this.xL = parcel.readStrongBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IBinder getIBinder() {
        return this.xL;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.xL);
    }
}
