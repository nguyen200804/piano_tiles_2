package com.cmplay.g;

import android.content.Context;
import com.appsflyer.AppsFlyerLib;
import com.cmplay.base.util.g;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AppsFlyerReporter.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    public static void a(Context context, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("af_source", Integer.valueOf(i));
        AppsFlyerLib.a(context.getApplicationContext(), "af_open", hashMap);
    }

    public static void a(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("af_revenue", 1);
        hashMap.put("af_content_type", "play_video");
        hashMap.put("af_content_id", "1");
        hashMap.put("af_currency", "USD");
        AppsFlyerLib.a(context.getApplicationContext(), "video", hashMap);
        g.a("appsFlyer_zzb", "appsFlyer 上报reportVideoPlayed");
    }

    public static void a(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str2);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.get(next));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        AppsFlyerLib.a(context, str, hashMap);
        g.a("appsFlyer_zzb", "appsFlyer eventValue=" + hashMap);
    }

    public static void b(Context context, int i) {
        a(context, "af_item_diamond", i);
    }

    public static void b(Context context) {
        a(context, "af_round_end");
    }

    private static void a(Context context, String str, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("af_item_type", str);
        hashMap.put("af_item_count", Integer.valueOf(i));
        AppsFlyerLib.a(context.getApplicationContext(), "af_consume_item", hashMap);
    }

    private static void a(Context context, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("af_event_type", str);
        AppsFlyerLib.a(context.getApplicationContext(), "af_game_playing", hashMap);
    }
}
