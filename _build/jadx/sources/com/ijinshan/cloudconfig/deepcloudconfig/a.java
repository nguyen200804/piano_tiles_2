package com.ijinshan.cloudconfig.deepcloudconfig;

import android.content.Context;
import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: CloudConfig.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f3596a;
    private final Object d = new Object();
    private Context c = com.ijinshan.cloudconfig.c.a.d();

    /* renamed from: b, reason: collision with root package name */
    private HashMap<Integer, HashMap<String, List<ConfigInfo>>> f3597b = new HashMap<>();
    private List<String> e = new ArrayList();

    public static a a() {
        if (f3596a == null) {
            synchronized (a.class) {
                if (f3596a == null) {
                    f3596a = new a();
                }
            }
        }
        return f3596a;
    }

    private a() {
    }

    public List<ConfigInfo> a(Integer num, String str) {
        HashMap<String, List<ConfigInfo>> hashMap = this.f3597b.get(num);
        if (hashMap == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<ConfigInfo> list = hashMap.get(str);
        if (list != null) {
            arrayList.addAll(list);
        }
        if (arrayList == null || arrayList.size() <= 0) {
            return null;
        }
        return arrayList;
    }

    public String b(Integer num, String str) {
        ConfigInfo configInfo;
        ArrayList arrayList = new ArrayList();
        List<ConfigInfo> a2 = a(num, str);
        com.ijinshan.cloudconfig.d.a.a("cloud", "listTemp =" + (a2 == null ? "null" : Integer.valueOf(a2.size())));
        if (a2 != null) {
            arrayList.addAll(a2);
        }
        if (arrayList == null || arrayList.size() < 1 || (configInfo = (ConfigInfo) arrayList.get(0)) == null || configInfo.a() == null) {
            return "";
        }
        return configInfo.a();
    }

    public synchronized void a(JSONObject jSONObject) {
        HashMap<Integer, HashMap<String, List<ConfigInfo>>> hashMap;
        HashMap<Integer, HashMap<String, List<ConfigInfo>>> hashMap2;
        if (jSONObject != null) {
            if (this.f3597b != null) {
                hashMap = new HashMap<>(this.f3597b);
                this.f3597b.clear();
            } else {
                hashMap = null;
            }
            try {
                this.e.clear();
                JSONArray jSONArray = jSONObject.getJSONArray("data");
                if (jSONArray != null && jSONArray.length() >= 1) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString(FacebookAdapter.KEY_ID, "");
                        if (!TextUtils.isEmpty(optString)) {
                            this.e.add(optString);
                        }
                        HashMap<String, List<ConfigInfo>> hashMap3 = this.f3597b.get(Integer.valueOf(jSONObject2.optInt("func_type")));
                        HashMap<String, List<ConfigInfo>> hashMap4 = hashMap3 == null ? new HashMap<>() : hashMap3;
                        List<ConfigInfo> list = hashMap4.get(jSONObject2.opt("section"));
                        if (list == null) {
                            list = new ArrayList<>();
                        }
                        ConfigInfo configInfo = new ConfigInfo();
                        configInfo.a(jSONObject2.optInt("func_type"));
                        configInfo.b(jSONObject2.optInt("priority"));
                        configInfo.a(jSONObject2.optString("section"));
                        configInfo.b(jSONObject2.get("key_value").toString());
                        list.add(configInfo);
                        hashMap4.put(jSONObject2.optString("section"), list);
                        this.f3597b.put(Integer.valueOf(jSONObject2.optInt("func_type")), hashMap4);
                    }
                    for (Integer num : this.f3597b.keySet()) {
                        HashMap<String, List<ConfigInfo>> hashMap5 = this.f3597b.get(num);
                        for (String str : hashMap5.keySet()) {
                            List<ConfigInfo> list2 = hashMap5.get(str);
                            if (list2.size() > 1) {
                                Collections.sort(list2);
                                hashMap5.put(str, list2);
                            }
                        }
                        this.f3597b.put(num, hashMap5);
                    }
                }
                hashMap2 = hashMap;
            } catch (Exception e) {
                if (hashMap != null) {
                    this.f3597b = hashMap;
                    hashMap.clear();
                    hashMap2 = null;
                } else {
                    hashMap2 = hashMap;
                }
            }
        } else {
            hashMap2 = null;
        }
        if (hashMap2 != null && jSONObject != null) {
            hashMap2.clear();
            b.a();
        }
    }

    public void b() {
        a(com.ijinshan.cloudconfig.d.b.a(c()));
    }

    private String c() {
        try {
            if (this.c == null) {
                this.c = com.ijinshan.cloudconfig.c.a.d();
            }
            return this.c.getApplicationContext().getDir("deep_cloud_config", 0).getAbsolutePath() + File.separator + "cloudmsgadv.json";
        } catch (Exception e) {
            return "";
        }
    }
}
