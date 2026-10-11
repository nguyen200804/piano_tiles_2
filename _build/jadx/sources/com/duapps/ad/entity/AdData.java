package com.duapps.ad.entity;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.duapps.ad.base.h;
import com.duapps.ad.base.p;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.pay.util.IabHelper;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdData implements Parcelable {
    public static final Parcelable.Creator<AdData> CREATOR;
    private static final HashSet<String> J = new HashSet<>();
    public int A;
    public String B;
    public long C;
    public long D;
    public String E;
    public String[] F;
    public String[] G;
    public int H;
    public int I;
    private a K;

    /* renamed from: a, reason: collision with root package name */
    public int f2121a;

    /* renamed from: b, reason: collision with root package name */
    public long f2122b;
    public String c;
    public String d;
    public String e;
    public String f;
    public int g;
    public String h;
    public String i;
    public boolean j;
    public boolean k;
    public float l;
    public int m;
    public int n;
    public String o;
    public long p;
    public int q;
    public float r;
    public int s;
    public String t;
    public String u;
    public String v;
    public String w;
    public String x;
    public int y;
    public String z;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public String f2123a;

        /* renamed from: b, reason: collision with root package name */
        public String f2124b;
        public String c;
        public String d;
    }

    static {
        J.add("sites");
        J.add("yeahmobi");
        J.add("matomy");
        J.add("kissmyads");
        J.add("applift");
        J.add("glispa");
        J.add("appflood");
        J.add("efun");
        J.add("motiveinteractive");
        J.add("apploop");
        J.add("performence");
        J.add("admobix");
        CREATOR = new Parcelable.Creator<AdData>() { // from class: com.duapps.ad.entity.AdData.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public AdData createFromParcel(Parcel parcel) {
                return new AdData(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public AdData[] newArray(int i) {
                return new AdData[i];
            }
        };
    }

    protected AdData() {
        this.g = -1;
        this.n = -1;
        this.E = "download";
    }

    public static AdData a(Context context, int i, String str, String str2, String str3) {
        AdData adData = new AdData();
        adData.x = p.b(context);
        adData.y = IabHelper.IABHELPER_REMOTE_EXCEPTION;
        adData.f2122b = i;
        adData.w = "directflow";
        adData.z = "directflow";
        adData.c = str;
        adData.d = str2;
        adData.i = str3;
        adData.n = 1;
        return adData;
    }

    public AdData(String str, int i, String str2, String str3, JSONObject jSONObject, long j) {
        this(str, i, str2, str3, jSONObject);
        this.C = j;
    }

    public AdData(String str, int i, String str2, String str3, JSONObject jSONObject) {
        this.g = -1;
        this.n = -1;
        this.E = "download";
        this.x = str;
        this.y = i;
        this.z = str2;
        this.w = str3;
        this.f2122b = jSONObject.optLong(FacebookAdapter.KEY_ID);
        this.c = jSONObject.optString("title");
        this.o = jSONObject.optString("source");
        this.i = jSONObject.optString("adUrl");
        try {
            this.i = com.duapps.ad.c.b.c.e(this.i);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.d = jSONObject.optString("pkg");
        try {
            this.d = com.duapps.ad.c.b.c.e(this.d);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f = jSONObject.optString("shortDesc");
        this.e = jSONObject.optString("description");
        this.n = jSONObject.optInt("openType", -1);
        this.m = jSONObject.optInt("integral");
        this.l = (float) jSONObject.optDouble("pts", 4.5d);
        this.r = (float) jSONObject.optDouble("contentRating", 0.0d);
        this.s = jSONObject.optInt("label", 0);
        this.u = jSONObject.optString("cate");
        this.v = jSONObject.optString("exg");
        this.A = jSONObject.optInt("preClick");
        this.H = jSONObject.optInt("pp", 0);
        this.f2121a = jSONObject.optInt("tts", 0);
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        this.h = a(optJSONArray, true);
        this.K = a(optJSONArray);
        this.t = a(jSONObject.optJSONArray("bigImages"), true);
        this.B = jSONObject.optString("buttonDes");
        this.D = jSONObject.optLong("cacheTime", 120L);
        this.F = b(jSONObject.optJSONArray("impUrls"));
        this.G = b(jSONObject.optJSONArray("cUrls"));
        this.I = jSONObject.optInt("inctRank", -1);
    }

    private static String[] b(JSONArray jSONArray) {
        if (jSONArray != null) {
            int length = jSONArray.length();
            String[] strArr = new String[length];
            for (int i = 0; i < length; i++) {
                try {
                    strArr[i] = jSONArray.getString(i);
                    strArr[i] = com.duapps.ad.c.b.c.e(strArr[i]);
                } catch (JSONException e) {
                    e.printStackTrace();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            return strArr;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f2122b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
        parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
        parcel.writeFloat(this.l);
        parcel.writeInt(this.m);
        parcel.writeInt(this.n);
        parcel.writeString(this.o);
        parcel.writeLong(this.p);
        parcel.writeInt(this.q);
        parcel.writeFloat(this.r);
        parcel.writeInt(this.s);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
        parcel.writeInt(this.A);
        parcel.writeInt(this.H);
        parcel.writeString(this.t);
        parcel.writeString(this.w);
        parcel.writeString(this.x);
        parcel.writeInt(this.y);
        parcel.writeString(this.z);
        parcel.writeString(this.B);
        parcel.writeLong(this.D);
        parcel.writeLong(this.C);
        parcel.writeStringArray(this.F);
        parcel.writeStringArray(this.G);
        parcel.writeInt(this.H);
        parcel.writeInt(this.I);
        parcel.writeInt(this.f2121a);
    }

    private AdData(Parcel parcel) {
        this.g = -1;
        this.n = -1;
        this.E = "download";
        this.f2122b = parcel.readLong();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readInt();
        this.h = parcel.readString();
        this.i = parcel.readString();
        this.j = parcel.readByte() != 0;
        this.k = parcel.readByte() != 0;
        this.l = parcel.readFloat();
        this.m = parcel.readInt();
        this.n = parcel.readInt();
        this.o = parcel.readString();
        this.p = parcel.readLong();
        this.q = parcel.readInt();
        this.r = parcel.readFloat();
        this.s = parcel.readInt();
        this.u = parcel.readString();
        this.v = parcel.readString();
        this.A = parcel.readInt();
        this.H = parcel.readInt();
        this.t = parcel.readString();
        this.w = parcel.readString();
        this.x = parcel.readString();
        this.y = parcel.readInt();
        this.z = parcel.readString();
        this.B = parcel.readString();
        this.D = parcel.readLong();
        this.C = parcel.readLong();
        this.F = parcel.createStringArray();
        this.G = parcel.createStringArray();
        this.H = parcel.readInt();
        this.I = parcel.readInt();
        this.f2121a = parcel.readInt();
    }

    public int hashCode() {
        return (((this.d == null ? 0 : this.d.hashCode()) + 31) * 31) + (this.i != null ? this.i.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            AdData adData = (AdData) obj;
            if (this.d == null) {
                if (adData.d != null) {
                    return false;
                }
            } else if (!this.d.equals(adData.d)) {
                return false;
            }
            return this.i == null ? adData.i == null : this.i.equals(adData.i);
        }
        return false;
    }

    public static boolean a(Context context, AdData adData) {
        return adData.A > 0;
    }

    public boolean a() {
        return System.currentTimeMillis() - this.C <= (this.D * 60) * 1000;
    }

    public static AdData a(JSONObject jSONObject) {
        AdData adData = new AdData();
        adData.E = jSONObject.optString("channel");
        adData.f2122b = jSONObject.optLong(FacebookAdapter.KEY_ID);
        adData.c = jSONObject.optString(MediationMetaData.KEY_NAME);
        adData.d = jSONObject.optString("pkg");
        adData.e = jSONObject.optString("desc");
        adData.f = jSONObject.optString("sdesc");
        adData.g = jSONObject.optInt("pos");
        adData.n = jSONObject.optInt("opentype");
        adData.o = jSONObject.optString("urlsource");
        adData.h = jSONObject.optString("icon");
        adData.i = jSONObject.optString("playurl");
        adData.l = (float) jSONObject.optDouble("pts");
        adData.m = jSONObject.optInt("points");
        adData.p = jSONObject.optLong("down");
        adData.q = jSONObject.optInt("adtype");
        adData.r = (float) jSONObject.optDouble("rating");
        adData.w = jSONObject.optString("logId");
        adData.x = jSONObject.optString("license");
        adData.y = jSONObject.optInt("sid");
        adData.z = jSONObject.optString("sType", "native");
        adData.s = jSONObject.optInt("label");
        adData.A = jSONObject.optInt("ttc");
        adData.A = jSONObject.optInt("preClick");
        adData.H = jSONObject.optInt("pp", 0);
        adData.u = jSONObject.optString("cate");
        adData.v = jSONObject.optString("exg");
        adData.F = b(jSONObject.optJSONArray("impUrls"));
        adData.G = b(jSONObject.optJSONArray("cUrls"));
        adData.H = jSONObject.optInt("pp", 0);
        adData.I = jSONObject.optInt("inctRank", -1);
        return adData;
    }

    public static JSONObject a(AdData adData) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("channel", adData.E);
        jSONObject.put(FacebookAdapter.KEY_ID, adData.f2122b);
        jSONObject.put(MediationMetaData.KEY_NAME, adData.c);
        jSONObject.put("pkg", adData.d);
        jSONObject.put("desc", adData.e);
        jSONObject.put("sdesc", adData.f);
        jSONObject.put("pos", adData.g);
        jSONObject.put("opentype", adData.n);
        jSONObject.put("urlsource", adData.o);
        jSONObject.put("icon", adData.h);
        jSONObject.put("playurl", adData.i);
        jSONObject.put("pts", adData.l);
        jSONObject.put("points", adData.m);
        jSONObject.put("down", adData.p);
        jSONObject.put("adtype", adData.q);
        jSONObject.put("rating", adData.r);
        jSONObject.put("logId", adData.w);
        jSONObject.put("license", adData.x);
        jSONObject.put("sid", adData.y);
        jSONObject.put("sType", adData.z);
        jSONObject.put("label", adData.s);
        jSONObject.put("preClick", adData.A);
        jSONObject.put("pp", adData.H);
        jSONObject.put("cate", adData.u);
        jSONObject.put("exg", adData.v);
        jSONObject.put("impUrls", adData.F);
        jSONObject.put("cUrls", adData.G);
        jSONObject.put("pp", adData.H);
        jSONObject.put("ttc", adData.A);
        jSONObject.put("inctRank", adData.I);
        return jSONObject;
    }

    public static String a(JSONArray jSONArray, boolean z) {
        if (jSONArray == null) {
            return "";
        }
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                if (!z) {
                    return optJSONObject.optString("url", "");
                }
                try {
                    return com.duapps.ad.c.b.c.e(optJSONObject.optString("url", ""));
                } catch (Exception e) {
                    return optJSONObject.optString("url", "");
                }
            }
        }
        return "";
    }

    public static a a(JSONArray jSONArray) {
        a aVar = null;
        if (jSONArray != null) {
            int i = 0;
            int length = jSONArray.length();
            while (true) {
                if (i >= length) {
                    break;
                }
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject == null) {
                    i++;
                } else {
                    aVar = new a();
                    aVar.f2123a = optJSONObject.optString(FacebookAdapter.KEY_ID, "");
                    try {
                        aVar.f2124b = com.duapps.ad.c.b.c.e(optJSONObject.optString("url", ""));
                        h.c("decode", "parseImages decode succ: " + aVar.f2124b);
                    } catch (Exception e) {
                        aVar.f2124b = optJSONObject.optString("url", "");
                        h.c("decode", "parseImages decode fail: " + aVar.f2124b);
                    }
                    aVar.c = optJSONObject.optString(VastExtensionXmlManager.TYPE, "");
                    aVar.d = optJSONObject.optString("res", "");
                    break;
                }
            }
        }
        return aVar;
    }

    public static boolean b(AdData adData) {
        return adData != null && adData.f2121a > 0;
    }
}
