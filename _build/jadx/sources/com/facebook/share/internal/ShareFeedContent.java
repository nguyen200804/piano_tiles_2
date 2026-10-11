package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ShareFeedContent extends ShareContent<ShareFeedContent, Object> {
    public static final Parcelable.Creator<ShareFeedContent> CREATOR = new Parcelable.Creator<ShareFeedContent>() { // from class: com.facebook.share.internal.ShareFeedContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareFeedContent createFromParcel(Parcel parcel) {
            return new ShareFeedContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareFeedContent[] newArray(int i) {
            return new ShareFeedContent[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final String f3473a;

    /* renamed from: b, reason: collision with root package name */
    private final String f3474b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private final String g;

    ShareFeedContent(Parcel in) {
        super(in);
        this.f3473a = in.readString();
        this.f3474b = in.readString();
        this.c = in.readString();
        this.d = in.readString();
        this.e = in.readString();
        this.f = in.readString();
        this.g = in.readString();
    }

    public String a() {
        return this.f3473a;
    }

    public String b() {
        return this.f3474b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public String f() {
        return this.f;
    }

    public String g() {
        return this.g;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        super.writeToParcel(out, flags);
        out.writeString(this.f3473a);
        out.writeString(this.f3474b);
        out.writeString(this.c);
        out.writeString(this.d);
        out.writeString(this.e);
        out.writeString(this.f);
        out.writeString(this.g);
    }
}
