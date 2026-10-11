package com.ijinshan.cloudconfig.deepcloudconfig;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CloudConfigExtra.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static volatile HashMap<String, JSONObject> f3598a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    private static boolean f3599b = false;
    private static List<String> c = new ArrayList();

    public static String a(Integer num, String str, String str2, String str3) {
        JSONObject a2 = a(num, str);
        if (a2 != null) {
            try {
                return a2.optString(str2, str3);
            } catch (Exception e) {
                return str3;
            }
        }
        return str3;
    }

    public static int a(Integer num, String str, String str2, int i) {
        JSONObject a2 = a(num, str);
        if (a2 != null) {
            try {
                return a2.optInt(str2, i);
            } catch (Exception e) {
                return i;
            }
        }
        return i;
    }

    public static long a(Integer num, String str, String str2, long j) {
        JSONObject a2 = a(num, str);
        if (a2 != null) {
            try {
                return a2.optLong(str2, j);
            } catch (Exception e) {
                return j;
            }
        }
        return j;
    }

    public static boolean a(Integer num, String str, String str2, boolean z) {
        JSONObject a2 = a(num, str);
        if (a2 != null) {
            try {
                return a2.optBoolean(str2, z);
            } catch (Exception e) {
                return z;
            }
        }
        return z;
    }

    public static double a(Integer num, String str, String str2, double d) {
        JSONObject a2 = a(num, str);
        if (a2 != null) {
            try {
                return a2.optDouble(str2, d);
            } catch (Exception e) {
                return d;
            }
        }
        return d;
    }

    private static synchronized JSONObject a(Integer num, String str) {
        JSONObject jSONObject;
        synchronized (b.class) {
            String str2 = num + "," + str;
            jSONObject = f3598a.get(str2);
            if (jSONObject == null || f3599b) {
                String b2 = a.a().b(num, str);
                if (TextUtils.isEmpty(b2)) {
                    if (jSONObject != null) {
                        c.add(str2);
                    }
                    jSONObject = null;
                } else {
                    try {
                        jSONObject = new JSONObject(b2);
                        f3598a.put(str2, jSONObject);
                    } catch (JSONException e) {
                        jSONObject = null;
                    }
                }
            }
        }
        return jSONObject;
    }

    public static void a() {
        Set<String> keySet;
        c.clear();
        if (f3598a.size() > 0 && (keySet = f3598a.keySet()) != null && keySet.size() > 0) {
            Iterator<String> it = keySet.iterator();
            f3599b = true;
            while (it.hasNext()) {
                try {
                    String[] split = it.next().split(",");
                    if (split != null && split.length == 2) {
                        a(Integer.valueOf(Integer.parseInt(split[0])), split[1]);
                    } else if (split != null && split.length == 1) {
                        a(Integer.valueOf(Integer.parseInt(split[0])), "");
                    }
                } catch (Exception e) {
                }
            }
        }
        f3599b = false;
        if (c.size() > 0) {
            Iterator<String> it2 = c.iterator();
            while (it2.hasNext()) {
                try {
                    f3598a.remove(it2.next());
                } catch (Exception e2) {
                }
            }
        }
    }
}
