package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class ShareLinkContent extends ShareContent<ShareLinkContent, a> {
    public static final Parcelable.Creator<ShareLinkContent> CREATOR = new Parcelable.Creator<ShareLinkContent>() { // from class: com.facebook.share.model.ShareLinkContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareLinkContent createFromParcel(Parcel parcel) {
            return new ShareLinkContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareLinkContent[] newArray(int i) {
            return new ShareLinkContent[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final String f3516a;

    /* renamed from: b, reason: collision with root package name */
    private final String f3517b;
    private final Uri c;

    private ShareLinkContent(a builder) {
        super(builder);
        this.f3516a = builder.f3518a;
        this.f3517b = builder.f3519b;
        this.c = builder.c;
    }

    ShareLinkContent(Parcel in) {
        super(in);
        this.f3516a = in.readString();
        this.f3517b = in.readString();
        this.c = (Uri) in.readParcelable(Uri.class.getClassLoader());
    }

    public String a() {
        return this.f3516a;
    }

    @Nullable
    public String b() {
        return this.f3517b;
    }

    @Nullable
    public Uri c() {
        return this.c;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        super.writeToParcel(out, flags);
        out.writeString(this.f3516a);
        out.writeString(this.f3517b);
        out.writeParcelable(this.c, 0);
    }

    public static final class a extends ShareContent.a<ShareLinkContent, a> {

        /* renamed from: a, reason: collision with root package name */
        private String f3518a;

        /* renamed from: b, reason: collision with root package name */
        private String f3519b;
        private Uri c;

        public a a(@Nullable String str) {
            this.f3518a = str;
            return this;
        }

        public a b(@Nullable String str) {
            this.f3519b = str;
            return this;
        }

        public a b(@Nullable Uri uri) {
            this.c = uri;
            return this;
        }

        public ShareLinkContent a() {
            return new ShareLinkContent(this);
        }
    }
}
