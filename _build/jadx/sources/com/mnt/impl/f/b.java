package com.mnt.impl.f;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends com.mnt.impl.b.e<Boolean> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f4001a;
    private static C0207b e;
    private static final String f;
    private static final String g;
    private static long h;

    /* renamed from: b, reason: collision with root package name */
    private Context f4002b;
    private String c;
    private a d;

    public interface a {
        void a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mnt.impl.b.e
    public final /* synthetic */ void a(Boolean bool) {
        Boolean bool2 = bool;
        if (this.d != null) {
            if (bool2.booleanValue()) {
                this.d.a();
            } else {
                this.d.b();
            }
        }
    }

    static {
        String str = com.mnt.impl.e.gG;
        f4001a = com.mnt.impl.e.gH;
        e = null;
        f = com.mnt.impl.e.gI;
        g = com.mnt.impl.e.gJ;
    }

    public b(Context context, String str, a aVar) {
        this.f4002b = context;
        this.c = str;
        this.d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.mnt.impl.b.e
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Boolean a() {
        C0207b a2;
        boolean valueOf;
        synchronized (b.class) {
            if (e != null) {
                a2 = e;
            } else {
                a2 = a(com.mnt.a.a.a(f, this.f4002b).getString(g, null), false);
                e = a2;
            }
            if (a2 == null) {
                a2 = e();
            }
            if (a2 == null) {
                valueOf = false;
            } else {
                Map map = a2.f4004b;
                if (map.isEmpty() || !map.containsKey(this.c)) {
                    C0207b e2 = e();
                    if (e2 == null) {
                        map = new HashMap();
                    } else {
                        map = e2.f4004b;
                    }
                }
                valueOf = Boolean.valueOf(map.containsKey(this.c));
            }
        }
        return valueOf;
    }

    private C0207b e() {
        if (System.currentTimeMillis() - h < 1800000) {
            return null;
        }
        e eVar = new e();
        HashMap hashMap = new HashMap();
        hashMap.put(com.mnt.impl.e.gK, com.mnt.impl.b.h.j(this.f4002b));
        h = System.currentTimeMillis();
        C0207b a2 = a(eVar.a(f4001a, hashMap, com.mnt.impl.b.k.j(this.f4002b)), true);
        e = a2;
        return a2;
    }

    private C0207b a(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.optString(com.mnt.impl.e.gL, null);
            int optInt = jSONObject.optInt(com.mnt.impl.e.gM, -1);
            JSONArray optJSONArray = jSONObject.optJSONArray(com.mnt.impl.e.gN);
            HashMap hashMap = new HashMap();
            for (int i = 0; i < optJSONArray.length(); i++) {
                hashMap.put(optJSONArray.optString(i), C0207b.f4003a);
            }
            if (optInt != 200) {
                return null;
            }
            if (z) {
                SharedPreferences.Editor edit = com.mnt.a.a.a(f, this.f4002b).edit();
                edit.putString(g, str);
                edit.commit();
            }
            C0207b c0207b = new C0207b(hashMap);
            e = c0207b;
            return c0207b;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* renamed from: com.mnt.impl.f.b$b, reason: collision with other inner class name */
    static class C0207b {

        /* renamed from: a, reason: collision with root package name */
        public static final Object f4003a = new Object();

        /* renamed from: b, reason: collision with root package name */
        Map<String, Object> f4004b;

        public C0207b(Map<String, Object> map) {
            this.f4004b = map;
        }
    }
}
