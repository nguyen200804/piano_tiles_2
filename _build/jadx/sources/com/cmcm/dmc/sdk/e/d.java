package com.cmcm.dmc.sdk.e;

import java.io.File;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static final d f718a = new d();

    /* renamed from: b, reason: collision with root package name */
    private static List<String> f719b;
    private boolean c = false;
    private com.cmcm.dmc.sdk.a.l d;
    private boolean e;
    private long f;
    private long g;

    public static d a() {
        return f718a;
    }

    private void a(String str) {
        com.cmcm.dmc.sdk.g.j.a().a(10, "action_flow", str);
    }

    private void b() {
        d();
        this.d = new com.cmcm.dmc.sdk.a.l();
        this.d.a(new Runnable() { // from class: com.cmcm.dmc.sdk.e.d.1
            @Override // java.lang.Runnable
            public void run() {
                d.this.e();
                d.this.g();
            }
        }, 60000L);
    }

    private void c() {
        this.d.b();
        e();
        h();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d() {
        /*
            r8 = this;
            r1 = 0
            r2 = 0
            com.cmcm.dmc.sdk.a.a r0 = r8.f()     // Catch: java.lang.Throwable -> L65 java.lang.Throwable -> L8e
            java.io.FileInputStream r5 = r0.c()     // Catch: java.lang.Throwable -> L65 java.lang.Throwable -> L8e
            java.io.ObjectInputStream r4 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L99 java.lang.Throwable -> La2
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L99 java.lang.Throwable -> La2
            long r0 = r4.readLong()     // Catch: java.lang.Throwable -> L9c java.lang.Throwable -> La5
            r8.f = r0     // Catch: java.lang.Throwable -> L9c java.lang.Throwable -> La5
            java.lang.Object r0 = r4.readObject()     // Catch: java.lang.Throwable -> L9c java.lang.Throwable -> La5
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L9c java.lang.Throwable -> La5
            com.cmcm.dmc.sdk.e.d.f719b = r0     // Catch: java.lang.Throwable -> L9c java.lang.Throwable -> La5
            long r0 = r4.readLong()     // Catch: java.lang.Throwable -> L9c java.lang.Throwable -> La5
            com.cmcm.dmc.sdk.a.q.a(r4)
            com.cmcm.dmc.sdk.a.q.a(r5)
        L28:
            java.util.List<java.lang.String> r2 = com.cmcm.dmc.sdk.e.d.f719b
            if (r2 == 0) goto L64
            org.json.JSONObject r2 = new org.json.JSONObject
            r2.<init>()
            java.lang.String r3 = "ts"
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L97
            r2.put(r3, r4)     // Catch: java.lang.Exception -> L97
            java.lang.String r3 = "start"
            java.lang.String r4 = ""
            r2.put(r3, r4)     // Catch: java.lang.Exception -> L97
            java.util.List<java.lang.String> r3 = com.cmcm.dmc.sdk.e.d.f719b     // Catch: java.lang.Exception -> L97
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L97
            r3.add(r2)     // Catch: java.lang.Exception -> L97
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Exception -> L97
            r2.<init>()     // Catch: java.lang.Exception -> L97
            java.lang.String r3 = "ts"
            r2.put(r3, r0)     // Catch: java.lang.Exception -> L97
            java.lang.String r0 = "end"
            java.lang.String r1 = ""
            r2.put(r0, r1)     // Catch: java.lang.Exception -> L97
            java.util.List<java.lang.String> r0 = com.cmcm.dmc.sdk.e.d.f719b     // Catch: java.lang.Exception -> L97
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Exception -> L97
            r0.add(r1)     // Catch: java.lang.Exception -> L97
        L64:
            return
        L65:
            r0 = move-exception
            r4 = r1
        L67:
            java.lang.String r5 = "action_flow"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La0
            r6.<init>()     // Catch: java.lang.Throwable -> La0
            java.lang.String r7 = "load failed : "
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Throwable -> La0
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> La0
            java.lang.StringBuilder r0 = r6.append(r0)     // Catch: java.lang.Throwable -> La0
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> La0
            com.cmcm.dmc.sdk.a.i.a(r5, r0)     // Catch: java.lang.Throwable -> La0
            r8.h()     // Catch: java.lang.Throwable -> La0
            com.cmcm.dmc.sdk.a.q.a(r1)
            com.cmcm.dmc.sdk.a.q.a(r4)
            r0 = r2
            goto L28
        L8e:
            r0 = move-exception
            r4 = r1
        L90:
            com.cmcm.dmc.sdk.a.q.a(r1)
            com.cmcm.dmc.sdk.a.q.a(r4)
            throw r0
        L97:
            r0 = move-exception
            goto L64
        L99:
            r0 = move-exception
            r4 = r5
            goto L90
        L9c:
            r0 = move-exception
            r1 = r4
            r4 = r5
            goto L90
        La0:
            r0 = move-exception
            goto L90
        La2:
            r0 = move-exception
            r4 = r5
            goto L67
        La5:
            r0 = move-exception
            r1 = r4
            r4 = r5
            goto L67
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.dmc.sdk.e.d.d():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        ObjectOutputStream objectOutputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        if (!this.e) {
            return;
        }
        com.cmcm.dmc.sdk.a.a f = f();
        try {
            fileOutputStream = f.b();
            try {
                objectOutputStream = new ObjectOutputStream(fileOutputStream);
            } catch (Throwable th) {
                th = th;
                objectOutputStream = null;
            }
            try {
                objectOutputStream.writeLong(this.f);
                objectOutputStream.writeObject(f719b);
                objectOutputStream.writeLong(this.g);
                objectOutputStream.flush();
                f.a(fileOutputStream);
                this.e = false;
                com.cmcm.dmc.sdk.a.q.a(objectOutputStream);
                com.cmcm.dmc.sdk.a.q.a(fileOutputStream);
            } catch (Throwable th2) {
                th = th2;
                com.cmcm.dmc.sdk.a.q.a(objectOutputStream);
                com.cmcm.dmc.sdk.a.q.a(fileOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream = null;
            fileOutputStream = null;
        }
    }

    private com.cmcm.dmc.sdk.a.a f() {
        return new com.cmcm.dmc.sdk.a.a(new File(com.cmcm.dmc.sdk.a.c.e(), "action_flow.dat"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        Long valueOf = Long.valueOf(System.currentTimeMillis());
        this.g = valueOf.longValue();
        if (f719b == null || f719b.isEmpty()) {
            return;
        }
        if (valueOf.longValue() >= this.f + 3600000 || f719b.size() > 1000) {
            f().a();
            try {
                a(f719b.toString());
            } catch (Exception e) {
                com.cmcm.dmc.sdk.a.i.a("ReceiverActionFlow", e.getMessage());
            }
            h();
        }
    }

    private void h() {
        this.e = false;
        this.f = System.currentTimeMillis();
        f719b = new ArrayList();
    }

    public void a(String str, String str2) {
        com.cmcm.dmc.sdk.a.i.a("ReceiverActionFlow", "接收到 action ： " + str + " data : " + str2);
        if (f719b == null || !this.c) {
            return;
        }
        Long valueOf = Long.valueOf(System.currentTimeMillis());
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ts", valueOf);
            jSONObject.put(str, str2);
            if (f719b == null) {
                return;
            }
            f719b.add(jSONObject.toString());
            this.e = true;
        } catch (JSONException e) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverActionFlow", e.getMessage());
        }
    }

    public void a(boolean z) {
        if (z != this.c) {
            this.c = z;
            com.cmcm.dmc.sdk.a.i.a("action_flow", "action_flow setEnable : " + z);
            if (z) {
                b();
            } else {
                c();
            }
        }
    }
}
