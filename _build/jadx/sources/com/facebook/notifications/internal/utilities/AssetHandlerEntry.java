package com.facebook.notifications.internal.utilities;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.facebook.notifications.internal.asset.Asset;
import com.facebook.notifications.internal.asset.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AssetHandlerEntry implements Parcelable {
    public static final Parcelable.Creator<AssetHandlerEntry> CREATOR = new Parcelable.Creator<AssetHandlerEntry>() { // from class: com.facebook.notifications.internal.utilities.AssetHandlerEntry.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AssetHandlerEntry createFromParcel(Parcel parcel) {
            return new AssetHandlerEntry(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AssetHandlerEntry[] newArray(int i) {
            return new AssetHandlerEntry[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final String f3418a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Class<a.b<? extends Asset>> f3419b;

    public AssetHandlerEntry(@NonNull Parcel source) {
        this.f3418a = source.readString();
        try {
            this.f3419b = Class.forName(source.readString());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @NonNull
    public String a() {
        return this.f3418a;
    }

    @NonNull
    public Class<a.b<? extends Asset>> b() {
        return this.f3419b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.f3418a);
        dest.writeString(this.f3419b.getName());
    }
}
