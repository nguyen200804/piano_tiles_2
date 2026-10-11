package com.duapps.ad.c.a;

import android.content.Context;
import android.text.TextUtils;
import com.duapps.ad.base.m;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PriorityPolicy.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public int f2105a;

    /* renamed from: b, reason: collision with root package name */
    public List<String> f2106b = new ArrayList();
    public Map<String, Long> c = new HashMap();

    public long a(String str) {
        if (this.c.containsKey(str)) {
            return this.c.get(str).longValue();
        }
        return 2000L;
    }

    public static c a(JSONObject jSONObject) {
        c cVar = new c();
        cVar.f2105a = jSONObject.optInt("sid");
        JSONArray optJSONArray = jSONObject.optJSONArray("priority");
        if (optJSONArray != null && optJSONArray.length() > 0) {
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                cVar.f2106b.add(optJSONArray.optString(i));
            }
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("wt");
        for (String str : cVar.f2106b) {
            cVar.c.put(str, Long.valueOf(optJSONObject.optLong(str, 2000L)));
        }
        return cVar;
    }

    public static c a(Context context, int i, boolean z, boolean z2) {
        String e = m.e(context, i);
        try {
            if (!TextUtils.isEmpty(e)) {
                return a(new JSONObject(e));
            }
        } catch (JSONException e2) {
        }
        return a(i, z, z2);
    }

    public static c a(int i, boolean z, boolean z2) {
        c cVar = new c();
        cVar.f2105a = i;
        ArrayList arrayList = new ArrayList(2);
        cVar.f2106b = arrayList;
        arrayList.add("facebook");
        arrayList.add("download");
        if (z) {
            arrayList.add("admob");
            arrayList.add("dlh");
            arrayList.add("online");
            arrayList.add("inmobi");
        }
        HashMap hashMap = new HashMap(2);
        cVar.c = hashMap;
        hashMap.put("facebook", 2000L);
        hashMap.put("download", 2000L);
        if (z) {
            hashMap.put("dlh", 2000L);
            hashMap.put("inmobi", 2000L);
            hashMap.put("online", 2000L);
            hashMap.put("admob", 2000L);
        }
        if (z2) {
            cVar.f2106b.clear();
            cVar.c.clear();
        }
        return cVar;
    }
}
