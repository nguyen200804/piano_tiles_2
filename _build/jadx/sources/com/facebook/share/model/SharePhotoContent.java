package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class SharePhotoContent extends ShareContent<SharePhotoContent, a> {
    public static final Parcelable.Creator<SharePhotoContent> CREATOR = new Parcelable.Creator<SharePhotoContent>() { // from class: com.facebook.share.model.SharePhotoContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharePhotoContent createFromParcel(Parcel parcel) {
            return new SharePhotoContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharePhotoContent[] newArray(int i) {
            return new SharePhotoContent[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final List<SharePhoto> f3530a;

    private SharePhotoContent(a builder) {
        super(builder);
        this.f3530a = Collections.unmodifiableList(builder.f3531a);
    }

    SharePhotoContent(Parcel in) {
        super(in);
        this.f3530a = Collections.unmodifiableList(SharePhoto.a.b(in));
    }

    @Nullable
    public List<SharePhoto> a() {
        return this.f3530a;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        super.writeToParcel(out, flags);
        SharePhoto.a.a(out, this.f3530a);
    }

    public static class a extends ShareContent.a<SharePhotoContent, a> {

        /* renamed from: a, reason: collision with root package name */
        private final List<SharePhoto> f3531a = new ArrayList();

        public a a(@Nullable SharePhoto sharePhoto) {
            if (sharePhoto != null) {
                this.f3531a.add(new SharePhoto.a().a(sharePhoto).c());
            }
            return this;
        }

        public SharePhotoContent a() {
            return new SharePhotoContent(this);
        }
    }
}
