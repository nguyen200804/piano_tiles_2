package com.facebook.ads.internal.g;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.g.e;
import com.facebook.ads.internal.util.z;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g implements e.a, f {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2738a = g.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static g f2739b;
    private static double c;
    private static String d;
    private final e e;
    private final com.facebook.ads.internal.e.d f;
    private final Context g;

    protected g(Context context) {
        this.f = new com.facebook.ads.internal.e.d(context);
        this.e = new e(context, this);
        this.e.b();
        this.g = context;
        com.facebook.ads.internal.d.a.a(context).a();
    }

    public static g a(Context context) {
        if (f2739b == null) {
            Context applicationContext = context.getApplicationContext();
            synchronized (applicationContext) {
                if (f2739b == null) {
                    f2739b = new g(applicationContext);
                    com.facebook.ads.internal.f.g.a();
                    c = com.facebook.ads.internal.f.g.b();
                    d = com.facebook.ads.internal.f.g.c();
                }
            }
        }
        return f2739b;
    }

    private JSONObject a(int i) {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3;
        Cursor cursor4;
        JSONObject jSONObject;
        JSONArray a2;
        try {
            cursor2 = this.f.d();
            try {
                cursor = this.f.a(i);
            } catch (JSONException e) {
                cursor3 = null;
                cursor4 = cursor2;
            } catch (Throwable th) {
                th = th;
                cursor = null;
            }
        } catch (JSONException e2) {
            cursor3 = null;
            cursor4 = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            cursor2 = null;
        }
        try {
            if (cursor.getCount() > 0) {
                jSONObject = new JSONObject();
                jSONObject.put("tokens", a(cursor));
                jSONObject.put(Constants.VIDEO_TRACKING_EVENTS_KEY, c(cursor));
            } else {
                jSONObject = null;
            }
            if (com.facebook.ads.internal.j.f(this.g) && (a2 = com.facebook.ads.internal.util.o.a(this.g)) != null && a2.length() > 0) {
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                jSONObject.put("debug", a2);
            }
            if (cursor2 != null) {
                cursor2.close();
            }
            if (cursor == null) {
                return jSONObject;
            }
            cursor.close();
            return jSONObject;
        } catch (JSONException e3) {
            cursor3 = cursor;
            cursor4 = cursor2;
            if (cursor4 != null) {
                cursor4.close();
            }
            if (cursor3 != null) {
                cursor3.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
                cursor2.close();
            }
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private JSONObject a(Cursor cursor) {
        JSONObject jSONObject = new JSONObject();
        while (cursor.moveToNext()) {
            jSONObject.put(cursor.getString(0), cursor.getString(1));
        }
        return jSONObject;
    }

    private void a(final d dVar) {
        if (dVar.j()) {
            this.f.a(dVar, new com.facebook.ads.internal.e.a<String>() { // from class: com.facebook.ads.internal.g.g.1
                @Override // com.facebook.ads.internal.e.a
                public void a(int i, String str) {
                    super.a(i, str);
                    if (dVar instanceof c) {
                        return;
                    }
                    g.this.b(str);
                }

                @Override // com.facebook.ads.internal.e.a
                public void a(String str) {
                    super.a((AnonymousClass1) str);
                    if (dVar.i()) {
                        g.this.e.a();
                    } else {
                        g.this.e.b();
                    }
                }
            });
        } else {
            Log.e(f2738a, "Attempting to log an invalid " + dVar.b() + " event.");
        }
    }

    private JSONArray b(Cursor cursor) {
        JSONArray jSONArray = new JSONArray();
        cursor.moveToPosition(-1);
        while (cursor.moveToNext()) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(FacebookAdapter.KEY_ID, cursor.getString(com.facebook.ads.internal.e.c.f2684a.f2682a));
            jSONObject.put("token_id", cursor.getString(com.facebook.ads.internal.e.c.f2685b.f2682a));
            jSONObject.put(VastExtensionXmlManager.TYPE, cursor.getString(com.facebook.ads.internal.e.c.d.f2682a));
            jSONObject.put("time", com.facebook.ads.internal.util.g.a(cursor.getDouble(com.facebook.ads.internal.e.c.e.f2682a)));
            jSONObject.put("session_time", com.facebook.ads.internal.util.g.a(cursor.getDouble(com.facebook.ads.internal.e.c.f.f2682a)));
            jSONObject.put("session_id", cursor.getString(com.facebook.ads.internal.e.c.g.f2682a));
            String string = cursor.getString(com.facebook.ads.internal.e.c.h.f2682a);
            jSONObject.put("data", string != null ? new JSONObject(string) : new JSONObject());
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    private JSONArray c(Cursor cursor) {
        JSONArray jSONArray = new JSONArray();
        cursor.moveToPosition(-1);
        while (cursor.moveToNext()) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(FacebookAdapter.KEY_ID, cursor.getString(2));
            jSONObject.put("token_id", cursor.getString(0));
            jSONObject.put(VastExtensionXmlManager.TYPE, cursor.getString(4));
            jSONObject.put("time", com.facebook.ads.internal.util.g.a(cursor.getDouble(5)));
            jSONObject.put("session_time", com.facebook.ads.internal.util.g.a(cursor.getDouble(6)));
            jSONObject.put("session_id", cursor.getString(7));
            String string = cursor.getString(8);
            jSONObject.put("data", string != null ? new JSONObject(string) : new JSONObject());
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    private JSONObject d() {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3;
        Cursor cursor4;
        JSONObject jSONObject;
        JSONArray a2;
        try {
            cursor2 = this.f.f();
            try {
                cursor = this.f.e();
                try {
                    if (cursor2.getCount() <= 0 || cursor.getCount() <= 0) {
                        jSONObject = null;
                    } else {
                        jSONObject = new JSONObject();
                        jSONObject.put("tokens", a(cursor2));
                        jSONObject.put(Constants.VIDEO_TRACKING_EVENTS_KEY, b(cursor));
                    }
                    if (com.facebook.ads.internal.j.f(this.g) && (a2 = com.facebook.ads.internal.util.o.a(this.g)) != null && a2.length() > 0) {
                        if (jSONObject == null) {
                            jSONObject = new JSONObject();
                        }
                        jSONObject.put("debug", a2);
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (cursor == null) {
                        return jSONObject;
                    }
                    cursor.close();
                    return jSONObject;
                } catch (JSONException e) {
                    cursor3 = cursor;
                    cursor4 = cursor2;
                    if (cursor4 != null) {
                        cursor4.close();
                    }
                    if (cursor3 != null) {
                        cursor3.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (JSONException e2) {
                cursor3 = null;
                cursor4 = cursor2;
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
            }
        } catch (JSONException e3) {
            cursor3 = null;
            cursor4 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
            cursor2 = null;
        }
    }

    @Override // com.facebook.ads.internal.g.e.a
    public JSONObject a() {
        int i = com.facebook.ads.internal.j.i(this.g);
        return i > 0 ? a(i) : d();
    }

    @Override // com.facebook.ads.internal.g.f
    public void a(String str) {
        new z().execute(str);
    }

    public void a(String str, com.facebook.ads.internal.util.l lVar) {
        a(new a(str, c, d, lVar));
    }

    @Override // com.facebook.ads.internal.g.f
    public void a(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new i(this.g, str, c, d, map));
    }

    public void a(String str, Map<String, String> map, String str2, h hVar) {
        a(new l(this.g, str, c, d, map, str2, hVar));
    }

    @Override // com.facebook.ads.internal.g.e.a
    public boolean a(JSONArray jSONArray) {
        boolean f = com.facebook.ads.internal.j.f(this.g);
        boolean z = false;
        boolean z2 = true;
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString(FacebookAdapter.KEY_ID);
                int i2 = jSONObject.getInt("code");
                if (i2 == 1) {
                    if (f && jSONObject.optInt("dbtype", 0) == 1) {
                        z = true;
                    } else {
                        this.f.a(string);
                    }
                } else if (i2 >= 1000 && i2 < 2000) {
                    z2 = false;
                } else if (i2 >= 2000 && i2 < 3000) {
                    if (f && jSONObject.optInt("dbtype", 0) == 1) {
                        z = true;
                    } else {
                        this.f.a(string);
                    }
                }
            } catch (JSONException e) {
            }
        }
        if (z) {
            com.facebook.ads.internal.util.o.b(this.g);
        }
        return z2;
    }

    @Override // com.facebook.ads.internal.g.e.a
    public void b() {
        this.f.g();
        this.f.b();
    }

    public void b(String str) {
        Log.e(f2738a, "AdEventManager error: " + str);
    }

    @Override // com.facebook.ads.internal.g.f
    public void b(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new o(this.g, str, c, d, map));
    }

    @Override // com.facebook.ads.internal.g.f
    public void c(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new m(str, c, d, map));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        if (r2.getInt(0) > r3) goto L11;
     */
    @Override // com.facebook.ads.internal.g.e.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c() {
        /*
            r5 = this;
            r0 = 1
            r1 = 0
            android.content.Context r2 = r5.g
            int r3 = com.facebook.ads.internal.j.i(r2)
            if (r3 >= r0) goto Lb
        La:
            return r1
        Lb:
            r2 = 0
            com.facebook.ads.internal.e.d r4 = r5.f     // Catch: java.lang.Throwable -> L28
            android.database.Cursor r2 = r4.d()     // Catch: java.lang.Throwable -> L28
            boolean r4 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L30
            if (r4 == 0) goto L26
            r4 = 0
            int r4 = r2.getInt(r4)     // Catch: java.lang.Throwable -> L30
            if (r4 <= r3) goto L26
        L1f:
            if (r2 == 0) goto L24
            r2.close()
        L24:
            r1 = r0
            goto La
        L26:
            r0 = r1
            goto L1f
        L28:
            r0 = move-exception
            r1 = r2
        L2a:
            if (r1 == 0) goto L2f
            r1.close()
        L2f:
            throw r0
        L30:
            r0 = move-exception
            r1 = r2
            goto L2a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.g.g.c():boolean");
    }

    @Override // com.facebook.ads.internal.g.f
    public void d(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new b(this.g, str, c, d, map));
    }

    public void e(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new j(this.g, str, c, d, map));
    }

    public void f(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new n(this.g, str, c, d, map));
    }

    public void g(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(new k(this.g, str, c, d, map));
    }
}
