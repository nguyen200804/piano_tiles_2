package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class ShareMedia implements ShareModel {

    /* renamed from: a, reason: collision with root package name */
    private final Bundle f3520a;

    protected ShareMedia(a builder) {
        this.f3520a = new Bundle(builder.f3521a);
    }

    ShareMedia(Parcel in) {
        this.f3520a = in.readBundle();
    }

    @Deprecated
    public Bundle a() {
        return new Bundle(this.f3520a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeBundle(this.f3520a);
    }

    public static abstract class a<M extends ShareMedia, B extends a> {

        /* renamed from: a, reason: collision with root package name */
        private Bundle f3521a = new Bundle();

        @Deprecated
        public B a(Bundle bundle) {
            this.f3521a.putAll(bundle);
            return this;
        }

        public B a(M m) {
            return m == null ? this : a(m.a());
        }
    }
}
