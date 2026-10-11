package com.mopub.dg.d;

import android.content.Context;
import android.util.Base64;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    private static h f4298a;
    private static final String d = new String(Base64.decode("b2ZmZXJjYW1wX2dhaWQ=", 2));

    /* renamed from: b, reason: collision with root package name */
    private String f4299b = "";
    private Context c;

    private h(Context context) {
        this.c = context;
    }

    public static h a(Context context) {
        if (f4298a == null) {
            f4298a = new h(context);
        }
        return f4298a;
    }

    public final String a() {
        if (this.f4299b.equals("")) {
            String b2 = com.mopub.dg.d.b.b.a(this.c).b(d);
            if (b2 != null) {
                this.f4299b = b2;
            }
            a((j) null);
        }
        return this.f4299b;
    }

    public final void a(j jVar) {
        try {
            f.a(new i(this, this.c, jVar), new Void[0]);
        } catch (Exception e) {
            n.a("Error executing FetchAdvertisingInfoTask", e);
            if (jVar != null) {
                jVar.a();
            }
        }
    }

    public final String b() {
        String c = c();
        return c.equals("") ? com.mopub.dg.e.a.b.a.a(this.c) : c;
    }

    public final String c() {
        String b2;
        if (this.f4299b.equals("") && (b2 = com.mopub.dg.d.b.b.a(this.c).b(d)) != null) {
            this.f4299b = b2;
        }
        return this.f4299b;
    }
}
