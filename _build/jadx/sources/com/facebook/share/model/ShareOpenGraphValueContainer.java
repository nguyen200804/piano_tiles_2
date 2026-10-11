package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.ShareOpenGraphValueContainer.a;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class ShareOpenGraphValueContainer<P extends ShareOpenGraphValueContainer, E extends a> implements ShareModel {

    /* renamed from: a, reason: collision with root package name */
    private final Bundle f3524a;

    protected ShareOpenGraphValueContainer(a<P, E> builder) {
        this.f3524a = (Bundle) ((a) builder).f3525a.clone();
    }

    ShareOpenGraphValueContainer(Parcel in) {
        this.f3524a = in.readBundle(a.class.getClassLoader());
    }

    @Nullable
    public Object a(String str) {
        return this.f3524a.get(str);
    }

    @Nullable
    public String b(String str) {
        return this.f3524a.getString(str);
    }

    public Bundle b() {
        return (Bundle) this.f3524a.clone();
    }

    public Set<String> c() {
        return this.f3524a.keySet();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeBundle(this.f3524a);
    }

    public static abstract class a<P extends ShareOpenGraphValueContainer, E extends a> {

        /* renamed from: a, reason: collision with root package name */
        private Bundle f3525a = new Bundle();

        public E a(String str, @Nullable String str2) {
            this.f3525a.putString(str, str2);
            return this;
        }

        public E a(P p) {
            if (p != null) {
                this.f3525a.putAll(p.b());
            }
            return this;
        }
    }
}
