package com.cmcm.orion.adsdk;

import android.content.Context;
import android.text.TextUtils;
import com.cmcm.orion.adsdk.b;
import com.cmcm.orion.picks.a.a.g;
import com.cmcm.orion.picks.a.a.h;
import com.cmcm.orion.utils.internal.ReceiverUtils;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;

/* compiled from: OrionSdk.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class e {

    /* renamed from: b, reason: collision with root package name */
    private static Context f808b;
    private static String c;
    private static String d;
    private static c g;
    private static f h;
    private static String i;
    private static String j;
    private static boolean e = false;

    /* renamed from: a, reason: collision with root package name */
    public static volatile boolean f807a = true;
    private static Map<String, String> f = new Hashtable();

    public static boolean a(Context context) {
        f808b = context;
        String q = h.q();
        if (context == null || TextUtils.isEmpty(q)) {
            return false;
        }
        a(context, q);
        return true;
    }

    public static void a(Context context, String str) {
        a(context, str, "");
    }

    public static void a(Context context, final String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("PublisherID cannot be null or empty");
        }
        f808b = context;
        c = str;
        d = str2;
        com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.adsdk.e.1
            @Override // java.lang.Runnable
            public final void run() {
                if (!TextUtils.isEmpty(str)) {
                    h.h(str);
                }
                e.h();
                ReceiverUtils.a(e.f808b);
                com.cmcm.orion.utils.internal.a.a().b();
            }
        });
    }

    public static Context a() {
        return f808b;
    }

    public static String b() {
        return c;
    }

    public static String c() {
        return d;
    }

    public static boolean d() {
        return e;
    }

    public static boolean e() {
        return f807a;
    }

    public static String f() {
        return i;
    }

    public static String g() {
        return j;
    }

    public static void a(c cVar) {
        g = cVar;
    }

    public static void a(b.a aVar, String str, String str2, long j2, String str3, Map<String, String> map) {
        if (h != null) {
            Map<String, String> a2 = a(str, str2, j2, str3);
            if (map != null) {
                a2.putAll(map);
            }
            h.a(aVar, a2);
        }
    }

    private static Map<String, String> a(String str, String str2, long j2, String str3) {
        Map<String, String> a2 = a(str, str2, j2);
        if (!TextUtils.isEmpty(str3)) {
            a2.put("errorcode", str3);
        }
        return a2;
    }

    private static Map<String, String> a(String str, String str2, long j2) {
        HashMap hashMap = new HashMap();
        hashMap.put("posid", str);
        hashMap.put("adTypeName", str2);
        hashMap.put("loadTime", String.valueOf(j2));
        return hashMap;
    }

    public static void a(String str, int i2, long j2, int i3) {
        if (!TextUtils.isEmpty(str) && h != null) {
            new StringBuilder("posid is :").append(str).append("errorCode is ").append(i2).append(" isNet:").append(i3);
            h.a(str, i2, j2, i3);
        }
    }

    public static void a(String str, int i2, long j2, String str2, int i3) {
        if (!TextUtils.isEmpty(str) && h != null) {
            new StringBuilder("posid is :").append(str).append(" responseCode is ").append(i2).append(" costTime:").append(j2).append(" exception: ").append(str2).append(" dataCode:").append(i3);
            h.a(str, i2, j2, str2, i3);
        }
    }

    static /* synthetic */ void h() {
        if (!h.e("config_last_save_time")) {
            return;
        }
        g.a().a(b());
    }
}
