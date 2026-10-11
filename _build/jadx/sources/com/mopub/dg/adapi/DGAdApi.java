package com.mopub.dg.adapi;

import android.content.Context;
import android.content.Intent;
import com.mopub.dg.adsdk.DGReceiver;
import com.mopub.dg.b.d;
import com.mopub.dg.c.g;
import com.mopub.dg.c.h;
import com.mopub.dg.c.i;
import com.mopub.dg.c.m;
import com.mopub.dg.d.b.b;
import com.mopub.dg.d.j;
import com.mopub.dg.d.n;
import java.util.HashMap;
import java.util.Timer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DGAdApi {

    /* renamed from: a, reason: collision with root package name */
    private static HashMap f4250a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private Context f4251b;
    private ApiAdsListener d;
    private ApiStatusListener e;
    private String f;
    private String g;
    private h c = new h();
    private d h = d.PBNATIVE;

    private DGAdApi(Context context, String str, String str2) {
        this.f4251b = context;
        this.f = str;
        this.g = str2;
        this.c.a(context, d.PBNATIVE, str, str2);
    }

    private DGAdApi(Context context, String str, String str2, d dVar) {
        this.f4251b = context;
        this.f = str;
        this.g = str2;
        this.c.a(context, dVar, str, str2);
    }

    public static synchronized DGAdApi getInstance(Context context) {
        DGAdApi dGAdApi;
        synchronized (DGAdApi.class) {
            b a2 = b.a(context);
            String b2 = a2.b(g.x);
            String b3 = a2.b(g.y);
            if (b2 == null || b3 == null) {
                n.b("Please Init SDK");
                dGAdApi = null;
            } else {
                dGAdApi = getInstance(context, b2, b3);
            }
        }
        return dGAdApi;
    }

    public static DGAdApi getInstance(Context context, String str, String str2) {
        DGAdApi dGAdApi = (DGAdApi) f4250a.get(str2);
        if (dGAdApi == null) {
            dGAdApi = new DGAdApi(context, str, str2);
            f4250a.put(str2, dGAdApi);
        }
        n.a("App Info:" + dGAdApi.f + ";" + dGAdApi.g);
        return dGAdApi;
    }

    public static DGAdApi getInstance(Context context, String str, String str2, String str3) {
        d dVar = d.PBNATIVE;
        DGAdApi dGAdApi = (DGAdApi) f4250a.get(str2);
        if (dGAdApi == null) {
            dGAdApi = new DGAdApi(context, str, str2, dVar);
            f4250a.put(str2, dGAdApi);
        }
        n.a("App Info:" + dGAdApi.f + ";" + dGAdApi.g + ";" + str3);
        return dGAdApi;
    }

    public static void init(Context context, String str, String str2) {
        b a2 = b.a(context);
        a2.a(g.x, str);
        a2.a(g.y, str2);
        getInstance(context, str, str2);
        com.mopub.dg.d.h.a(context).a((j) null);
    }

    public static void setLoggable(boolean z) {
        g.f4267a = z;
    }

    public static void setTrackable(boolean z) {
        g.A = z;
    }

    public static void setUseDatabase(boolean z) {
        g.B = z;
    }

    public void cacheAd() {
    }

    public void clickAd(AdData adData) {
        if (adData instanceof AdData) {
            h hVar = this.c;
            Context context = this.f4251b;
            if (hVar.f4269a != null) {
                hVar.f4269a.a(adData);
            }
        }
    }

    public ApiStatusListener getStatusListener() {
        return this.e;
    }

    public void loadAd() {
        if (this.e != null) {
            this.e.onStatusEvent("Cache_Ad_Start", "");
        }
        n.a("Cache_Ad_Start");
        h hVar = this.c;
        a aVar = new a(this);
        synchronized (hVar) {
            hVar.c = false;
            hVar.d = false;
            if (hVar.f4270b != null) {
                hVar.f4270b.cancel();
            }
            hVar.f4270b = new Timer();
            hVar.f4270b.schedule(new i(hVar, aVar), g.u);
            if (hVar.f4269a != null) {
                hVar.f4269a.a(new com.mopub.dg.c.j(hVar, aVar));
            }
        }
    }

    public void onReceiver(Context context, Intent intent) {
        new DGReceiver().onReceive(context, intent);
    }

    public void openAd(String str) {
        com.mopub.dg.e.a.a.a.c(this.f4251b, str);
    }

    public void setListener(ApiAdsListener apiAdsListener) {
        this.d = apiAdsListener;
    }

    public void setStatusListener(ApiStatusListener apiStatusListener) {
        this.e = apiStatusListener;
    }

    public void trackAd(String str) {
        if (this.e != null) {
            this.e.onStatusEvent("Track_Start", str);
            n.a("Track_Start" + str);
        }
        m.a(this.f4251b).a(str, this.f, this.g, this.h);
    }
}
