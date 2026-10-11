package com.mnt.impl.j;

import android.content.Context;
import android.text.TextUtils;
import com.mnt.impl.b.h;
import com.mnt.impl.b.k;
import com.mnt.impl.f.m;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final String f4075a;

    static {
        String str = com.mnt.impl.e.iJ;
        String str2 = com.mnt.impl.e.iK;
        f4075a = com.mnt.impl.e.iL;
    }

    public static Map<String, String> a(Context context, a aVar) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.mnt.impl.e.iM, b(context, aVar));
            String a2 = com.mnt.impl.i.a.b.a(jSONObject.toString().getBytes(com.mnt.impl.e.iN), com.mnt.impl.e.iO);
            String jSONObject2 = jSONObject.toString();
            if (!TextUtils.isEmpty(a2)) {
                jSONObject2 = k.a(a2.getBytes());
            }
            hashMap.put(com.mnt.impl.e.iP, jSONObject2);
            hashMap.put(com.mnt.impl.e.iQ, com.mnt.impl.e.iR);
            hashMap.put(com.mnt.impl.e.iS, k.c(com.mnt.impl.e.iT + jSONObject.toString() + com.mnt.impl.e.iT));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }

    private static JSONObject b(Context context, a aVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(com.mnt.impl.e.iU, com.mnt.impl.e.iV);
            jSONObject.put(com.mnt.impl.e.iW, com.mnt.a.a.f(context));
            jSONObject.put(com.mnt.impl.e.iX, aVar.a());
            jSONObject.put(com.mnt.impl.e.iY, aVar.f4070a);
            jSONObject.put(com.mnt.impl.e.iZ, k.i(context));
            jSONObject.put(com.mnt.impl.e.ja, com.mnt.a.a.b(context));
            jSONObject.put(com.mnt.impl.e.jb, String.valueOf(aVar.c));
            long currentTimeMillis = ((System.currentTimeMillis() - k.h(context)) / 86400000) + 1;
            String str = com.mnt.impl.e.jc;
            if (currentTimeMillis <= 0) {
                currentTimeMillis = 1;
            }
            jSONObject.put(str, String.valueOf(currentTimeMillis));
            jSONObject.put(com.mnt.impl.e.jd, h.o(context) ? 1 : 2);
            jSONObject.put(com.mnt.impl.e.je, com.mnt.a.a.a(context));
            jSONObject.put(com.mnt.impl.e.jf, String.valueOf(aVar.d ? 1 : 0));
            jSONObject.put(com.mnt.impl.e.jg, "1");
            jSONObject.put(com.mnt.impl.e.jh, String.valueOf(com.mnt.impl.d.a()));
            jSONObject.put(com.mnt.impl.e.ji, String.valueOf(k.a(context, com.mnt.impl.e.jj)));
            jSONObject.put(com.mnt.impl.e.jk, String.valueOf(com.mnt.a.a.f()));
            jSONObject.put(com.mnt.impl.e.jl, com.mnt.a.a.a());
            jSONObject.put(com.mnt.impl.e.jm, String.valueOf(m.b(context)));
            jSONObject.put(com.mnt.impl.e.jn, 128);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }
}
