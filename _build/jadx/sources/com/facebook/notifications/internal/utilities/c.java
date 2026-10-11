package com.facebook.notifications.internal.utilities;

import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: JSONObjectVisitor.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class c {
    public static void a(JSONObject jSONObject, c cVar) {
        cVar.a(jSONObject);
    }

    protected void a(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            Object opt = jSONObject.opt(keys.next());
            if (opt instanceof JSONObject) {
                a((JSONObject) opt);
            }
            if (opt instanceof JSONArray) {
                a((JSONArray) opt);
            }
        }
    }

    protected void a(JSONArray jSONArray) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                Object opt = jSONArray.opt(i2);
                if (opt instanceof JSONObject) {
                    a((JSONObject) opt);
                }
                if (opt instanceof JSONArray) {
                    a((JSONArray) opt);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
