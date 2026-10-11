package com.mnt.impl.f;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.mnt.MntConfig;
import java.io.File;
import java.io.FileFilter;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class m implements FileFilter, Runnable {
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
    private static Long L;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f4022b;
    private static final String c;
    private static final String d;
    private static final String e;
    private static final String f;
    private static final String g;
    private static final String h;
    private static final String i;
    private static final String j;
    private static final String k;
    private static final String l;
    private static final String m;
    private static final String n;
    private static final String o;
    private static final String p;
    private static final String q;
    private static final String r;
    private static final String s;
    private static final String t;
    private static final String u;
    private static final String v;
    private static final String w;
    private static final String x;
    private static final String y;
    private static final String z;

    /* renamed from: a, reason: collision with root package name */
    private Context f4023a;

    static {
        String str = com.mnt.impl.e.eN;
        String str2 = com.mnt.impl.e.eO;
        Pattern.compile(com.mnt.impl.e.eP);
        f4022b = false;
        c = com.mnt.impl.e.eQ;
        d = com.mnt.impl.e.eR;
        e = com.mnt.impl.e.eS;
        f = com.mnt.impl.e.eT;
        g = com.mnt.impl.e.eU;
        h = com.mnt.impl.e.eV;
        i = com.mnt.impl.e.eW;
        j = com.mnt.impl.e.eX;
        k = com.mnt.impl.e.eY;
        l = com.mnt.impl.e.eZ;
        m = com.mnt.impl.e.fa;
        n = com.mnt.impl.e.fb;
        o = com.mnt.impl.e.fc;
        p = com.mnt.impl.e.fd;
        q = com.mnt.impl.e.fe;
        r = com.mnt.impl.e.ff;
        s = com.mnt.impl.e.fg;
        t = com.mnt.impl.e.fh;
        u = com.mnt.impl.e.fi;
        v = com.mnt.impl.e.fj;
        w = com.mnt.impl.e.fk;
        x = com.mnt.impl.e.fl;
        y = com.mnt.impl.e.fm;
        z = com.mnt.impl.e.fn;
        A = com.mnt.impl.e.fo;
        B = com.mnt.impl.e.fp;
        C = com.mnt.impl.e.fq;
        D = com.mnt.impl.e.fr;
        E = com.mnt.impl.e.fs;
        F = com.mnt.impl.e.ft;
        G = com.mnt.impl.e.fu;
        H = com.mnt.impl.e.fv;
        I = com.mnt.impl.e.fw;
        J = com.mnt.impl.e.fx;
        K = com.mnt.impl.e.fy;
        L = null;
    }

    private m(Context context) {
        this.f4023a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (com.mnt.a.a.d(this.f4023a)) {
            try {
                a(c);
            } catch (Throwable th) {
            }
            f4022b = false;
        }
    }

    private JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            String f2 = com.mnt.a.a.f(this.f4023a);
            String str = MntConfig.SDK_NAME;
            jSONObject.put(d, 1);
            jSONObject.put(e, String.valueOf(System.currentTimeMillis()));
            jSONObject.put(f, 128);
            jSONObject.put(j, str);
            jSONObject.put(w, com.mnt.impl.b.j.f3950a);
            jSONObject.put(i, f2);
            jSONObject.put(g, com.mnt.impl.b.h.j(this.f4023a));
            jSONObject.put(h, com.mnt.impl.b.h.g(this.f4023a));
            jSONObject.put(l, 0);
            jSONObject.put(k, com.mnt.a.a.a(this.f4023a));
            jSONObject.put(m, com.mnt.a.a.b(this.f4023a));
            jSONObject.put(n, com.mnt.a.a.e());
            jSONObject.put(o, com.mnt.a.a.e(this.f4023a));
            jSONObject.put(r, com.mnt.a.a.a());
            jSONObject.put(s, new StringBuilder().append(com.mnt.a.a.b()).toString());
            jSONObject.put(t, com.mnt.a.a.d());
            jSONObject.put(u, Runtime.getRuntime().availableProcessors());
            jSONObject.put(v, com.mnt.a.a.c(this.f4023a));
            jSONObject.put(x, com.mnt.a.a.k(this.f4023a));
            jSONObject.put(z, String.valueOf(com.mnt.a.a.i(this.f4023a)));
            jSONObject.put(A, com.mnt.a.a.h(this.f4023a));
            jSONObject.put(B, com.mnt.impl.b.k.a(this.f4023a, com.mnt.impl.b.k.f3952a) ? 1 : 0);
            jSONObject.put(y, com.mnt.impl.d.a() ? 1 : 0);
            jSONObject.put(C, com.mnt.impl.b.k.d(this.f4023a));
            jSONObject.put(K, com.mnt.impl.b.k.g(this.f4023a) ? 1 : 0);
            jSONObject.put(H, b(this.f4023a));
            jSONObject.put(D, URLEncoder.encode(com.mnt.impl.b.k.j(this.f4023a), com.mnt.impl.e.fz));
            jSONObject.put(p, Build.VERSION.RELEASE);
            jSONObject.put(q, new StringBuilder().append(Build.VERSION.SDK_INT).toString());
            jSONObject.put(E, 0);
            jSONObject.put(F, com.mnt.a.a.g(this.f4023a));
            jSONObject.put(G, com.mnt.a.a.h());
            jSONObject.put(I, str);
            jSONObject.put(J, 128);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    private Map<String, String> b() {
        HashMap hashMap = new HashMap();
        try {
            String jSONObject = a().toString();
            String a2 = com.mnt.impl.i.a.b.a(jSONObject.getBytes(com.mnt.impl.e.fA), com.mnt.impl.e.fB);
            String a3 = !TextUtils.isEmpty(a2) ? com.mnt.impl.b.k.a(a2.getBytes()) : jSONObject;
            String c2 = com.mnt.impl.b.k.c(com.mnt.impl.e.fC + jSONObject + com.mnt.impl.e.fC);
            hashMap.put(com.mnt.impl.e.fD, a3);
            hashMap.put(com.mnt.impl.e.fE, com.mnt.impl.e.fF);
            hashMap.put(com.mnt.impl.e.fG, c2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return hashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x01b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.io.File a(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mnt.impl.f.m.a(java.lang.String):java.io.File");
    }

    private static boolean c() {
        try {
            return Class.forName(com.mnt.impl.e.fS).getDeclaredField(com.mnt.impl.e.fT).getBoolean(null);
        } catch (Exception e2) {
            return true;
        }
    }

    private void d() {
        for (File file : com.mnt.a.a.o(this.f4023a).listFiles(this)) {
            file.delete();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
    
        if (r0 == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void a(android.content.Context r7) {
        /*
            r0 = 1
            java.lang.Class<com.mnt.impl.f.m> r1 = com.mnt.impl.f.m.class
            monitor-enter(r1)
            boolean r2 = com.mnt.impl.f.m.f4022b     // Catch: java.lang.Throwable -> L69
            if (r2 != 0) goto L53
            boolean r2 = com.mnt.a.a.d(r7)     // Catch: java.lang.Throwable -> L69
            if (r2 == 0) goto L53
            java.lang.Long r2 = com.mnt.impl.f.m.L     // Catch: java.lang.Throwable -> L69
            if (r2 != 0) goto L1c
            long r2 = com.mnt.a.a.m(r7)     // Catch: java.lang.Throwable -> L69
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L69
            com.mnt.impl.f.m.L = r2     // Catch: java.lang.Throwable -> L69
        L1c:
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L69
            java.lang.Long r4 = com.mnt.impl.f.m.L     // Catch: java.lang.Throwable -> L69
            long r4 = r4.longValue()     // Catch: java.lang.Throwable -> L69
            long r2 = r2 - r4
            android.content.SharedPreferences r4 = com.mnt.a.a.n(r7)     // Catch: java.lang.Throwable -> L69
            java.lang.String r5 = com.mnt.impl.e.fX     // Catch: java.lang.Throwable -> L69
            r6 = 8
            int r4 = r4.getInt(r5, r6)     // Catch: java.lang.Throwable -> L69
            int r4 = r4 * 60
            int r4 = r4 * 60
            int r4 = r4 * 1000
            long r4 = (long) r4     // Catch: java.lang.Throwable -> L69
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 <= 0) goto L67
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L69
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L69
            com.mnt.impl.f.m.L = r2     // Catch: java.lang.Throwable -> L69
            java.lang.Long r2 = com.mnt.impl.f.m.L     // Catch: java.lang.Throwable -> L69
            long r2 = r2.longValue()     // Catch: java.lang.Throwable -> L69
            com.mnt.a.a.a(r7, r2)     // Catch: java.lang.Throwable -> L69
        L51:
            if (r0 != 0) goto L56
        L53:
            r0 = 1
            com.mnt.impl.f.m.f4022b = r0     // Catch: java.lang.Throwable -> L69
        L56:
            java.lang.Thread r0 = new java.lang.Thread     // Catch: java.lang.Throwable -> L69
            com.mnt.impl.f.m r2 = new com.mnt.impl.f.m     // Catch: java.lang.Throwable -> L69
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L69
            java.lang.String r3 = com.mnt.impl.e.fU     // Catch: java.lang.Throwable -> L69
            r0.<init>(r2, r3)     // Catch: java.lang.Throwable -> L69
            r0.start()     // Catch: java.lang.Throwable -> L69
            monitor-exit(r1)
            return
        L67:
            r0 = 0
            goto L51
        L69:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mnt.impl.f.m.a(android.content.Context):void");
    }

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        String name = file.getName();
        if (name.contains(com.mnt.a.a.l(this.f4023a))) {
            return false;
        }
        return name.endsWith(com.mnt.impl.e.fV);
    }

    public static long b(Context context) {
        return com.mnt.a.a.n(context).getLong(com.mnt.impl.e.fZ, 0L);
    }
}
