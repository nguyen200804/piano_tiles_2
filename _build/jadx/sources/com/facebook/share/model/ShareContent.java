package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareContent.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class ShareContent<P extends ShareContent, E extends a> implements ShareModel {

    /* renamed from: a, reason: collision with root package name */
    private final Uri f3512a;

    /* renamed from: b, reason: collision with root package name */
    private final List<String> f3513b;
    private final String c;
    private final String d;

    protected ShareContent(a builder) {
        this.f3512a = builder.f3514a;
        this.f3513b = builder.f3515b;
        this.c = builder.c;
        this.d = builder.d;
    }

    protected ShareContent(Parcel in) {
        this.f3512a = (Uri) in.readParcelable(Uri.class.getClassLoader());
        this.f3513b = a(in);
        this.c = in.readString();
        this.d = in.readString();
    }

    @Nullable
    public Uri h() {
        return this.f3512a;
    }

    @Nullable
    public List<String> i() {
        return this.f3513b;
    }

    @Nullable
    public String j() {
        return this.c;
    }

    @Nullable
    public String k() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeParcelable(this.f3512a, 0);
        out.writeStringList(this.f3513b);
        out.writeString(this.c);
        out.writeString(this.d);
    }

    private List<String> a(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        if (arrayList.size() == 0) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static abstract class a<P extends ShareContent, E extends a> {

        /* renamed from: a, reason: collision with root package name */
        private Uri f3514a;

        /* renamed from: b, reason: collision with root package name */
        private List<String> f3515b;
        private String c;
        private String d;

        public E a(@Nullable Uri uri) {
            this.f3514a = uri;
            return this;
        }
    }
}
