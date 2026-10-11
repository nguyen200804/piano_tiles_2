package com.ijinshan.cloudconfig.deepcloudconfig;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ConfigInfo implements Parcelable, Serializable, Comparable<ConfigInfo> {
    public static final Parcelable.Creator<ConfigInfo> CREATOR = new Parcelable.Creator<ConfigInfo>() { // from class: com.ijinshan.cloudconfig.deepcloudconfig.ConfigInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ConfigInfo createFromParcel(Parcel parcel) {
            return new ConfigInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ConfigInfo[] newArray(int i) {
            return new ConfigInfo[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private int f3594a;

    /* renamed from: b, reason: collision with root package name */
    private String f3595b;
    private int c;
    private String d;

    public void a(int i) {
        this.f3594a = i;
    }

    public void a(String str) {
        this.f3595b = str;
    }

    public void b(int i) {
        this.c = i;
    }

    public String a() {
        return this.d;
    }

    public void b(String str) {
        this.d = str;
    }

    public String toString() {
        return "ConfigInfo [func_type=" + this.f3594a + ", section=" + this.f3595b + ", priority=" + this.c + ", data=" + this.d + "]";
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(ConfigInfo configInfo) {
        return this.c - configInfo.c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.f3594a);
        dest.writeString(this.f3595b);
        dest.writeInt(this.c);
        dest.writeString(this.d);
    }

    public ConfigInfo() {
    }

    public ConfigInfo(Parcel source) {
        this.f3594a = source.readInt();
        this.f3595b = source.readString();
        this.c = source.readInt();
        this.d = source.readString();
    }
}
