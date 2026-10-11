package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class AppGroupCreationContent implements ShareModel {
    public static final Parcelable.Creator<AppGroupCreationContent> CREATOR = new Parcelable.Creator<AppGroupCreationContent>() { // from class: com.facebook.share.model.AppGroupCreationContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AppGroupCreationContent createFromParcel(Parcel parcel) {
            return new AppGroupCreationContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AppGroupCreationContent[] newArray(int i) {
            return new AppGroupCreationContent[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final String f3496a;

    /* renamed from: b, reason: collision with root package name */
    private final String f3497b;
    private a c;

    public enum a {
        Open,
        Closed
    }

    AppGroupCreationContent(Parcel in) {
        this.f3496a = in.readString();
        this.f3497b = in.readString();
        this.c = (a) in.readSerializable();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.f3496a);
        out.writeString(this.f3497b);
        out.writeSerializable(this.c);
    }
}
