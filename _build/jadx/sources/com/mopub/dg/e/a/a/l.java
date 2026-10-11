package com.mopub.dg.e.a.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.WindowManager;
import com.mopub.dg.adapi.AdData;
import com.mopub.dg.adapi.DGAdApi;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class l {
    private static l f = null;
    private static Handler g = new Handler(Looper.getMainLooper());

    /* renamed from: a, reason: collision with root package name */
    private boolean f4320a = false;

    /* renamed from: b, reason: collision with root package name */
    private boolean f4321b = false;
    private boolean c = true;
    private boolean d = true;
    private long e = -1;
    private Context h;
    private com.mopub.dg.d.b.b i;
    private com.mopub.dg.d.b.b j;
    private com.mopub.dg.d.b.b k;

    public static synchronized l a() {
        l lVar;
        synchronized (l.class) {
            if (f == null) {
                f = new l();
            }
            lVar = f;
        }
        return lVar;
    }

    public static void a(Context context, String str, String str2) {
        boolean z = true;
        l a2 = a();
        a2.a(context);
        if (a2.f4321b) {
            a2.f4320a = true;
            return;
        }
        a2.f4320a = true;
        try {
            a2.e(a2.k.b("configName", ""));
        } catch (JSONException e) {
        }
        if (com.mopub.dg.e.a.b.a.b(context)) {
            com.mopub.dg.d.b.b a3 = com.mopub.dg.d.b.b.a(a2.h);
            a2.e = a3.b(com.mopub.dg.c.g.s, -1L);
            if (a2.e == -1 || Math.abs(System.currentTimeMillis() - a2.e) > com.mopub.dg.c.g.t) {
                a2.e = System.currentTimeMillis();
                a3.a(com.mopub.dg.c.g.s, a2.e);
            } else {
                z = false;
            }
            if (z) {
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put("appId", String.valueOf(str));
                    hashMap.put("slotId", String.valueOf(str2));
                    hashMap.put("hasGP", String.valueOf(com.mopub.dg.e.a.b.f.a(context)));
                    com.mopub.dg.d.k.a("http://adbsc.krmobi.com/adbc?" + com.mopub.dg.e.a.b.a.a(context, hashMap), new m(a2));
                } catch (Throwable th) {
                }
            }
        }
    }

    public static void a(ArrayList arrayList, Context context) {
        String packageName;
        String clickTrackUrl;
        boolean isPreload;
        String adID;
        int i;
        if (!d.c || arrayList == null) {
            return;
        }
        try {
            l a2 = a();
            int i2 = 0;
            for (int i3 = 0; i3 < arrayList.size() && i2 < d.d; i3++) {
                try {
                    AdData adData = (AdData) arrayList.get(i3);
                    packageName = adData.getPackageName();
                    clickTrackUrl = adData.getClickTrackUrl();
                    isPreload = adData.isPreload();
                    adID = adData.getAdID();
                } catch (Throwable th) {
                    th = th;
                }
                if (!isPreload) {
                    i = i2;
                } else if (a2.d(packageName) == "") {
                    int i4 = i2 + 1;
                    try {
                        g.postDelayed(new o(context, clickTrackUrl, packageName, adID, a2), i4 * d.f);
                        i = i4;
                    } catch (Throwable th2) {
                        th = th2;
                        i2 = i4;
                        com.mopub.dg.d.n.a("DG", th.getLocalizedMessage());
                    }
                }
                i2 = i;
            }
        } catch (Throwable th3) {
            com.mopub.dg.d.n.a("DG", th3.getLocalizedMessage());
        }
    }

    public static boolean a(AdData adData, Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return d(adData, context);
        }
        com.mopub.dg.d.n.a("DG", "trackping method should run in main thread");
        return false;
    }

    public static void b(AdData adData, Context context) {
        try {
            String clickTrackUrl = adData.getClickTrackUrl();
            String packageName = adData.getPackageName();
            String adID = adData.getAdID();
            l a2 = a();
            a2.a(context);
            if (!a2.f4320a) {
                com.mopub.dg.d.n.a("DG", "Should init first");
            }
            String d = a2.d(packageName);
            if (d != "" && !d.equals("InitName")) {
                com.mopub.dg.e.a.b.b.a(d, context);
                return;
            }
            if (a2.f4320a && a2.c) {
                com.mopub.dg.e.a.b.b.a("market://details?id=" + packageName, context);
                if (!a2.a(packageName).equals("")) {
                    a2.a(packageName, "");
                }
                i iVar = new i(context, clickTrackUrl);
                iVar.f4317b = packageName;
                iVar.f4316a = adID;
                iVar.a();
                return;
            }
            e eVar = new e(context);
            eVar.c = clickTrackUrl;
            if (eVar.c == null || eVar.f4311a == null) {
                return;
            }
            eVar.k = new Handler();
            eVar.k.postDelayed(eVar.l, eVar.j * 1000);
            if (!TextUtils.isEmpty(eVar.f4312b)) {
                com.mopub.dg.e.a.b.c.a(eVar.f4311a, eVar.f4312b, false, null);
            }
            if (TextUtils.isEmpty(eVar.c)) {
                return;
            }
            String str = eVar.c;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (eVar.g) {
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.height = -1;
                layoutParams.width = -1;
                layoutParams.gravity = 17;
                eVar.i = (WindowManager) eVar.f4311a.getSystemService("window");
                eVar.i.addView(eVar.d, layoutParams);
                eVar.e.setVisibility(0);
                eVar.h.setVisibility(0);
            }
            eVar.e.loadUrl(str);
        } catch (Throwable th) {
            com.mopub.dg.d.n.a("DG", th.getLocalizedMessage());
        }
    }

    public static void b(ArrayList arrayList, Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            a(arrayList, context);
        } else {
            g.post(new p(arrayList, context));
        }
    }

    public static void c(AdData adData, Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            b(adData, context);
        } else {
            g.post(new n(adData, context));
        }
    }

    private String d(String str) {
        String str2 = "";
        try {
            String b2 = this.j.b(str, "");
            if (!b2.equals("")) {
                JSONObject jSONObject = new JSONObject(b2);
                if (System.currentTimeMillis() - jSONObject.getLong("ts") < d.e) {
                    str2 = jSONObject.getString("url");
                    if (str2 == null || str2 != "") {
                    }
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return str2;
    }

    private static boolean d(AdData adData, Context context) {
        try {
            l a2 = a();
            a2.a(context);
            String packageName = adData.getPackageName();
            String clickTrackUrl = adData.getClickTrackUrl();
            String adID = adData.getAdID();
            if (!a2.f(packageName)) {
                i iVar = new i(context, clickTrackUrl);
                iVar.f4316a = adID;
                iVar.f4317b = adData.getPackageName();
                iVar.a();
                return true;
            }
            DGAdApi dGAdApi = DGAdApi.getInstance(context);
            if (dGAdApi != null && dGAdApi.getStatusListener() != null) {
                dGAdApi.getStatusListener().onStatusEvent("Preload_Has_Refer", packageName);
            }
            com.mopub.dg.d.n.a("Preload_Has_Refer");
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        this.f4321b = true;
        com.mopub.dg.d.b.b a2 = com.mopub.dg.d.b.b.a(this.h);
        JSONObject jSONObject = new JSONObject(str);
        String string = jSONObject.getString("Preload");
        String string2 = jSONObject.getString("NGPTrack");
        if (!string.equals("1")) {
            this.c = false;
        }
        if (!string2.equals("1")) {
            this.d = false;
        }
        if (!jSONObject.isNull("MonitorAtInit") && jSONObject.getString("MonitorAtInit").equals("1")) {
            d.f4309a = true;
            a.a(this.h);
        }
        if (!jSONObject.isNull("PreloadOffer")) {
            if (jSONObject.getString("PreloadOffer").equals("1")) {
                d.c = true;
            } else {
                d.c = false;
            }
            d.d = jSONObject.getInt("PreloadOfferNums");
        }
        if (!jSONObject.isNull("MarketCacheTime")) {
            d.e = jSONObject.getLong("MarketCacheTime");
        }
        if (!jSONObject.isNull("TrackInstall")) {
            a2.a("TrackInstall", jSONObject.getString("TrackInstall").equals("1"));
        }
        if (jSONObject.isNull(com.mopub.dg.c.g.o)) {
            return;
        }
        a2.a(com.mopub.dg.c.g.o, jSONObject.getLong(com.mopub.dg.c.g.o));
    }

    private boolean f(String str) {
        String string;
        try {
            String b2 = this.j.b(str, "");
            if (b2.equals("")) {
                return false;
            }
            JSONObject jSONObject = new JSONObject(b2);
            if (System.currentTimeMillis() - jSONObject.getLong("ts") > d.e || (string = jSONObject.getString("url")) == null || string == "") {
                return false;
            }
            return !string.equals("InitName");
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public final String a(String str) {
        return this.i.b(str, "");
    }

    public final void a(Context context) {
        this.h = context;
        this.k = com.mopub.dg.d.b.b.a(context);
        this.j = com.mopub.dg.d.b.b.a(context, "dgm_preferences");
        this.i = com.mopub.dg.d.b.b.a(context, "dgt_preferences");
    }

    public final void a(String str, String str2) {
        this.i.a(str, str2);
    }

    public final void a(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put("url", str2);
            jSONObject.put("refer", str3);
            this.j.a(str, jSONObject.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final Set b() {
        Set a2 = this.i.a();
        return a2 == null ? new HashSet() : a2;
    }

    public final void b(String str) {
        this.i.d(str);
    }

    public final void c(String str) {
        this.k.a("configName", str);
    }
}
