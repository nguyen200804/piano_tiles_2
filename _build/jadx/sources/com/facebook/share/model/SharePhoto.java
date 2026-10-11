package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareMedia;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class SharePhoto extends ShareMedia {
    public static final Parcelable.Creator<SharePhoto> CREATOR = new Parcelable.Creator<SharePhoto>() { // from class: com.facebook.share.model.SharePhoto.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharePhoto createFromParcel(Parcel parcel) {
            return new SharePhoto(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharePhoto[] newArray(int i) {
            return new SharePhoto[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final Bitmap f3526a;

    /* renamed from: b, reason: collision with root package name */
    private final Uri f3527b;
    private final boolean c;
    private final String d;

    private SharePhoto(a builder) {
        super(builder);
        this.f3526a = builder.f3528a;
        this.f3527b = builder.f3529b;
        this.c = builder.c;
        this.d = builder.d;
    }

    SharePhoto(Parcel in) {
        super(in);
        this.f3526a = (Bitmap) in.readParcelable(Bitmap.class.getClassLoader());
        this.f3527b = (Uri) in.readParcelable(Uri.class.getClassLoader());
        this.c = in.readByte() != 0;
        this.d = in.readString();
    }

    @Nullable
    public Bitmap b() {
        return this.f3526a;
    }

    @Nullable
    public Uri c() {
        return this.f3527b;
    }

    public boolean d() {
        return this.c;
    }

    public String e() {
        return this.d;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        super.writeToParcel(out, flags);
        out.writeParcelable(this.f3526a, 0);
        out.writeParcelable(this.f3527b, 0);
        out.writeByte((byte) (this.c ? 1 : 0));
        out.writeString(this.d);
    }

    public static final class a extends ShareMedia.a<SharePhoto, a> {

        /* renamed from: a, reason: collision with root package name */
        private Bitmap f3528a;

        /* renamed from: b, reason: collision with root package name */
        private Uri f3529b;
        private boolean c;
        private String d;

        public a a(@Nullable Bitmap bitmap) {
            this.f3528a = bitmap;
            return this;
        }

        public a a(@Nullable Uri uri) {
            this.f3529b = uri;
            return this;
        }

        public a a(boolean z) {
            this.c = z;
            return this;
        }

        public a a(@Nullable String str) {
            this.d = str;
            return this;
        }

        Uri a() {
            return this.f3529b;
        }

        Bitmap b() {
            return this.f3528a;
        }

        public SharePhoto c() {
            return new SharePhoto(this);
        }

        @Override // com.facebook.share.model.ShareMedia.a
        public a a(SharePhoto sharePhoto) {
            return sharePhoto == null ? this : ((a) super.a((a) sharePhoto)).a(sharePhoto.b()).a(sharePhoto.c()).a(sharePhoto.d()).a(sharePhoto.e());
        }

        public a a(Parcel parcel) {
            return a((SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader()));
        }

        public static void a(Parcel parcel, List<SharePhoto> list) {
            ArrayList arrayList = new ArrayList();
            Iterator<SharePhoto> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            parcel.writeTypedList(arrayList);
        }

        public static List<SharePhoto> b(Parcel parcel) {
            ArrayList arrayList = new ArrayList();
            parcel.readTypedList(arrayList, SharePhoto.CREATOR);
            return arrayList;
        }
    }
}
