package com.facebook.notifications.internal.utilities;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.Enum;
import java.lang.reflect.Array;

/* compiled from: EnumCreator.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a<T extends Enum> implements Parcelable.Creator<T> {

    /* renamed from: a, reason: collision with root package name */
    private final Class<T> f3420a;

    /* renamed from: b, reason: collision with root package name */
    private final T[] f3421b;

    public a(Class<T> cls, T[] tArr) {
        this.f3420a = cls;
        this.f3421b = tArr;
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public T createFromParcel(Parcel parcel) {
        return this.f3421b[parcel.readInt()];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public T[] newArray(int i) {
        return (T[]) ((Enum[]) Array.newInstance((Class<?>) this.f3420a, i));
    }
}
