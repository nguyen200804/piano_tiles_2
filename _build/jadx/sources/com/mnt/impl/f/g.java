package com.mnt.impl.f;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private static final String f4011a;

    /* renamed from: b, reason: collision with root package name */
    private Context f4012b;
    private String c;
    private String d;
    private int e;
    private com.mnt.impl.j.b f;

    static {
        String str = com.mnt.impl.e.gO;
        f4011a = com.mnt.impl.e.gP;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        int i;
        int i2;
        String str = null;
        this.c = com.mnt.impl.b.h.j(this.f4012b);
        if (!TextUtils.isEmpty(this.c) && !TextUtils.isEmpty(this.d)) {
            synchronized (this.d.intern()) {
                try {
                    Map<String, String> a2 = a();
                    if (this.e == 0) {
                        str = com.mnt.impl.b.h.d(this.f4012b).getString(this.d, null);
                        com.mnt.impl.b.h.a(this.f4012b, this.d);
                    }
                    if (TextUtils.isEmpty(str)) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(com.mnt.impl.i.b.c.c, this.d);
                        contentValues.put(com.mnt.impl.i.b.c.g, Long.valueOf(System.currentTimeMillis()));
                        String a3 = new e().a(f4011a, a2, com.mnt.impl.b.k.j(this.f4012b));
                        contentValues.put(com.mnt.impl.i.b.c.h, Long.valueOf(System.currentTimeMillis()));
                        JSONObject jSONObject = new JSONObject(a3);
                        JSONObject optJSONObject = jSONObject.optJSONObject(com.mnt.impl.e.gQ);
                        str = jSONObject.optString(com.mnt.impl.e.gR);
                        if (optJSONObject != null) {
                            i2 = optJSONObject.optInt(com.mnt.impl.e.gS);
                            i = optJSONObject.optInt(com.mnt.impl.e.gT);
                            j = optJSONObject.optLong(com.mnt.impl.e.gU);
                        } else {
                            j = 0;
                            i = 0;
                            i2 = 0;
                        }
                        contentValues.put(com.mnt.impl.i.b.c.i, String.valueOf(j));
                        com.mnt.impl.i.b.a.a(this.f4012b).a(contentValues);
                        if (!TextUtils.isEmpty(str) && i2 == 200) {
                            if (i == 1) {
                                str = com.mnt.impl.b.k.h(str);
                            }
                            if (i == 2) {
                                str = com.mnt.impl.i.a.b.b(com.mnt.impl.b.k.h(str), com.mnt.impl.e.gV);
                            }
                        } else {
                            return;
                        }
                    }
                } catch (Exception e) {
                }
                if (!TextUtils.isEmpty(str)) {
                    if (this.e == 1) {
                        com.mnt.impl.b.h.a(this.f4012b, this.d, str);
                    }
                    JSONArray jSONArray = new JSONArray(str);
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        com.mnt.impl.e.f fVar = new com.mnt.impl.e.f(jSONArray.optJSONObject(i3));
                        if (!TextUtils.isEmpty(fVar.c)) {
                            switch (fVar.f3990b) {
                                case 0:
                                    if (this.e != 1) {
                                        new h(this.f4012b, fVar.c).c();
                                        break;
                                    } else {
                                        break;
                                    }
                                case 1:
                                    if (TextUtils.isEmpty(fVar.d)) {
                                        break;
                                    } else {
                                        ContentValues contentValues2 = new ContentValues();
                                        contentValues2.put(com.mnt.impl.i.b.c.c, this.d);
                                        contentValues2.put(com.mnt.impl.i.b.c.j, com.mnt.impl.e.gW);
                                        contentValues2.put(com.mnt.impl.i.b.c.d, fVar.e);
                                        com.mnt.impl.i.b.a.a(this.f4012b).a(contentValues2);
                                        com.mnt.impl.e.a a4 = com.mnt.impl.b.a.a(this.f4012b).a(fVar.d);
                                        if (((a4 == null || a4.a()) && !com.mnt.impl.b.h.c(this.f4012b, this.d)) || this.f.b()) {
                                            if (fVar.f == 200 && this.e == 0) {
                                                String string = com.mnt.impl.b.h.d(this.f4012b).getString(c.f4005a + this.d, null);
                                                if (TextUtils.isEmpty(string)) {
                                                    break;
                                                } else {
                                                    l.a(this.f4012b, this.d, new com.mnt.impl.e.b(string).c);
                                                    com.mnt.impl.b.h.a(this.f4012b, c.f4005a + this.d);
                                                    break;
                                                }
                                            } else if (fVar.f != 300 || this.e != 1) {
                                                long currentTimeMillis = System.currentTimeMillis();
                                                if (this.e == 1 && this.f.f4072a && this.f.k > 0) {
                                                    try {
                                                        Thread.sleep(this.f.k);
                                                    } catch (InterruptedException e2) {
                                                        e2.printStackTrace();
                                                    }
                                                }
                                                long currentTimeMillis2 = System.currentTimeMillis();
                                                ContentValues contentValues3 = new ContentValues();
                                                contentValues3.put(com.mnt.impl.i.b.c.c, this.d);
                                                contentValues3.put(com.mnt.impl.i.b.c.e, String.valueOf(this.e + 1));
                                                contentValues3.put(com.mnt.impl.i.b.c.p, Long.valueOf(currentTimeMillis2 - currentTimeMillis));
                                                com.mnt.impl.i.b.a.a(this.f4012b).a(contentValues3);
                                                com.mnt.impl.e.b bVar = new com.mnt.impl.e.b(fVar.e, fVar.d, fVar.c, 0L, 0);
                                                bVar.f = true;
                                                h.a(this.f4012b, bVar, new c(this.f4012b, this.d, this.e), false, fVar.f3989a);
                                                break;
                                            } else {
                                                break;
                                            }
                                        } else {
                                            break;
                                        }
                                    }
                            }
                        }
                    }
                }
            }
        }
    }

    private Map<String, String> a() {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.mnt.impl.e.gX, b());
            String a2 = com.mnt.impl.i.a.b.a(jSONObject.toString().getBytes(com.mnt.impl.e.gY), com.mnt.impl.e.gZ);
            String jSONObject2 = jSONObject.toString();
            if (!TextUtils.isEmpty(a2)) {
                jSONObject2 = com.mnt.impl.b.k.a(a2.getBytes());
            }
            String c = com.mnt.impl.b.k.c(com.mnt.impl.e.ha + jSONObject.toString() + com.mnt.impl.e.ha);
            hashMap.put(com.mnt.impl.e.hb, jSONObject2);
            hashMap.put(com.mnt.impl.e.hc, com.mnt.impl.e.hd);
            hashMap.put(com.mnt.impl.e.he, c);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return hashMap;
    }

    private JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (TextUtils.isEmpty(this.d)) {
                this.d = "";
            }
            jSONObject.put(com.mnt.impl.e.hf, this.c);
            jSONObject.put(com.mnt.impl.e.hg, this.d);
            jSONObject.put(com.mnt.impl.e.hh, System.currentTimeMillis());
            jSONObject.put(com.mnt.impl.e.hi, com.mnt.a.a.b(this.f4012b));
            jSONObject.put(com.mnt.impl.e.hj, com.mnt.impl.b.h.g(this.f4012b));
            jSONObject.put(com.mnt.impl.e.hk, com.mnt.a.a.a(this.f4012b));
            jSONObject.put(com.mnt.impl.e.hl, com.mnt.a.a.k(this.f4012b));
            jSONObject.put(com.mnt.impl.e.hm, com.mnt.impl.b.j.f3950a);
            jSONObject.put(com.mnt.impl.e.hn, "128");
            jSONObject.put(com.mnt.impl.e.ho, com.mnt.impl.e.hp);
            jSONObject.put(com.mnt.impl.e.hq, com.mnt.impl.d.a() ? 1 : 0);
            jSONObject.put(com.mnt.impl.e.hr, com.mnt.impl.b.k.a(this.f4012b) ? 1 : 0);
            jSONObject.put(com.mnt.impl.e.hs, 0);
            jSONObject.put(com.mnt.impl.e.ht, com.mnt.a.a.e());
            jSONObject.put(com.mnt.impl.e.hu, com.mnt.impl.b.k.d(this.f4012b, this.d));
            jSONObject.put(com.mnt.impl.e.hv, com.mnt.impl.b.k.e(this.f4012b, this.d));
            jSONObject.put(com.mnt.impl.e.hw, com.mnt.impl.e.hx);
            jSONObject.put(com.mnt.impl.e.hy, this.e);
            jSONObject.put(com.mnt.impl.e.hz, com.mnt.a.a.f(this.f4012b));
            jSONObject.put(com.mnt.impl.e.hA, com.mnt.impl.b.k.k(this.f4012b));
            com.mnt.impl.j.b a2 = com.mnt.impl.j.d.b(this.f4012b).a();
            if (a2.f4072a) {
                jSONObject.put(com.mnt.impl.e.hB, a2.d);
            }
            jSONObject.put(com.mnt.impl.e.hC, m.b(this.f4012b));
            jSONObject.put(com.mnt.impl.e.hD, com.mnt.impl.b.k.g(this.f4012b, this.d));
            jSONObject.put(com.mnt.impl.e.hE, com.mnt.impl.b.k.h(this.f4012b, this.d));
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    public g(Context context, String str, int i) {
        this.f4012b = context;
        this.d = str;
        this.e = i;
        this.f = com.mnt.impl.j.d.b(context).a();
    }
}
