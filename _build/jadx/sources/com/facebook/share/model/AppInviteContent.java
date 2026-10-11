package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class AppInviteContent implements ShareModel {
    public static final Parcelable.Creator<AppInviteContent> CREATOR = new Parcelable.Creator<AppInviteContent>() { // from class: com.facebook.share.model.AppInviteContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AppInviteContent createFromParcel(Parcel parcel) {
            return new AppInviteContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AppInviteContent[] newArray(int i) {
            return new AppInviteContent[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final String f3500a;

    /* renamed from: b, reason: collision with root package name */
    private final String f3501b;

    private AppInviteContent(a builder) {
        this.f3500a = builder.f3502a;
        this.f3501b = builder.f3503b;
    }

    AppInviteContent(Parcel in) {
        this.f3500a = in.readString();
        this.f3501b = in.readString();
    }

    public String a() {
        return this.f3500a;
    }

    public String b() {
        return this.f3501b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.f3500a);
        out.writeString(this.f3501b);
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private String f3502a;

        /* renamed from: b, reason: collision with root package name */
        private String f3503b;

        public a a(String str) {
            this.f3502a = str;
            return this;
        }

        public a b(String str) {
            this.f3503b = str;
            return this;
        }

        public AppInviteContent a() {
            return new AppInviteContent(this);
        }
    }
}
