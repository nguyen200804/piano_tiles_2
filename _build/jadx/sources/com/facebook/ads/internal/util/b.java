package com.facebook.ads.internal.util;

import android.support.annotation.Nullable;
import com.facebook.ads.internal.server.AdPlacementType;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static String f2867a = null;

    /* renamed from: b, reason: collision with root package name */
    private String f2868b;
    private Map<String, Object> c;
    private int d;
    private String e;

    public enum a {
        OPEN_STORE(0),
        OPEN_LINK(1),
        XOUT(2),
        OPEN_URL(3),
        SHOW_INTERSTITIAL(4);

        int f;

        a(int i) {
            this.f = i;
        }
    }

    /* renamed from: com.facebook.ads.internal.util.b$b, reason: collision with other inner class name */
    public enum EnumC0079b {
        LOADING_AD(0);


        /* renamed from: b, reason: collision with root package name */
        int f2872b;

        EnumC0079b(int i) {
            this.f2872b = i;
        }
    }

    public b(String str, Map<String, Object> map, int i, String str2) {
        this.f2868b = str;
        this.c = map;
        this.d = i;
        this.e = str2;
    }

    public static b a(long j, a aVar, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        HashMap hashMap = new HashMap();
        hashMap.put("Time", String.valueOf(currentTimeMillis - j));
        hashMap.put("AdAction", String.valueOf(aVar.f));
        return new b("bounceback", hashMap, (int) (currentTimeMillis / 1000), str);
    }

    public static b a(EnumC0079b enumC0079b, AdPlacementType adPlacementType, long j, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("LatencyType", String.valueOf(enumC0079b.f2872b));
        hashMap.put("AdPlacementType", adPlacementType.toString());
        hashMap.put("Time", String.valueOf(j));
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (str == null) {
            str = f2867a;
        }
        return new b("latency", hashMap, currentTimeMillis, str);
    }

    public static b a(@Nullable Throwable th, @Nullable String str) {
        HashMap hashMap = new HashMap();
        if (th != null) {
            hashMap.put("ex", th.getClass().getSimpleName());
            hashMap.put("ex_msg", th.getMessage());
        }
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (str == null) {
            str = f2867a;
        }
        return new b("error", hashMap, currentTimeMillis, str);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MediationMetaData.KEY_NAME, this.f2868b);
            jSONObject.put("data", new JSONObject(this.c));
            jSONObject.put("time", this.d);
            jSONObject.put("request_id", this.e);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
