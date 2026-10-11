package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareModel;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LikeContent implements ShareModel {
    public static final Parcelable.Creator<LikeContent> CREATOR = new Parcelable.Creator<LikeContent>() { // from class: com.facebook.share.internal.LikeContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LikeContent createFromParcel(Parcel parcel) {
            return new LikeContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LikeContent[] newArray(int i) {
            return new LikeContent[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final String f3471a;

    /* renamed from: b, reason: collision with root package name */
    private final String f3472b;

    LikeContent(Parcel in) {
        this.f3471a = in.readString();
        this.f3472b = in.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.f3471a);
        out.writeString(this.f3472b);
    }
}
