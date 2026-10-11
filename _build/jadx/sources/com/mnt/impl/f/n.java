package com.mnt.impl.f;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.mnt.Ad;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class n {
    public static final String A;
    public static final String B;
    public static final String C;
    public static final String D;
    public static final String E;
    public static final String F;
    public static final String G;
    private static String J;
    private static final String K;

    /* renamed from: a, reason: collision with root package name */
    public static final String f4024a;

    /* renamed from: b, reason: collision with root package name */
    public static final String f4025b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final String f;
    public static final String g;
    public static final String h;
    public static final String i;
    public static final String j;
    public static final String k;
    public static final String l;
    public static final String m;
    public static final String n;
    public static final String o;
    public static final String p;
    public static final String q;
    public static final String r;
    public static final String s;
    public static final String t;
    public static final String u;
    public static final String v;
    public static final String w;
    public static final String x;
    public static final String y;
    public static final String z;
    String H;
    int I;
    private Context L;
    private String M;

    static {
        String str = com.mnt.impl.e.dS;
        f4024a = com.mnt.impl.e.dT;
        f4025b = com.mnt.impl.e.dU;
        c = com.mnt.impl.e.dV;
        d = com.mnt.impl.e.dW;
        e = com.mnt.impl.e.dX;
        f = com.mnt.impl.e.dY;
        g = com.mnt.impl.e.dZ;
        h = com.mnt.impl.e.ea;
        i = com.mnt.impl.e.eb;
        j = com.mnt.impl.e.ec;
        k = com.mnt.impl.e.ed;
        l = com.mnt.impl.e.ee;
        m = com.mnt.impl.e.ef;
        n = com.mnt.impl.e.eg;
        o = com.mnt.impl.e.eh;
        p = com.mnt.impl.e.ei;
        q = com.mnt.impl.e.ej;
        r = com.mnt.impl.e.ek;
        s = com.mnt.impl.e.el;
        t = com.mnt.impl.e.em;
        u = com.mnt.impl.e.en;
        v = com.mnt.impl.e.eo;
        w = com.mnt.impl.e.ep;
        x = com.mnt.impl.e.eq;
        y = com.mnt.impl.e.er;
        z = com.mnt.impl.e.es;
        A = com.mnt.impl.e.et;
        B = com.mnt.impl.e.eu;
        C = com.mnt.impl.e.ev;
        D = com.mnt.impl.e.ew;
        E = com.mnt.impl.e.ex;
        F = com.mnt.impl.e.ey;
        J = com.mnt.impl.e.ez;
        G = com.mnt.impl.e.eA;
        K = com.mnt.impl.e.eB;
    }

    public n(Context context, String str) {
        this.L = context;
        this.M = str;
    }

    public static String a(String str) {
        return K + str;
    }

    public final Map<String, String> a() {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.mnt.impl.e.eC, b());
            JSONObject jSONObject2 = new JSONObject();
            if (TextUtils.isEmpty(this.H)) {
                this.H = Ad.AD_CREATIVE_SIZE_1200x627;
            }
            jSONObject2.put(com.mnt.impl.e.eD, this.H);
            if (this.I == 0) {
                this.I = 1;
            }
            jSONObject2.put(com.mnt.impl.e.eE, this.I);
            jSONObject.put(com.mnt.impl.e.eF, jSONObject2);
            String a2 = com.mnt.impl.i.a.b.a(jSONObject.toString(), com.mnt.impl.e.eG);
            if (a2 != null) {
                a2 = com.mnt.impl.b.k.a(a2.getBytes());
            }
            hashMap.put(com.mnt.impl.e.eH, a2);
            hashMap.put(com.mnt.impl.e.eI, com.mnt.impl.e.eJ);
            hashMap.put(com.mnt.impl.e.eK, com.mnt.impl.b.k.c(com.mnt.impl.e.eL + jSONObject.toString() + com.mnt.impl.e.eL));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return hashMap;
    }

    private JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(f4024a, 1);
            jSONObject.put(f4025b, String.valueOf(System.currentTimeMillis()));
            jSONObject.put(c, com.mnt.impl.b.h.j(this.L));
            jSONObject.put(d, com.mnt.impl.b.h.g(this.L));
            jSONObject.put(e, com.mnt.impl.b.k.j(this.L));
            jSONObject.put(f, com.mnt.a.a.k(this.L));
            jSONObject.put(g, com.mnt.a.a.a(this.L));
            jSONObject.put(h, com.mnt.a.a.b(this.L));
            jSONObject.put(i, com.mnt.a.a.e());
            jSONObject.put(j, Build.VERSION.RELEASE);
            jSONObject.put(k, String.valueOf(Build.VERSION.SDK_INT));
            jSONObject.put(m, String.valueOf(com.mnt.a.a.i(this.L)));
            jSONObject.put(n, com.mnt.a.a.h(this.L));
            jSONObject.put(l, com.mnt.a.a.f(this.L));
            jSONObject.put(o, com.mnt.impl.b.j.f3950a);
            jSONObject.put(p, 128);
            jSONObject.put(q, com.mnt.a.a.e(this.L));
            jSONObject.put(r, com.mnt.a.a.c(this.L));
            jSONObject.put(s, String.valueOf(com.mnt.a.a.b()));
            jSONObject.put(t, com.mnt.a.a.g(this.L));
            jSONObject.put(u, com.mnt.a.a.j(this.L));
            jSONObject.put(v, com.mnt.a.a.d());
            jSONObject.put(w, com.mnt.a.a.c());
            jSONObject.put(y, com.mnt.a.a.a());
            jSONObject.put(x, com.mnt.a.a.h());
            jSONObject.put(E, com.mnt.impl.d.a() ? 1 : 0);
            jSONObject.put(D, com.mnt.impl.b.k.a(this.L, com.mnt.impl.b.k.f3952a) ? 1 : 0);
            jSONObject.put(G, com.mnt.impl.b.k.d(this.L));
            jSONObject.put(B, this.M);
            jSONObject.put(C, com.mnt.impl.e.eM);
            jSONObject.put(z, com.mnt.impl.b.k.k(this.L));
            com.mnt.impl.j.b a2 = com.mnt.impl.j.d.b(this.L).a();
            if (a2.f4072a) {
                jSONObject.put(A, a2.d);
            }
            jSONObject.put(J, 2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }
}
