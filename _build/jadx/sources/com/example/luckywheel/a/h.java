package com.example.luckywheel.a;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {
    public static String a(Map<String, Object> map) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : map.keySet()) {
            try {
                jSONObject.put(str, map.get(str));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONObject.toString();
    }
}
