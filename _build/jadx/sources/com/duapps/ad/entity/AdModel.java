package com.duapps.ad.entity;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdModel implements Parcelable {
    public static final Parcelable.Creator<AdModel> CREATOR = new Parcelable.Creator<AdModel>() { // from class: com.duapps.ad.entity.AdModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AdModel createFromParcel(Parcel parcel) {
            return new AdModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AdModel[] newArray(int i) {
            return new AdModel[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public String f2125a;

    /* renamed from: b, reason: collision with root package name */
    public String f2126b;
    public int c;
    public String d;
    public int e;
    public int f;
    public int g;
    public final List<AdData> h;
    public long i;
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;

    public AdModel() {
        this.h = new ArrayList();
    }

    public AdModel(String str, int i, String str2, JSONObject jSONObject, long j) {
        this.h = new ArrayList();
        this.f2125a = str;
        this.c = i;
        this.d = str2;
        if (jSONObject != null && i == jSONObject.optInt("sId")) {
            this.n = jSONObject.optString("pk");
            this.e = jSONObject.optInt("pn");
            this.f = jSONObject.optInt("ps");
            this.g = jSONObject.optInt("total");
            this.f2126b = jSONObject.optString("logId");
            this.j = jSONObject.optString("ext");
            this.k = jSONObject.optString("title");
            this.l = jSONObject.optString("shortdesc");
            this.m = jSONObject.optString("description");
            JSONArray optJSONArray = jSONObject.optJSONArray("list");
            if (optJSONArray != null) {
                int length = optJSONArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                    if (optJSONObject != null) {
                        this.h.add(new AdData(str, i, str2, this.f2126b, optJSONObject, j));
                    }
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2125a);
        parcel.writeString(this.f2126b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeTypedList(this.h);
        parcel.writeString(this.j);
        parcel.writeString(this.k);
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeLong(this.i);
        parcel.writeString(this.n);
    }

    private AdModel(Parcel parcel) {
        this.h = new ArrayList();
        this.f2125a = parcel.readString();
        this.f2126b = parcel.readString();
        this.c = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        parcel.readTypedList(this.h, AdData.CREATOR);
        this.j = parcel.readString();
        this.k = parcel.readString();
        this.l = parcel.readString();
        this.m = parcel.readString();
        this.i = parcel.readLong();
        this.n = parcel.readString();
    }
}
