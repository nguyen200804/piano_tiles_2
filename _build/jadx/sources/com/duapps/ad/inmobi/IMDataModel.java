package com.duapps.ad.inmobi;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IMDataModel implements Parcelable {
    public static final Parcelable.Creator<IMDataModel> CREATOR = new Parcelable.Creator<IMDataModel>() { // from class: com.duapps.ad.inmobi.IMDataModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public IMDataModel createFromParcel(Parcel parcel) {
            return new IMDataModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public IMDataModel[] newArray(int i) {
            return new IMDataModel[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public String f2162a;

    /* renamed from: b, reason: collision with root package name */
    public int f2163b;
    public String c;
    public String d;
    public long e;
    public final List<IMData> f;

    public IMDataModel() {
        this.f = new ArrayList();
    }

    public IMDataModel(String str, int i, String str2, JSONObject jSONObject, long j) {
        JSONObject optJSONObject;
        this.f = new ArrayList();
        this.f2162a = str;
        this.f2163b = i;
        this.d = str2;
        this.e = j;
        if (jSONObject != null && i == jSONObject.optInt("sId")) {
            this.c = jSONObject.optString("logId");
            JSONArray optJSONArray = jSONObject.optJSONArray("list");
            if (optJSONArray.length() != 0 && (optJSONObject = optJSONArray.optJSONObject(0)) != null) {
                JSONArray optJSONArray2 = optJSONObject.optJSONArray("ads");
                for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                    this.f.add(new IMData(str, i, str2, this.c, i2, optJSONObject, j));
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
        parcel.writeString(this.f2162a);
        parcel.writeString(this.c);
        parcel.writeInt(this.f2163b);
        parcel.writeString(this.d);
        parcel.writeLong(this.e);
        parcel.writeTypedList(this.f);
    }

    private IMDataModel(Parcel parcel) {
        this.f = new ArrayList();
        this.f2162a = parcel.readString();
        this.c = parcel.readString();
        this.f2163b = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readLong();
        parcel.readTypedList(this.f, IMData.CREATOR);
    }
}
