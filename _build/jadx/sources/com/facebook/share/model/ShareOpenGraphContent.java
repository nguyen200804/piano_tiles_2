package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphAction;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class ShareOpenGraphContent extends ShareContent<ShareOpenGraphContent, Object> {
    public static final Parcelable.Creator<ShareOpenGraphContent> CREATOR = new Parcelable.Creator<ShareOpenGraphContent>() { // from class: com.facebook.share.model.ShareOpenGraphContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareOpenGraphContent createFromParcel(Parcel parcel) {
            return new ShareOpenGraphContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareOpenGraphContent[] newArray(int i) {
            return new ShareOpenGraphContent[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final ShareOpenGraphAction f3522a;

    /* renamed from: b, reason: collision with root package name */
    private final String f3523b;

    ShareOpenGraphContent(Parcel in) {
        super(in);
        this.f3522a = new ShareOpenGraphAction.a().a(in).a();
        this.f3523b = in.readString();
    }

    @Nullable
    public ShareOpenGraphAction a() {
        return this.f3522a;
    }

    @Nullable
    public String b() {
        return this.f3523b;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        super.writeToParcel(out, flags);
        out.writeParcelable(this.f3522a, 0);
        out.writeString(this.f3523b);
    }
}
