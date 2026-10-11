package com.facebook.notifications.internal.content;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface Content extends Parcelable {

    public enum VerticalAlignment implements Parcelable {
        Top,
        Center,
        Bottom;

        public static final Parcelable.Creator<VerticalAlignment> CREATOR = new com.facebook.notifications.internal.utilities.a(VerticalAlignment.class, values());

        public static VerticalAlignment a(String str) {
            switch (str) {
                case "top":
                    return Top;
                case "center":
                    return Center;
                case "bottom":
                    return Bottom;
                default:
                    return Center;
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(ordinal());
        }
    }
}
