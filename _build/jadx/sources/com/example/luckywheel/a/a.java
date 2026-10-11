package com.example.luckywheel.a;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.example.luckywheel.a.g;
import java.io.InputStream;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.cocos2dx.lib.GameControllerDelegate;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a {
    private static final String c = a.class.getSimpleName();
    private static final String d = k.a();

    /* renamed from: a, reason: collision with root package name */
    protected Context f2275a;

    /* renamed from: b, reason: collision with root package name */
    protected Map<String, Object> f2276b;
    private int e = 15000;
    private int f = 60000;
    private j g = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.example.luckywheel.a.a$a, reason: collision with other inner class name */
    class C0063a extends g.c {
        public C0063a(g.b bVar) {
            super(bVar);
        }

        @Override // com.example.luckywheel.a.g.c
        public void a(int i, String str, String str2, long j, InputStream inputStream) throws Exception {
            i a2 = a.this.a(inputStream);
            Log.i(a.c, "on response:" + a2.b());
            a.this.g.a(a2.c(), a2);
        }

        @Override // com.example.luckywheel.a.g.c
        public void a(HttpsURLConnection httpsURLConnection) throws Exception {
            super.a(httpsURLConnection);
        }
    }

    public a(Context context) {
        this.f2275a = null;
        this.f2276b = null;
        this.f2275a = context;
        this.f2276b = new HashMap();
    }

    private void f() {
        this.f2276b.put("xaid", d.a(this.f2275a));
        this.f2276b.put("cnl", c.f2279b);
        this.f2276b.put("cv", c.c);
        this.f2276b.put("mcc", d.b(this.f2275a));
        this.f2276b.put("tstamp", System.currentTimeMillis() + "");
    }

    private void g() {
        if (this.g == null) {
            Log.e(c, "mServerCallback = null!");
            return;
        }
        if (TextUtils.isEmpty(a())) {
            Log.e(c, "subUrl is empty");
            this.g.a(9, "subUrl is empty");
            return;
        }
        if (this.f2276b == null || this.f2276b.size() < 1) {
            Log.e(c, "RequestData is empty");
            this.g.a(2, "RequestData is empty");
            return;
        }
        String d2 = d();
        Log.d(c, getClass().getSimpleName() + ":request body is " + d2);
        if (d2 == null) {
            Log.e(c, "RequestData is empty");
            this.g.a(1002, "RequestData is empty");
            return;
        }
        String a2 = f.a(d2, c.f2278a);
        HashMap hashMap = new HashMap();
        hashMap.put("Authorization", a2);
        try {
            String str = d + a();
            Log.d(c, "HttpClient [" + str + "] is ready to do http!");
            g.a(str, "POST", hashMap, new l(this, null, d2), this.e, this.f);
        } catch (Exception e) {
            if (e instanceof UnknownHostException) {
                this.g.a(500, null);
            } else {
                Log.e(c, "beginRequest catch exception! reason is ", e);
                this.g.a(GameControllerDelegate.BUTTON_A, e.getMessage());
            }
        }
    }

    public i a(InputStream inputStream) {
        return new i(inputStream);
    }

    public abstract String a();

    public void a(j jVar) {
        this.g = jVar;
    }

    public abstract void b();

    public void c() {
        f();
        b();
        g();
    }

    protected String d() {
        return h.a(this.f2276b);
    }
}
