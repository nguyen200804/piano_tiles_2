package com.facebook.notifications;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NotificationCardResult implements Parcelable {
    public static final Parcelable.Creator<NotificationCardResult> CREATOR = new Parcelable.Creator<NotificationCardResult>() { // from class: com.facebook.notifications.NotificationCardResult.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NotificationCardResult createFromParcel(Parcel parcel) {
            return new NotificationCardResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NotificationCardResult[] newArray(int i) {
            return new NotificationCardResult[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final Uri f3358a;

    public NotificationCardResult(@Nullable Uri actionUri) {
        this.f3358a = actionUri;
    }

    private NotificationCardResult(Parcel parcel) {
        this.f3358a = (Uri) parcel.readParcelable(getClass().getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.f3358a, flags);
    }
}
