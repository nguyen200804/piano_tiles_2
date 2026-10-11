package com.example.luckywheel.ad.googlead.admob;

import android.content.Context;
import com.google.android.gms.ads.formats.NativeAd;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static c f2296a;

    /* renamed from: b, reason: collision with root package name */
    private com.example.luckywheel.ui.e f2297b;
    private NativeAd c;

    private c() {
    }

    public static c a() {
        if (f2296a == null) {
            synchronized (c.class) {
                if (f2296a == null) {
                    f2296a = new c();
                }
            }
        }
        return f2296a;
    }

    public void a(Context context, com.example.luckywheel.ui.e eVar) {
        if (context == null) {
            return;
        }
        if (this.c != null) {
            this.f2297b = eVar;
            NativeAdActivity.a(context);
        } else if (eVar != null) {
            eVar.c();
        }
    }

    public void a(NativeAd nativeAd) {
        this.c = nativeAd;
    }

    public com.example.luckywheel.ui.e b() {
        return this.f2297b;
    }

    public NativeAd c() {
        return this.c;
    }

    public void d() {
        this.c = null;
    }
}
