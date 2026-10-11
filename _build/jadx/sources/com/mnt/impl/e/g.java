package com.mnt.impl.e;

import android.text.TextUtils;
import android.text.format.DateFormat;
import com.mnt.MntConfig;
import com.mnt.impl.b.k;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class g {
    private static final String j = com.mnt.impl.e.jW;
    private static final String k = com.mnt.impl.e.jX;
    private static final String l = com.mnt.impl.e.jY;
    private static final String m = com.mnt.impl.e.jZ;
    private static final String n = com.mnt.impl.e.ka;

    /* renamed from: a, reason: collision with root package name */
    public int f3991a;

    /* renamed from: b, reason: collision with root package name */
    public long f3992b;
    public int c;
    public int d;
    public int e;
    public List<a> f;
    public c g;
    private long h;
    private long i;

    public g(String str, long j2) {
        this.d = 5000;
        this.e = 5000;
        this.i = j2;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                JSONObject optJSONObject = jSONObject.optJSONObject(com.mnt.impl.e.kj);
                if (optJSONObject != null) {
                    optJSONObject.optString(com.mnt.impl.e.kk, "");
                    this.f3991a = optJSONObject.optInt(com.mnt.impl.e.kl, -1);
                    optJSONObject.optString(com.mnt.impl.e.km, "");
                    this.f3992b = optJSONObject.optLong(com.mnt.impl.e.kn, 0L);
                    this.d = optJSONObject.optInt(com.mnt.impl.e.ko, 5000);
                    this.e = optJSONObject.optInt(com.mnt.impl.e.kp, 5000);
                    int optInt = optJSONObject.optInt(com.mnt.impl.e.kq);
                    String optString = jSONObject.optString(com.mnt.impl.e.kr);
                    optString = optInt == 1 ? k.h(optString) : optString;
                    JSONObject jSONObject2 = new JSONObject(optInt == 2 ? com.mnt.impl.i.a.b.b(k.h(optString), com.mnt.impl.e.ks) : optString);
                    this.h = jSONObject2.optLong(com.mnt.impl.e.kt, 0L);
                    JSONObject optJSONObject2 = jSONObject2.optJSONObject(com.mnt.impl.e.ku);
                    if (optJSONObject2 != null) {
                        this.c = optJSONObject2.optInt(com.mnt.impl.e.kx, 0);
                    }
                    a(jSONObject2.optJSONObject(com.mnt.impl.e.kv));
                    a(jSONObject2.optJSONArray(com.mnt.impl.e.kw));
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public g(String str) {
        this.d = 5000;
        this.e = 5000;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                JSONObject optJSONObject = jSONObject.optJSONObject(n);
                if (optJSONObject != null) {
                    this.f3991a = optJSONObject.optInt(j, -1);
                    optJSONObject.optString(k, "");
                    optJSONObject.optString(l, "");
                    String optString = jSONObject.optString(com.mnt.impl.e.ky);
                    int optInt = optJSONObject.optInt(com.mnt.impl.e.kz, 0);
                    if (optInt == 1) {
                        optString = k.h(optString);
                    } else if (optInt == 2) {
                        optString = com.mnt.impl.i.a.b.b(k.h(optString), com.mnt.impl.e.kA);
                    }
                    JSONObject jSONObject2 = new JSONObject(optString);
                    this.h = jSONObject2.optLong(m, 0L);
                    a(jSONObject2.optJSONObject(com.mnt.impl.e.kB));
                    a(jSONObject2.optJSONArray(com.mnt.impl.e.kC));
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(com.mnt.impl.e.kb, com.mnt.impl.e.kc + ((Object) DateFormat.format(com.mnt.impl.e.kd, new Date())));
            jSONObject2.put(com.mnt.impl.e.ke, 500);
            jSONObject2.put(com.mnt.impl.e.kf, System.currentTimeMillis());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(com.mnt.impl.e.kg, 900000);
            jSONObject.put(com.mnt.impl.e.kh, jSONObject2);
            jSONObject.put(com.mnt.impl.e.ki, jSONObject3);
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public final boolean b() {
        return System.currentTimeMillis() - this.i > this.h;
    }

    private void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            this.g = new c(null, null);
        } else {
            this.g = new c(com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kD, ""), com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kE, ""));
        }
    }

    private void a(JSONArray jSONArray) {
        if (jSONArray != null) {
            this.f = new ArrayList(jSONArray.length());
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < jSONArray.length()) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i2);
                    int optInt = optJSONObject.optInt(com.mnt.impl.e.kF, -1);
                    int optInt2 = optJSONObject.optInt(com.mnt.impl.e.kG, -1);
                    int optInt3 = optJSONObject.optInt(com.mnt.impl.e.kH, 0);
                    long optLong = optJSONObject.optLong(com.mnt.impl.e.kI, 0L);
                    int optInt4 = optJSONObject.optInt(com.mnt.impl.e.kJ, 0);
                    int optInt5 = optJSONObject.optInt(com.mnt.impl.e.kK, 1);
                    JSONObject optJSONObject2 = optJSONObject.optJSONObject(com.mnt.impl.e.kL);
                    b b2 = b(optJSONObject.optJSONObject(com.mnt.impl.e.kM));
                    HashMap hashMap = new HashMap();
                    Iterator<String> keys = optJSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        JSONArray optJSONArray = optJSONObject2.optJSONArray(next);
                        ArrayList arrayList = new ArrayList(optJSONArray.length());
                        for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                            String optString = optJSONArray.optString(i3);
                            if (MntConfig.DEBUG) {
                                optString = k.b(optString);
                            }
                            arrayList.add(optString);
                        }
                        hashMap.put(next, arrayList);
                    }
                    this.f.add(new a(b2, hashMap, optInt, com.mnt.impl.b.b.a(optInt2), optInt3, optLong, optInt4, optInt5));
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private static b b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            String a2 = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kN, "");
            com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kO, "");
            String a3 = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kP, "");
            String a4 = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kQ, "");
            String a5 = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kR, "");
            String a6 = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kS, "");
            String a7 = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kT, "");
            if (MntConfig.DEBUG) {
                a7 = k.b(a7);
            }
            String a8 = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kU, "");
            String a9 = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kV, "");
            float floatValue = Double.valueOf(jSONObject.optDouble(com.mnt.impl.e.kW, 0.0d)).floatValue();
            float floatValue2 = Double.valueOf(jSONObject.optDouble(com.mnt.impl.e.kX, 0.0d)).floatValue();
            String a10 = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kY, "");
            String a11 = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.kZ, "");
            String a12 = com.mnt.a.a.a(jSONObject, com.mnt.impl.e.la, "");
            int optInt = jSONObject.optInt(com.mnt.impl.e.lb, 0);
            String optString = jSONObject.optString(com.mnt.impl.e.lc, com.mnt.impl.e.ld);
            JSONArray optJSONArray = jSONObject.optJSONArray(com.mnt.impl.e.le);
            StringBuilder sb = new StringBuilder();
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    sb.append(optJSONArray.getString(i));
                    sb.append(com.mnt.impl.e.lf);
                }
            }
            JSONArray optJSONArray2 = jSONObject.optJSONArray(com.mnt.impl.e.lg);
            StringBuilder sb2 = new StringBuilder();
            if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                    sb2.append(optJSONArray2.getString(i2));
                    sb2.append(com.mnt.impl.e.lh);
                }
            }
            return new b(a2, a3, a4, a5, a6, a7, a8, a9, floatValue, floatValue2, a10, a11, a12, optInt, optString, sb.toString(), sb2.toString());
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public b f3993a;

        /* renamed from: b, reason: collision with root package name */
        public Map<String, List<String>> f3994b;
        public int c;
        public com.mnt.impl.b.b d;
        public int e;
        public long f;
        public int g;
        public int h;

        public a(b bVar, Map<String, List<String>> map, int i, com.mnt.impl.b.b bVar2, int i2, long j, int i3, int i4) {
            this.c = -1;
            this.f3993a = bVar;
            this.f3994b = map;
            this.c = i;
            this.d = bVar2;
            this.e = i2;
            this.f = j;
            this.g = i3;
            this.h = i4;
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public String f3995a;

        /* renamed from: b, reason: collision with root package name */
        public String f3996b;
        public String c;
        public String d;
        public String e;
        public String f;
        public String g;
        public String h;
        public float i;
        public float j;
        public String k;
        public String l;
        public String m;
        public int n;
        public String o;
        public String p;
        public String q;

        public b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, float f, float f2, String str9, String str10, String str11, int i, String str12, String str13, String str14) {
            this.f3995a = str;
            this.f3996b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
            this.f = str6;
            this.g = str7;
            this.h = str8;
            this.i = f;
            this.j = f2;
            this.k = str9;
            this.l = str10;
            this.m = str11;
            this.n = i;
            this.o = str12;
            this.p = str13;
            this.q = str14;
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public String f3997a;

        /* renamed from: b, reason: collision with root package name */
        public String f3998b;

        public c(String str, String str2) {
            this.f3997a = str;
            this.f3998b = str2;
        }
    }
}
