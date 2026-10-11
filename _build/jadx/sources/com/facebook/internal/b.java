package com.facebook.internal;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AppEventsLoggerUtility.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static final Map<a, String> f3185a = new HashMap<a, String>() { // from class: com.facebook.internal.b.1
        {
            put(a.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL");
            put(a.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS");
        }
    };

    /* compiled from: AppEventsLoggerUtility.java */
    public enum a {
        MOBILE_INSTALL_EVENT,
        CUSTOM_APP_EVENTS
    }

    public static JSONObject a(a aVar, c cVar, String str, boolean z, Context context) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", f3185a.get(aVar));
        aa.a(jSONObject, cVar, str, z);
        try {
            aa.a(jSONObject, context);
        } catch (Exception e) {
            s.a(com.facebook.u.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e.toString());
        }
        jSONObject.put("application_package_name", context.getPackageName());
        return jSONObject;
    }
}
