package com.mnt.impl.j;

import android.content.Context;
import com.mnt.impl.b.h;
import com.mnt.impl.j.f;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    private static d f4076b;

    /* renamed from: a, reason: collision with root package name */
    private Context f4077a;
    private com.mnt.impl.j.b c;
    private f.a d = new e(this);

    static {
        String str = com.mnt.impl.e.iz;
    }

    private d(Context context) {
        this.f4077a = context.getApplicationContext();
    }

    public static void a(Context context) {
        if (f4076b == null) {
            f4076b = new d(context);
            f a2 = f.a(context);
            a2.f4083b.add(f4076b.d);
        }
    }

    public static synchronized d b(Context context) {
        d dVar;
        synchronized (d.class) {
            a(context);
            dVar = f4076b;
        }
        return dVar;
    }

    class b implements com.mnt.impl.f.a {
        private b() {
        }

        /* synthetic */ b(d dVar, byte b2) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
        @Override // com.mnt.impl.f.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(java.lang.String r9) {
            /*
                r8 = this;
                r6 = 200(0xc8, float:2.8E-43)
                r0 = 0
                r1 = 0
                org.json.JSONObject r3 = new org.json.JSONObject
                r3.<init>()
                org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L87
                r2.<init>(r9)     // Catch: java.lang.Throwable -> L87
                java.lang.String r4 = com.mnt.impl.e.iA     // Catch: java.lang.Throwable -> L87
                org.json.JSONObject r4 = r2.optJSONObject(r4)     // Catch: java.lang.Throwable -> L87
                java.lang.String r5 = com.mnt.impl.e.iB     // Catch: java.lang.Throwable -> L87
                java.lang.String r1 = r2.optString(r5)     // Catch: java.lang.Throwable -> L87
                if (r4 == 0) goto L98
                java.lang.String r0 = com.mnt.impl.e.iC     // Catch: java.lang.Throwable -> L8f
                int r2 = r4.optInt(r0)     // Catch: java.lang.Throwable -> L8f
                java.lang.String r0 = com.mnt.impl.e.iD     // Catch: java.lang.Throwable -> L8f
                int r0 = r4.optInt(r0)     // Catch: java.lang.Throwable -> L8f
            L28:
                boolean r4 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L8f
                if (r4 != 0) goto L30
                if (r2 == r6) goto L31
            L30:
                return
            L31:
                r2 = 1
                if (r0 != r2) goto L38
                java.lang.String r1 = com.mnt.impl.b.k.h(r1)     // Catch: java.lang.Throwable -> L8f
            L38:
                r2 = 2
                if (r0 != r2) goto L96
                java.lang.String r1 = com.mnt.impl.b.k.h(r1)     // Catch: java.lang.Throwable -> L8f
                java.lang.String r0 = com.mnt.impl.e.iE     // Catch: java.lang.Throwable -> L8f
                java.lang.String r0 = com.mnt.impl.i.a.b.b(r1, r0)     // Catch: java.lang.Throwable -> L8f
                if (r0 == 0) goto L30
            L47:
                java.lang.String r1 = com.mnt.impl.e.iF     // Catch: java.lang.Throwable -> L94
                r2 = 200(0xc8, float:2.8E-43)
                r3.put(r1, r2)     // Catch: java.lang.Throwable -> L94
                java.lang.String r1 = com.mnt.impl.e.iG     // Catch: java.lang.Throwable -> L94
                org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L94
                r2.<init>(r0)     // Catch: java.lang.Throwable -> L94
                r3.put(r1, r2)     // Catch: java.lang.Throwable -> L94
                com.mnt.impl.j.d r1 = com.mnt.impl.j.d.this     // Catch: java.lang.Throwable -> L94
                android.content.Context r1 = com.mnt.impl.j.d.a(r1)     // Catch: java.lang.Throwable -> L94
                java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> L94
                com.mnt.impl.b.h.b(r1, r2)     // Catch: java.lang.Throwable -> L94
                com.mnt.impl.j.d r1 = com.mnt.impl.j.d.this     // Catch: java.lang.Throwable -> L94
                android.content.Context r1 = com.mnt.impl.j.d.a(r1)     // Catch: java.lang.Throwable -> L94
                long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L94
                com.mnt.impl.b.h.b(r1, r4)     // Catch: java.lang.Throwable -> L94
            L72:
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 != 0) goto L30
                com.mnt.impl.j.d r0 = com.mnt.impl.j.d.this
                com.mnt.impl.j.b r1 = new com.mnt.impl.j.b
                java.lang.String r2 = r3.toString()
                r1.<init>(r2)
                com.mnt.impl.j.d.a(r0, r1)
                goto L30
            L87:
                r0 = move-exception
                r7 = r0
                r0 = r1
                r1 = r7
            L8b:
                r1.printStackTrace()
                goto L72
            L8f:
                r0 = move-exception
                r7 = r0
                r0 = r1
                r1 = r7
                goto L8b
            L94:
                r1 = move-exception
                goto L8b
            L96:
                r0 = r1
                goto L47
            L98:
                r2 = r0
                goto L28
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mnt.impl.j.d.b.a(java.lang.String):void");
        }

        @Override // com.mnt.impl.f.a
        public final void a() {
        }
    }

    class a implements com.mnt.impl.f.f {

        /* renamed from: a, reason: collision with root package name */
        private String f4078a;

        /* renamed from: b, reason: collision with root package name */
        private Map<String, String> f4079b;

        public a(String str, Map<String, String> map) {
            this.f4078a = str;
            this.f4079b = map;
        }

        @Override // com.mnt.impl.f.f
        public final String a() {
            return this.f4078a;
        }

        @Override // com.mnt.impl.f.f
        public final Map<String, String> b() {
            return this.f4079b;
        }
    }

    public final com.mnt.impl.j.b a() {
        if (this.c == null) {
            this.c = new com.mnt.impl.j.b(h.m(this.f4077a));
        }
        return this.c;
    }
}
