package com.mnt.impl.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.mnt.Ad;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class d implements Parcelable.Creator<c> {
    d() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ c[] newArray(int i) {
        return new c[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ c createFromParcel(Parcel parcel) {
        Ad createFromParcel = Ad.CREATOR.createFromParcel(parcel);
        return new c(createFromParcel.getCampId(), createFromParcel.getPackageName(), createFromParcel.getIcon(), createFromParcel.getDescription(), createFromParcel.getName(), createFromParcel.getInstalls(), createFromParcel.getSize(), createFromParcel.getRecommendMessage(), createFromParcel.getRate(), createFromParcel.getStoreRating(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readLong(), parcel.readString(), createFromParcel.getAppType(), createFromParcel.getCreatives(), com.mnt.impl.b.b.a(parcel.readInt()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), createFromParcel.getAdCallToAction());
    }
}
