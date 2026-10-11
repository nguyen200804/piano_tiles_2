package com.mnt.impl.b;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.mnt.impl.f.m;
import com.mnt.impl.f.n;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class i implements com.mnt.impl.f.f {
    private static final String A;
    private static final String B;
    private static final String C;
    private static final String D;
    private static final String E;
    private static final String F;
    private static final String G;
    private static final String H;
    private static final String I;
    private static final String J;
    private static final String K;
    private static final String L;
    private static final String d = com.mnt.impl.e.mp;
    private static final String e = com.mnt.impl.e.mq;
    private static final String f = com.mnt.impl.e.mr;
    private static final String g = com.mnt.impl.e.ms;
    private static final String h = com.mnt.impl.e.mt;
    private static final String i = com.mnt.impl.e.mu;
    private static final String j = com.mnt.impl.e.mv;
    private static final String k = com.mnt.impl.e.mw;
    private static final String l = com.mnt.impl.e.mx;
    private static final String m = com.mnt.impl.e.my;
    private static final String n = com.mnt.impl.e.mz;
    private static final String o = com.mnt.impl.e.mA;
    private static final String p = com.mnt.impl.e.mB;
    private static final String q = com.mnt.impl.e.mC;
    private static final String r = com.mnt.impl.e.mD;
    private static final String s = com.mnt.impl.e.mE;
    private static final String t = com.mnt.impl.e.mF;
    private static final String u = com.mnt.impl.e.mG;
    private static final String v = com.mnt.impl.e.mH;
    private static final String w = com.mnt.impl.e.mI;
    private static final String x = com.mnt.impl.e.mJ;
    private static final String y = com.mnt.impl.e.mK;
    private static final String z;
    private Context M;

    /* renamed from: a, reason: collision with root package name */
    public a f3946a;

    /* renamed from: b, reason: collision with root package name */
    public String f3947b;
    public String c;

    static {
        String str = com.mnt.impl.e.mL;
        String str2 = com.mnt.impl.e.mM;
        z = com.mnt.impl.e.mN;
        A = com.mnt.impl.e.mO;
        B = com.mnt.impl.e.mP;
        C = com.mnt.impl.e.mQ;
        D = com.mnt.impl.e.mR;
        String str3 = com.mnt.impl.e.mS;
        E = com.mnt.impl.e.mT;
        String str4 = com.mnt.impl.e.mU;
        F = com.mnt.impl.e.mV;
        String str5 = com.mnt.impl.e.mW;
        G = com.mnt.impl.e.mX;
        H = com.mnt.impl.e.mY;
        I = com.mnt.impl.e.mZ;
        String str6 = com.mnt.impl.e.na;
        J = com.mnt.impl.e.nb;
        String str7 = com.mnt.impl.e.nc;
        K = com.mnt.impl.e.nd;
        L = com.mnt.impl.e.ne;
    }

    public i(a aVar, Context context) {
        this.f3946a = aVar;
        this.M = context;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {
        public String c;
        private static a d = new a("NATIVE", 0, com.mnt.impl.e.nf);
        private static a e = new a("REALTIME", 1, com.mnt.impl.e.ng);
        private static a f = new a("OEM", 2, com.mnt.impl.e.nh);

        /* renamed from: a, reason: collision with root package name */
        public static final a f3948a = new a("SCENECONFIG", 3, com.mnt.impl.e.ni);
        private static a g = new a("LOCALRECOMEND", 4, com.mnt.impl.e.nj);

        /* renamed from: b, reason: collision with root package name */
        public static final a f3949b = new a("NATIVE_NEW", 5, com.mnt.impl.e.nk);

        static {
            a[] aVarArr = {d, e, f, f3948a, g, f3949b};
        }

        private a(String str, int i, String str2) {
            this.c = str2;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.c;
        }
    }

    @Override // com.mnt.impl.f.f
    public final String a() {
        return this.f3946a.c;
    }

    @Override // com.mnt.impl.f.f
    public final Map<String, String> b() {
        HashMap hashMap = new HashMap();
        hashMap.put(d, "8");
        hashMap.put(e, String.valueOf(System.currentTimeMillis()));
        hashMap.put(f, h.j(this.M));
        hashMap.put(g, h.g(this.M));
        hashMap.put(h, k.j(this.M));
        hashMap.put(i, com.mnt.a.a.k(this.M));
        hashMap.put(j, com.mnt.a.a.a(this.M));
        hashMap.put(k, com.mnt.a.a.b(this.M));
        hashMap.put(l, com.mnt.a.a.e());
        hashMap.put(m, Build.VERSION.RELEASE);
        hashMap.put(n, String.valueOf(Build.VERSION.SDK_INT));
        hashMap.put(p, String.valueOf(com.mnt.a.a.i(this.M)));
        hashMap.put(q, com.mnt.a.a.h(this.M));
        hashMap.put(o, com.mnt.a.a.f(this.M));
        hashMap.put(r, j.f3950a);
        hashMap.put(s, "128");
        hashMap.put(t, com.mnt.a.a.e(this.M));
        hashMap.put(u, com.mnt.a.a.c(this.M));
        hashMap.put(v, String.valueOf(com.mnt.a.a.b()));
        hashMap.put(w, String.valueOf(com.mnt.a.a.g(this.M)));
        hashMap.put(x, com.mnt.a.a.j(this.M));
        hashMap.put(y, com.mnt.a.a.d());
        hashMap.put(z, String.valueOf(com.mnt.a.a.c()));
        hashMap.put(A, com.mnt.a.a.a());
        hashMap.put(B, com.mnt.a.a.h());
        hashMap.put(C, String.valueOf(com.mnt.impl.d.a()));
        hashMap.put(D, String.valueOf(k.a(this.M, k.f3952a)));
        hashMap.put(F, k.d(this.M));
        if (!TextUtils.isEmpty(this.c)) {
            hashMap.put(I, this.c);
        }
        if (this.f3946a != a.f3948a) {
            hashMap.put(H, String.valueOf(h.h(this.M)));
            hashMap.put(E, com.mnt.impl.e.e.a());
        }
        if (!TextUtils.isEmpty(null)) {
            hashMap.put(K, null);
        }
        if (!TextUtils.isEmpty(this.f3947b)) {
            hashMap.put(G, this.f3947b);
        }
        if (!TextUtils.isEmpty(null)) {
            hashMap.put(J, null);
        }
        com.mnt.impl.j.b a2 = com.mnt.impl.j.d.b(this.M).a();
        if (a2.f4072a) {
            hashMap.put(L, a2.d);
        }
        return hashMap;
    }

    public final Map<String, String> c() {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.mnt.impl.e.nl, d());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(com.mnt.impl.e.nm, h.i(this.M));
            jSONObject2.put(com.mnt.impl.e.nn, h.h(this.M));
            jSONObject2.put(com.mnt.impl.e.no, 0);
            jSONObject2.put(com.mnt.impl.e.np, com.mnt.impl.e.e.a());
            jSONObject.put(com.mnt.impl.e.nq, jSONObject2);
            String a2 = com.mnt.impl.i.a.b.a(jSONObject.toString(), com.mnt.impl.e.nr);
            if (a2 != null) {
                a2 = k.a(a2.getBytes());
            }
            hashMap.put(com.mnt.impl.e.ns, a2);
            hashMap.put(com.mnt.impl.e.nt, com.mnt.impl.e.nu);
            hashMap.put(com.mnt.impl.e.nv, k.c(com.mnt.impl.e.nw + jSONObject.toString() + com.mnt.impl.e.nw));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return hashMap;
    }

    private JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(n.f4024a, 8);
            jSONObject.put(n.f4025b, System.currentTimeMillis());
            jSONObject.put(n.c, h.j(this.M));
            jSONObject.put(n.d, h.g(this.M));
            jSONObject.put(n.e, URLEncoder.encode(k.j(this.M)));
            jSONObject.put(n.f, com.mnt.a.a.k(this.M));
            jSONObject.put(n.g, com.mnt.a.a.a(this.M));
            jSONObject.put(n.h, com.mnt.a.a.b(this.M));
            jSONObject.put(n.i, com.mnt.a.a.e());
            jSONObject.put(n.j, Build.VERSION.RELEASE);
            jSONObject.put(n.k, Build.VERSION.SDK_INT);
            jSONObject.put(n.m, com.mnt.a.a.i(this.M));
            jSONObject.put(n.n, com.mnt.a.a.h(this.M));
            jSONObject.put(n.l, com.mnt.a.a.f(this.M));
            jSONObject.put(n.o, j.f3950a);
            jSONObject.put(n.p, 128);
            jSONObject.put(n.q, com.mnt.a.a.e(this.M));
            jSONObject.put(n.r, com.mnt.a.a.c(this.M));
            jSONObject.put(n.s, com.mnt.a.a.b());
            jSONObject.put(n.t, com.mnt.a.a.g(this.M));
            jSONObject.put(n.u, com.mnt.a.a.j(this.M));
            jSONObject.put(n.v, com.mnt.a.a.d());
            jSONObject.put(n.w, com.mnt.a.a.c());
            jSONObject.put(n.y, com.mnt.a.a.a());
            jSONObject.put(n.x, com.mnt.a.a.h());
            jSONObject.put(n.E, com.mnt.impl.d.a() ? 1 : 0);
            jSONObject.put(n.D, k.a(this.M, k.f3952a) ? 1 : 0);
            jSONObject.put(n.G, k.d(this.M));
            jSONObject.put(n.B, (Object) null);
            jSONObject.put(n.C, com.mnt.impl.e.nx);
            jSONObject.put(n.z, k.k(this.M));
            if (!TextUtils.isEmpty(this.c)) {
                jSONObject.put(n.F, this.c);
                jSONObject.put(com.mnt.impl.e.ny, k.h(this.M, this.c));
            }
            com.mnt.impl.j.b a2 = com.mnt.impl.j.d.b(this.M).a();
            if (a2.f4072a) {
                jSONObject.put(n.A, a2.d);
            }
            jSONObject.put(com.mnt.impl.e.nz, m.b(this.M));
            jSONObject.put(com.mnt.impl.e.nA, k.g(this.M, this.c));
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }
}
