package com.mnt;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.mnt.impl.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Ad implements Parcelable {
    public static final int APP_TYPE_APP = 1;
    public static final int APP_TYPE_GAME = 2;

    /* renamed from: a, reason: collision with root package name */
    private String f3882a;

    /* renamed from: b, reason: collision with root package name */
    private String f3883b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private float i;
    private float j;
    private int k;
    private String l;
    private Map<String, List<String>> m;
    public static final String AD_CREATIVE_SIZE_320X200 = e.f3979a;
    public static final String AD_CREATIVE_SIZE_480x800 = e.f3980b;
    public static final String AD_CREATIVE_SIZE_640x100 = e.c;
    public static final String AD_CREATIVE_SIZE_1200x627 = e.d;
    public static final Parcelable.Creator<Ad> CREATOR = new Parcelable.Creator<Ad>() { // from class: com.mnt.Ad.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Ad[] newArray(int i) {
            return new Ad[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Ad createFromParcel(Parcel parcel) {
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            String readString6 = parcel.readString();
            String readString7 = parcel.readString();
            String readString8 = parcel.readString();
            float readFloat = parcel.readFloat();
            float readFloat2 = parcel.readFloat();
            int readInt = parcel.readInt();
            String readString9 = parcel.readString();
            Bundle readBundle = parcel.readBundle();
            HashMap hashMap = new HashMap();
            for (String str : readBundle.keySet()) {
                hashMap.put(str, readBundle.getStringArrayList(str));
            }
            return new Ad(readString, readString2, readString3, readString4, readString5, readString6, readString7, readString8, readFloat, readFloat2, hashMap, readInt, readString9);
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3882a);
        parcel.writeString(this.f3883b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeFloat(this.i);
        parcel.writeFloat(this.j);
        parcel.writeInt(this.k);
        parcel.writeString(this.l);
        Bundle bundle = new Bundle();
        if (this.m != null) {
            for (Map.Entry<String, List<String>> entry : this.m.entrySet()) {
                bundle.putStringArrayList(entry.getKey(), new ArrayList<>(entry.getValue()));
            }
        }
        parcel.writeBundle(bundle);
    }

    public String getCampId() {
        return this.f3882a;
    }

    public String getPackageName() {
        return this.f3883b;
    }

    public String getIcon() {
        return this.c;
    }

    public String getDescription() {
        return this.d;
    }

    public String getName() {
        return this.e;
    }

    public String getInstalls() {
        return this.f;
    }

    public String getSize() {
        return this.g;
    }

    public float getRate() {
        return this.i;
    }

    public float getStoreRating() {
        return this.j;
    }

    public String getRecommendMessage() {
        return this.h;
    }

    public int getAppType() {
        return this.k;
    }

    public List<String> getCreatives(String str) {
        return this.m.get(str);
    }

    public Map<String, List<String>> getCreatives() {
        return this.m;
    }

    public String getAdCallToAction() {
        return this.l;
    }

    public Ad(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, float f, float f2, Map<String, List<String>> map, int i) {
        this(str, str2, str3, str4, str5, str6, str7, str8, f, f2, map, i, e.e);
    }

    public Ad(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, float f, float f2, Map<String, List<String>> map, int i, String str9) {
        this.m = null;
        this.f3882a = str;
        this.f3883b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
        this.h = str8;
        this.i = f;
        this.j = f2;
        this.k = i;
        this.m = map;
        this.l = str9;
    }
}
