package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: BundleJSONConverter.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static final Map<Class<?>, a> f3193a = new HashMap();

    /* compiled from: BundleJSONConverter.java */
    public interface a {
        void a(Bundle bundle, String str, Object obj) throws JSONException;

        void a(JSONObject jSONObject, String str, Object obj) throws JSONException;
    }

    static {
        f3193a.put(Boolean.class, new a() { // from class: com.facebook.internal.d.1
            @Override // com.facebook.internal.d.a
            public void a(Bundle bundle, String str, Object obj) throws JSONException {
                bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            }

            @Override // com.facebook.internal.d.a
            public void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
                jSONObject.put(str, obj);
            }
        });
        f3193a.put(Integer.class, new a() { // from class: com.facebook.internal.d.2
            @Override // com.facebook.internal.d.a
            public void a(Bundle bundle, String str, Object obj) throws JSONException {
                bundle.putInt(str, ((Integer) obj).intValue());
            }

            @Override // com.facebook.internal.d.a
            public void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
                jSONObject.put(str, obj);
            }
        });
        f3193a.put(Long.class, new a() { // from class: com.facebook.internal.d.3
            @Override // com.facebook.internal.d.a
            public void a(Bundle bundle, String str, Object obj) throws JSONException {
                bundle.putLong(str, ((Long) obj).longValue());
            }

            @Override // com.facebook.internal.d.a
            public void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
                jSONObject.put(str, obj);
            }
        });
        f3193a.put(Double.class, new a() { // from class: com.facebook.internal.d.4
            @Override // com.facebook.internal.d.a
            public void a(Bundle bundle, String str, Object obj) throws JSONException {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            }

            @Override // com.facebook.internal.d.a
            public void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
                jSONObject.put(str, obj);
            }
        });
        f3193a.put(String.class, new a() { // from class: com.facebook.internal.d.5
            @Override // com.facebook.internal.d.a
            public void a(Bundle bundle, String str, Object obj) throws JSONException {
                bundle.putString(str, (String) obj);
            }

            @Override // com.facebook.internal.d.a
            public void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
                jSONObject.put(str, obj);
            }
        });
        f3193a.put(String[].class, new a() { // from class: com.facebook.internal.d.6
            @Override // com.facebook.internal.d.a
            public void a(Bundle bundle, String str, Object obj) throws JSONException {
                throw new IllegalArgumentException("Unexpected type from JSON");
            }

            @Override // com.facebook.internal.d.a
            public void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
                JSONArray jSONArray = new JSONArray();
                for (String str2 : (String[]) obj) {
                    jSONArray.put(str2);
                }
                jSONObject.put(str, jSONArray);
            }
        });
        f3193a.put(JSONArray.class, new a() { // from class: com.facebook.internal.d.7
            @Override // com.facebook.internal.d.a
            public void a(Bundle bundle, String str, Object obj) throws JSONException {
                JSONArray jSONArray = (JSONArray) obj;
                ArrayList<String> arrayList = new ArrayList<>();
                if (jSONArray.length() == 0) {
                    bundle.putStringArrayList(str, arrayList);
                    return;
                }
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < jSONArray.length()) {
                        Object obj2 = jSONArray.get(i2);
                        if (obj2 instanceof String) {
                            arrayList.add((String) obj2);
                            i = i2 + 1;
                        } else {
                            throw new IllegalArgumentException("Unexpected type in an array: " + obj2.getClass());
                        }
                    } else {
                        bundle.putStringArrayList(str, arrayList);
                        return;
                    }
                }
            }

            @Override // com.facebook.internal.d.a
            public void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
                throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
            }
        });
    }

    public static JSONObject a(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                if (obj instanceof List) {
                    JSONArray jSONArray = new JSONArray();
                    Iterator it = ((List) obj).iterator();
                    while (it.hasNext()) {
                        jSONArray.put((String) it.next());
                    }
                    jSONObject.put(str, jSONArray);
                } else if (obj instanceof Bundle) {
                    jSONObject.put(str, a((Bundle) obj));
                } else {
                    a aVar = f3193a.get(obj.getClass());
                    if (aVar == null) {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                    aVar.a(jSONObject, str, obj);
                }
            }
        }
        return jSONObject;
    }

    public static Bundle a(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj != null && obj != JSONObject.NULL) {
                if (obj instanceof JSONObject) {
                    bundle.putBundle(next, a((JSONObject) obj));
                } else {
                    a aVar = f3193a.get(obj.getClass());
                    if (aVar == null) {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                    aVar.a(bundle, next, obj);
                }
            }
        }
        return bundle;
    }
}
