package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;

@KeepName
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new Parcelable.Creator<BinderWrapper>() { // from class: com.google.android.gms.common.internal.BinderWrapper.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: zzcf, reason: merged with bridge method [inline-methods] */
        public BinderWrapper createFromParcel(Parcel parcel) {
            return new BinderWrapper(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzgd, reason: merged with bridge method [inline-methods] */
        public BinderWrapper[] newArray(int i) {
            return new BinderWrapper[i];
        }
    };
    private IBinder xL;

    public BinderWrapper() {
        this.xL = null;
    }

    public BinderWrapper(IBinder iBinder) {
        this.xL = null;
        this.xL = iBinder;
    }

    private BinderWrapper(Parcel parcel) {
        this.xL = null;
        this.xL = parcel.readStrongBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.xL);
    }
}
