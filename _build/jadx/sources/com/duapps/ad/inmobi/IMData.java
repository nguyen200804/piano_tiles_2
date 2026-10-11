package com.duapps.ad.inmobi;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.duapps.ad.base.h;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IMData implements Parcelable {
    public static final Parcelable.Creator<IMData> CREATOR = new Parcelable.Creator<IMData>() { // from class: com.duapps.ad.inmobi.IMData.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public IMData createFromParcel(Parcel parcel) {
            return new IMData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public IMData[] newArray(int i) {
            return new IMData[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public String f2158a;

    /* renamed from: b, reason: collision with root package name */
    public int f2159b;
    public String c;
    public String d;
    public long e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public String k;
    public String l;
    public String m;
    public String n;
    public float o;
    public String p;
    public String q;
    public String r;
    public String s;
    public String t;
    public String u;
    public long v;
    public boolean w;
    public boolean x;
    public String y;

    public IMData() {
        this.w = false;
        this.x = false;
        this.y = "inmobi";
    }

    public IMData(String str, int i, String str2, String str3, int i2, JSONObject jSONObject, long j) {
        this.w = false;
        this.x = false;
        this.y = "inmobi";
        this.f2158a = str;
        this.f2159b = i;
        this.d = str2;
        this.c = str3;
        this.e = jSONObject.optLong(FacebookAdapter.KEY_ID);
        this.k = jSONObject.optString("source");
        this.g = jSONObject.optInt("openType", -1);
        this.f = jSONObject.optInt("mType");
        this.i = jSONObject.optInt("label");
        this.h = jSONObject.optInt("preClick");
        this.j = jSONObject.optInt("cacheTime");
        this.v = j;
        JSONObject optJSONObject = jSONObject.optJSONArray("ads").optJSONObject(i2);
        if (optJSONObject != null) {
            String optString = optJSONObject.optString("pubContent");
            this.t = optJSONObject.optString("contextCode");
            this.u = optJSONObject.optString("namespace");
            String a2 = a(optString);
            if (a2 != null) {
                try {
                    JSONObject jSONObject2 = new JSONObject(a2);
                    h.c("IMData", "imAd==" + jSONObject2.toString());
                    this.m = jSONObject2.optString("title");
                    this.n = jSONObject2.optString("description");
                    this.o = (float) jSONObject2.optDouble("rating", 4.5d);
                    this.s = jSONObject2.optString("cta");
                    this.p = jSONObject2.optJSONObject("icon").optString("url");
                    this.q = jSONObject2.optJSONObject("screenshots").optString("url");
                    this.r = jSONObject2.optString("landingURL");
                    this.l = jSONObject2.optString("package_name");
                } catch (JSONException e) {
                    h.d("IMData", "JSONException:" + e.toString());
                }
            }
        }
    }

    public IMData(String str, String str2, long j) {
        this.w = false;
        this.x = false;
        this.y = "inmobi";
        this.u = str;
        this.t = str2;
        this.v = j;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2158a);
        parcel.writeString(this.c);
        parcel.writeInt(this.f2159b);
        parcel.writeString(this.d);
        parcel.writeLong(this.e);
        parcel.writeString(this.k);
        parcel.writeInt(this.g);
        parcel.writeInt(this.f);
        parcel.writeInt(this.i);
        parcel.writeInt(this.h);
        parcel.writeInt(this.j);
        parcel.writeString(this.m);
        parcel.writeString(this.n);
        parcel.writeString(this.s);
        parcel.writeString(this.p);
        parcel.writeString(this.q);
        parcel.writeString(this.r);
        parcel.writeString(this.t);
        parcel.writeString(this.u);
        parcel.writeFloat(this.o);
        parcel.writeLong(this.v);
        parcel.writeByte(this.w ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.x ? (byte) 1 : (byte) 0);
        parcel.writeString(this.l);
    }

    private IMData(Parcel parcel) {
        this.w = false;
        this.x = false;
        this.y = "inmobi";
        this.f2158a = parcel.readString();
        this.c = parcel.readString();
        this.f2159b = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readLong();
        this.k = parcel.readString();
        this.g = parcel.readInt();
        this.f = parcel.readInt();
        this.i = parcel.readInt();
        this.h = parcel.readInt();
        this.j = parcel.readInt();
        this.m = parcel.readString();
        this.n = parcel.readString();
        this.s = parcel.readString();
        this.p = parcel.readString();
        this.q = parcel.readString();
        this.r = parcel.readString();
        this.t = parcel.readString();
        this.u = parcel.readString();
        this.o = parcel.readFloat();
        this.v = parcel.readLong();
        this.w = parcel.readByte() != 0;
        this.x = parcel.readByte() != 0;
        this.l = parcel.readString();
    }

    public boolean a() {
        return System.currentTimeMillis() - this.v <= ((long) ((this.j * 60) * 1000));
    }

    public static String a(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            return new String(Base64.decode(bytes, 0, bytes.length, 0), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public enum a {
        None(0),
        Impression(18),
        Click(8);

        private int d;

        a(int i) {
            this.d = i;
        }

        public int a() {
            return this.d;
        }
    }

    public String a(a aVar) {
        StringBuilder sb = new StringBuilder();
        int a2 = aVar.a();
        sb.append(this.t);
        sb.append("<script>");
        sb.append(this.u);
        sb.append("recordEvent(" + a2 + ")");
        sb.append("</script>");
        return sb.toString();
    }

    public String b() {
        return a(a.Impression) + "<script>recordEvent(8)</script>";
    }

    public static IMData a(JSONObject jSONObject) {
        IMData iMData = new IMData();
        iMData.y = jSONObject.optString("channel");
        iMData.f2158a = jSONObject.optString("license");
        iMData.c = jSONObject.optString("logId");
        iMData.f2159b = jSONObject.optInt("sid");
        iMData.d = jSONObject.optString("sType", "native");
        iMData.e = jSONObject.optLong(FacebookAdapter.KEY_ID);
        iMData.k = jSONObject.optString("source");
        iMData.i = jSONObject.optInt("label");
        iMData.h = jSONObject.optInt("preClick");
        iMData.g = jSONObject.optInt("opentype");
        iMData.j = jSONObject.optInt("cacheTime");
        iMData.f = jSONObject.optInt("mType");
        iMData.m = jSONObject.optString("title");
        iMData.n = jSONObject.optString("description");
        iMData.s = jSONObject.optString("cta");
        iMData.p = jSONObject.optString("icon");
        iMData.q = jSONObject.optString("screenshots");
        iMData.r = jSONObject.optString("landingURL");
        iMData.o = jSONObject.optLong("rating");
        iMData.l = jSONObject.optString("package_name");
        return iMData;
    }

    public static JSONObject a(IMData iMData) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("channel", iMData.y);
        jSONObject.put("license", iMData.f2158a);
        jSONObject.put("logId", iMData.c);
        jSONObject.put("sid", iMData.f2159b);
        jSONObject.put("sType", iMData.d);
        jSONObject.put(FacebookAdapter.KEY_ID, iMData.e);
        jSONObject.put("source", iMData.k);
        jSONObject.put("label", iMData.i);
        jSONObject.put("preClick", iMData.h);
        jSONObject.put("opentype", iMData.g);
        jSONObject.put("cacheTime", iMData.j);
        jSONObject.put("mType", iMData.f);
        jSONObject.put("title", iMData.m);
        jSONObject.put("description", iMData.n);
        jSONObject.put("cta", iMData.s);
        jSONObject.put("icon", iMData.p);
        jSONObject.put("screenshots", iMData.q);
        jSONObject.put("landingURL", iMData.r);
        jSONObject.put("rating", iMData.o);
        jSONObject.put("package_name", iMData.l);
        return jSONObject;
    }
}
