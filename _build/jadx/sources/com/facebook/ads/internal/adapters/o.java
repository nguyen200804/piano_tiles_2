package com.facebook.ads.internal.adapters;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.util.f;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class o implements f.a {

    /* renamed from: a, reason: collision with root package name */
    private final String f2634a;

    /* renamed from: b, reason: collision with root package name */
    private final String f2635b;
    private final com.facebook.ads.internal.util.e c;
    private final Collection<String> d;
    private final Map<String, String> e;
    private final String f;
    private final int g;
    private final int h;
    private final int i;
    private final String j;

    private o(String str, String str2, com.facebook.ads.internal.util.e eVar, Collection<String> collection, Map<String, String> map, String str3, int i, int i2, int i3, String str4) {
        this.f2634a = str;
        this.f2635b = str2;
        this.c = eVar;
        this.d = collection;
        this.e = map;
        this.f = str3;
        this.g = i;
        this.h = i2;
        this.i = i3;
        this.j = str4;
    }

    public static o a(Bundle bundle) {
        return new o(com.facebook.ads.internal.util.g.a(bundle.getByteArray("markup")), null, com.facebook.ads.internal.util.e.NONE, null, null, bundle.getString("request_id"), bundle.getInt("viewability_check_initial_delay"), bundle.getInt("viewability_check_interval"), bundle.getInt("skip_after_seconds", 0), bundle.getString("ct"));
    }

    public static o a(JSONObject jSONObject) {
        JSONArray jSONArray;
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("markup");
        String optString2 = jSONObject.optString("activation_command");
        String optString3 = jSONObject.optString("request_id");
        String a2 = com.facebook.ads.internal.util.g.a(jSONObject, "ct");
        com.facebook.ads.internal.util.e a3 = com.facebook.ads.internal.util.e.a(jSONObject.optString("invalidation_behavior"));
        try {
            jSONArray = new JSONArray(jSONObject.optString("detection_strings"));
        } catch (JSONException e) {
            e.printStackTrace();
            jSONArray = null;
        }
        Collection<String> a4 = com.facebook.ads.internal.util.f.a(jSONArray);
        JSONObject optJSONObject = jSONObject.optJSONObject("metadata");
        HashMap hashMap = new HashMap();
        if (optJSONObject != null) {
            Iterator<String> keys = optJSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, optJSONObject.optString(next));
            }
        }
        return new o(optString, optString2, a3, a4, hashMap, optString3, hashMap.containsKey("viewability_check_initial_delay") ? Integer.parseInt((String) hashMap.get("viewability_check_initial_delay")) : 0, hashMap.containsKey("viewability_check_interval") ? Integer.parseInt((String) hashMap.get("viewability_check_interval")) : 1000, hashMap.containsKey("skip_after_seconds") ? Integer.parseInt((String) hashMap.get("skip_after_seconds")) : 0, a2);
    }

    public static o b(Intent intent) {
        return new o(com.facebook.ads.internal.util.g.a(intent.getByteArrayExtra("markup")), intent.getStringExtra("activation_command"), com.facebook.ads.internal.util.e.NONE, null, null, intent.getStringExtra("request_id"), intent.getIntExtra("viewability_check_initial_delay", 0), intent.getIntExtra("viewability_check_interval", 1000), intent.getIntExtra(AudienceNetworkActivity.SKIP_DELAY_SECONDS_KEY, 0), intent.getStringExtra("ct"));
    }

    @Override // com.facebook.ads.internal.util.f.a
    public String D() {
        return this.j;
    }

    @Override // com.facebook.ads.internal.util.f.a
    public com.facebook.ads.internal.util.e F() {
        return this.c;
    }

    @Override // com.facebook.ads.internal.util.f.a
    public Collection<String> G() {
        return this.d;
    }

    public String a() {
        return this.f2634a;
    }

    public void a(Intent intent) {
        intent.putExtra("markup", com.facebook.ads.internal.util.g.a(this.f2634a));
        intent.putExtra("activation_command", this.f2635b);
        intent.putExtra("request_id", this.f);
        intent.putExtra("viewability_check_initial_delay", this.g);
        intent.putExtra("viewability_check_interval", this.h);
        intent.putExtra(AudienceNetworkActivity.SKIP_DELAY_SECONDS_KEY, this.i);
        intent.putExtra("ct", this.j);
    }

    public String b() {
        return this.f2635b;
    }

    public Map<String, String> c() {
        return this.e;
    }

    public String d() {
        return this.f;
    }

    public int e() {
        return this.g;
    }

    public int f() {
        return this.h;
    }

    public Bundle g() {
        Bundle bundle = new Bundle();
        bundle.putByteArray("markup", com.facebook.ads.internal.util.g.a(this.f2634a));
        bundle.putString("request_id", this.f);
        bundle.putInt("viewability_check_initial_delay", this.g);
        bundle.putInt("viewability_check_interval", this.h);
        bundle.putInt("skip_after_seconds", this.i);
        bundle.putString("ct", this.j);
        return bundle;
    }
}
