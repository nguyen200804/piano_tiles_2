package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class ShareVideoContent extends ShareContent<ShareVideoContent, Object> implements ShareModel {
    public static final Parcelable.Creator<ShareVideoContent> CREATOR = new Parcelable.Creator<ShareVideoContent>() { // from class: com.facebook.share.model.ShareVideoContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareVideoContent createFromParcel(Parcel parcel) {
            return new ShareVideoContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareVideoContent[] newArray(int i) {
            return new ShareVideoContent[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final String f3534a;

    /* renamed from: b, reason: collision with root package name */
    private final String f3535b;
    private final SharePhoto c;
    private final ShareVideo d;

    ShareVideoContent(Parcel in) {
        super(in);
        this.f3534a = in.readString();
        this.f3535b = in.readString();
        SharePhoto.a a2 = new SharePhoto.a().a(in);
        if (a2.a() != null || a2.b() != null) {
            this.c = a2.c();
        } else {
            this.c = null;
        }
        this.d = new ShareVideo.a().a(in).a();
    }

    @Nullable
    public String a() {
        return this.f3534a;
    }

    @Nullable
    public String b() {
        return this.f3535b;
    }

    @Nullable
    public SharePhoto c() {
        return this.c;
    }

    @Nullable
    public ShareVideo d() {
        return this.d;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        super.writeToParcel(out, flags);
        out.writeString(this.f3534a);
        out.writeString(this.f3535b);
        out.writeParcelable(this.c, 0);
        out.writeParcelable(this.d, 0);
    }
}
