package com.duapps.ad.base;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ToolboxLicenseManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class p {

    /* renamed from: b, reason: collision with root package name */
    private static p f2080b;
    private Context g;

    /* renamed from: a, reason: collision with root package name */
    private static final String f2079a = p.class.getSimpleName();
    private static volatile String h = null;
    private SparseArray<List<String>> c = new SparseArray<>();
    private SparseArray<String> d = new SparseArray<>();
    private SparseArray<String> f = new SparseArray<>();
    private SparseArray<String> e = new SparseArray<>();

    public static synchronized p a(Context context) {
        p pVar;
        synchronized (p.class) {
            if (f2080b == null) {
                f2080b = new p(context.getApplicationContext());
            }
            pVar = f2080b;
        }
        return pVar;
    }

    public static String b(Context context) {
        if (h == null) {
            synchronized (p.class) {
                try {
                    String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("app_license");
                    if (TextUtils.isEmpty(string)) {
                        h.d(f2079a, "license should not null");
                    }
                    h = string;
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
        }
        return h;
    }

    public boolean a(int i) {
        return this.c.indexOfKey(i) >= 0 || this.e.indexOfKey(i) >= 0;
    }

    public List<String> b(int i) {
        List<String> a2 = m.a(this.g, i);
        if (a2 == null || a2.size() == 0) {
            return this.c.get(i);
        }
        return a2;
    }

    public String c(int i) {
        List<String> a2 = m.a(this.g, i);
        return (a2 == null || a2.size() == 0) ? this.e.get(i) : a2.get(0);
    }

    public String d(int i) {
        return this.f.get(i);
    }

    public synchronized HashSet<Integer> a() {
        HashSet<Integer> hashSet;
        hashSet = new HashSet<>();
        int size = this.c.size();
        while (size > 0) {
            int i = size - 1;
            hashSet.add(Integer.valueOf(this.c.keyAt(i)));
            size = i;
        }
        int size2 = this.d.size();
        while (size2 > 0) {
            size2--;
            hashSet.add(Integer.valueOf(this.d.keyAt(size)));
        }
        int size3 = this.e.size();
        while (size3 > 0) {
            size3--;
            hashSet.add(Integer.valueOf(this.e.keyAt(size3)));
        }
        return hashSet;
    }

    public String b() {
        return m.k(this.g);
    }

    private p(Context context) {
        this.g = context;
    }

    public String e(int i) {
        return this.e.get(i);
    }

    public void a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("pidsJson cannot be null");
            }
            JSONObject jSONObject = new JSONObject(str);
            JSONArray optJSONArray = jSONObject.optJSONArray("list");
            JSONArray optJSONArray2 = jSONObject.optJSONArray("native");
            JSONArray optJSONArray3 = jSONObject.optJSONArray("lockscreen");
            JSONArray optJSONArray4 = jSONObject.optJSONArray("weather");
            JSONArray optJSONArray5 = jSONObject.optJSONArray("ducaller");
            if (optJSONArray2 != null) {
                int length = optJSONArray2.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject2 = optJSONArray2.getJSONObject(i);
                    int optInt = jSONObject2.optInt("pid");
                    ArrayList arrayList = new ArrayList();
                    JSONArray optJSONArray6 = jSONObject2.optJSONArray("fbids");
                    if (optJSONArray6 != null) {
                        int length2 = optJSONArray6.length();
                        for (int i2 = 0; i2 < length2; i2++) {
                            String optString = optJSONArray6.optString(i2);
                            if (!TextUtils.isEmpty(optString)) {
                                arrayList.add(optString);
                            }
                        }
                    }
                    this.c.put(optInt, arrayList);
                    this.f.put(optInt, jSONObject2.optString("amid"));
                }
            }
            if (optJSONArray != null) {
                int length3 = optJSONArray.length();
                for (int i3 = 0; i3 < length3; i3++) {
                    JSONObject jSONObject3 = optJSONArray.getJSONObject(i3);
                    this.d.put(jSONObject3.optInt("pid"), jSONObject3.optString("fbids"));
                }
            }
            if (optJSONArray3 != null) {
                int length4 = optJSONArray3.length();
                for (int i4 = 0; i4 < length4; i4++) {
                    JSONObject jSONObject4 = optJSONArray3.getJSONObject(i4);
                    int optInt2 = jSONObject4.optInt("pid");
                    ArrayList arrayList2 = new ArrayList();
                    JSONArray optJSONArray7 = jSONObject4.optJSONArray("fbids");
                    if (optJSONArray7 != null) {
                        int length5 = optJSONArray7.length();
                        for (int i5 = 0; i5 < length5; i5++) {
                            String optString2 = optJSONArray7.optString(i5);
                            if (!TextUtils.isEmpty(optString2)) {
                                arrayList2.add(optString2);
                            }
                        }
                    }
                    this.c.put(optInt2, arrayList2);
                }
            }
            if (optJSONArray4 != null) {
                int length6 = optJSONArray4.length();
                for (int i6 = 0; i6 < length6; i6++) {
                    JSONObject jSONObject5 = optJSONArray4.getJSONObject(i6);
                    int optInt3 = jSONObject5.optInt("pid");
                    ArrayList arrayList3 = new ArrayList();
                    JSONArray optJSONArray8 = jSONObject5.optJSONArray("fbids");
                    if (optJSONArray8 != null) {
                        int length7 = optJSONArray8.length();
                        for (int i7 = 0; i7 < length7; i7++) {
                            String optString3 = optJSONArray8.optString(i7);
                            if (!TextUtils.isEmpty(optString3)) {
                                arrayList3.add(optString3);
                            }
                        }
                    }
                    this.c.put(optInt3, arrayList3);
                }
            }
            JSONArray optJSONArray9 = jSONObject.optJSONArray("offerwall");
            if (optJSONArray9 != null) {
                int length8 = optJSONArray9.length();
                for (int i8 = 0; i8 < length8; i8++) {
                    JSONObject jSONObject6 = optJSONArray9.getJSONObject(i8);
                    this.e.put(jSONObject6.optInt("pid"), jSONObject6.optString("fbids"));
                }
            }
            if (optJSONArray5 != null) {
                int length9 = optJSONArray5.length();
                for (int i9 = 0; i9 < length9; i9++) {
                    JSONObject jSONObject7 = optJSONArray5.getJSONObject(i9);
                    int optInt4 = jSONObject7.optInt("pid");
                    ArrayList arrayList4 = new ArrayList();
                    JSONArray optJSONArray10 = jSONObject7.optJSONArray("fbids");
                    if (optJSONArray10 != null) {
                        int length10 = optJSONArray10.length();
                        for (int i10 = 0; i10 < length10; i10++) {
                            String optString4 = optJSONArray10.optString(i10);
                            if (!TextUtils.isEmpty(optString4)) {
                                arrayList4.add(optString4);
                            }
                        }
                    }
                    this.c.put(optInt4, arrayList4);
                }
            }
        } catch (JSONException e) {
            h.d(f2079a, "JSON parse Exception :" + e.getMessage());
        }
    }
}
