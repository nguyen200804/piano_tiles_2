package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareMedia;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class ShareVideo extends ShareMedia {
    public static final Parcelable.Creator<ShareVideo> CREATOR = new Parcelable.Creator<ShareVideo>() { // from class: com.facebook.share.model.ShareVideo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareVideo createFromParcel(Parcel parcel) {
            return new ShareVideo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareVideo[] newArray(int i) {
            return new ShareVideo[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final Uri f3532a;

    private ShareVideo(a builder) {
        super(builder);
        this.f3532a = builder.f3533a;
    }

    ShareVideo(Parcel in) {
        super(in);
        this.f3532a = (Uri) in.readParcelable(Uri.class.getClassLoader());
    }

    @Nullable
    public Uri b() {
        return this.f3532a;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        super.writeToParcel(out, flags);
        out.writeParcelable(this.f3532a, 0);
    }

    public static final class a extends ShareMedia.a<ShareVideo, a> {

        /* renamed from: a, reason: collision with root package name */
        private Uri f3533a;

        public a a(@Nullable Uri uri) {
            this.f3533a = uri;
            return this;
        }

        public ShareVideo a() {
            return new ShareVideo(this);
        }

        @Override // com.facebook.share.model.ShareMedia.a
        public a a(ShareVideo shareVideo) {
            return shareVideo == null ? this : ((a) super.a((a) shareVideo)).a(shareVideo.b());
        }

        public a a(Parcel parcel) {
            return a((ShareVideo) parcel.readParcelable(ShareVideo.class.getClassLoader()));
        }
    }
}
