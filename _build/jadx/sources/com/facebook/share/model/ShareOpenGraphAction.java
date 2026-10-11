package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphValueContainer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class ShareOpenGraphAction extends ShareOpenGraphValueContainer<ShareOpenGraphAction, a> {
    public static final Parcelable.Creator<ShareOpenGraphAction> CREATOR = new Parcelable.Creator<ShareOpenGraphAction>() { // from class: com.facebook.share.model.ShareOpenGraphAction.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareOpenGraphAction createFromParcel(Parcel parcel) {
            return new ShareOpenGraphAction(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareOpenGraphAction[] newArray(int i) {
            return new ShareOpenGraphAction[i];
        }
    };

    private ShareOpenGraphAction(a builder) {
        super(builder);
    }

    ShareOpenGraphAction(Parcel in) {
        super(in);
    }

    @Nullable
    public String a() {
        return b("og:type");
    }

    public static final class a extends ShareOpenGraphValueContainer.a<ShareOpenGraphAction, a> {
        public a a(String str) {
            a("og:type", str);
            return this;
        }

        public ShareOpenGraphAction a() {
            return new ShareOpenGraphAction(this);
        }

        @Override // com.facebook.share.model.ShareOpenGraphValueContainer.a
        public a a(ShareOpenGraphAction shareOpenGraphAction) {
            return shareOpenGraphAction == null ? this : ((a) super.a((a) shareOpenGraphAction)).a(shareOpenGraphAction.a());
        }

        public a a(Parcel parcel) {
            return a((ShareOpenGraphAction) parcel.readParcelable(ShareOpenGraphAction.class.getClassLoader()));
        }
    }
}
