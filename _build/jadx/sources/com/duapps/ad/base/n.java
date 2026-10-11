package com.duapps.ad.base;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.SystemClock;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.applovin.sdk.AppLovinErrorCodes;
import com.duapps.ad.base.r;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.entity.AdModel;
import com.duapps.ad.inmobi.IMDataModel;
import com.duapps.ad.stats.DuAdCacheProvider;
import com.facebook.ads.AdError;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ToolCacheManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    private static String f2053a = "http://api.mobula.sdk.duapps.col/adunion/slot/getDlAd?";

    /* renamed from: b, reason: collision with root package name */
    private static String f2054b = "http://api.mobula.sdk.duapps.col/adunion/rtb/getInmobiAd?";
    private static String c = "http://api.mobula.sdk.duapps.col/adunion/rtb/fetchAd?";
    private static n e;
    private Context d;

    public static synchronized n a(Context context) {
        n nVar;
        synchronized (n.class) {
            if (e == null) {
                e = new n(context.getApplicationContext());
            }
            nVar = e;
        }
        return nVar;
    }

    private n(Context context) {
        this.d = context;
        c();
    }

    private void c() {
        try {
            this.d.getContentResolver().delete(DuAdCacheProvider.a(this.d, 3), "ts<?", new String[]{String.valueOf(System.currentTimeMillis() - 7200000)});
        } catch (Exception e2) {
            h.b("ToolboxCacheManager", "mDatabase initCacheDatabase() del exception: ", e2);
        }
    }

    private void a(final int i, final String str, final int i2, final String str2, String str3, final s<AdModel> sVar, final String str4, final int i3, final String str5) {
        sVar.a();
        final String b2 = p.b(this.d);
        final String str6 = str3 + b2 + "_" + str + "_" + i + "_" + i2;
        if (!com.duapps.ad.c.b.c.a(this.d)) {
            sVar.a(1000, com.duapps.ad.a.f1982a.b());
        } else {
            t.a().a(new Runnable() { // from class: com.duapps.ad.base.n.1
                @Override // java.lang.Runnable
                public void run() {
                    final long elapsedRealtime = SystemClock.elapsedRealtime();
                    try {
                        List<NameValuePair> a2 = g.a(n.this.d, b2, true);
                        a2.add(new BasicNameValuePair("play", com.duapps.ad.c.b.c.a(n.this.d, "com.android.vending") ? "1" : "0"));
                        a2.add(new BasicNameValuePair("res", "1080*460,244*244,170*170,108*108"));
                        a2.add(new BasicNameValuePair("ps", String.valueOf(i3)));
                        a2.add(new BasicNameValuePair("pn", String.valueOf(i2)));
                        a2.add(new BasicNameValuePair("sid", String.valueOf(i)));
                        a2.add(new BasicNameValuePair("sType", str));
                        a2.add(new BasicNameValuePair("dllv", str4));
                        if (!TextUtils.isEmpty(str5)) {
                            a2.add(new BasicNameValuePair("adPkg", str5));
                        }
                        URL url = new URL(str2 + URLEncodedUtils.format(a2, "UTF-8"));
                        h.c("ToolboxCacheManager", "getWall sType :" + str + ", dlType->" + str4 + ", Url ->" + url.toString());
                        r.a(url, new r.b() { // from class: com.duapps.ad.base.n.1.1
                            @Override // com.duapps.ad.base.c
                            public void a(int i4, r.a aVar) {
                                try {
                                    if (i4 == 200 && aVar != null) {
                                        JSONObject jSONObject = aVar.f2087a;
                                        JSONObject jSONObject2 = jSONObject.getJSONObject("datas");
                                        h.a("ToolboxCacheManager", "getWall sType :" + str + ", response ->" + jSONObject.toString());
                                        a a3 = n.this.a(str6);
                                        a3.f2074b = aVar.f2087a.toString();
                                        a3.c = System.currentTimeMillis();
                                        a3.f2073a = str6;
                                        n.this.a(a3);
                                        int optInt = jSONObject2.optInt("sId");
                                        if (optInt > 0) {
                                            m.i(n.this.d, optInt);
                                        }
                                        String optString = jSONObject2.optString("pe");
                                        if (!TextUtils.isEmpty(optString)) {
                                            try {
                                                com.duapps.ad.c.a.d.a(n.this.d, new JSONObject(com.duapps.ad.c.b.c.e(optString)));
                                            } catch (Exception e2) {
                                                e2.printStackTrace();
                                            }
                                        }
                                        AdModel adModel = new AdModel(b2, optInt, str, jSONObject2, a3.c);
                                        m.d(n.this.d, adModel.n);
                                        k.a(n.this.d).a(adModel.h);
                                        if ("normal".equals(str4)) {
                                            l.a(n.this.d).a();
                                            ArrayList arrayList = new ArrayList();
                                            for (AdData adData : adModel.h) {
                                                if (adData.f2121a == 1) {
                                                    arrayList.add(adData);
                                                }
                                            }
                                            if (arrayList.size() > 0) {
                                                l.a(n.this.d).a(arrayList);
                                            }
                                        }
                                        n.this.a(adModel);
                                        sVar.a(i4, (int) adModel);
                                        m.a(n.this.d, optInt, aVar.c);
                                    } else if (i4 == 304) {
                                        h.c("ToolboxCacheManager", "Url->" + str2 + " 304 called.");
                                        a a4 = n.this.a(str6);
                                        if (a4.f2074b == null) {
                                            sVar.a(1001, com.duapps.ad.a.f1983b.b());
                                            return;
                                        }
                                        a4.c = System.currentTimeMillis();
                                        n.this.a(a4);
                                        JSONObject jSONObject3 = new JSONObject(a4.f2074b);
                                        JSONObject jSONObject4 = jSONObject3.getJSONObject("datas");
                                        h.a("ToolboxCacheManager", "getWall sType :" + str + ", dlType->" + str4 + " from cache, response ->" + jSONObject3.toString());
                                        sVar.a(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, (int) new AdModel(b2, i, str, jSONObject4, a4.c));
                                    }
                                    if (str4.equals("high")) {
                                        com.duapps.ad.stats.c.f(n.this.d, i, i4, SystemClock.elapsedRealtime() - elapsedRealtime);
                                    } else {
                                        com.duapps.ad.stats.c.b(n.this.d, i, i4, SystemClock.elapsedRealtime() - elapsedRealtime);
                                    }
                                } catch (JSONException e3) {
                                    h.b("ToolboxCacheManager", "getWall sType :" + str + ", dlType->" + str4 + ",parse JsonException :", e3);
                                    sVar.a(AdError.SERVER_ERROR_CODE, com.duapps.ad.a.d.b());
                                    if (str4.equals("high")) {
                                        com.duapps.ad.stats.c.f(n.this.d, i, -101, SystemClock.elapsedRealtime() - elapsedRealtime);
                                    } else {
                                        com.duapps.ad.stats.c.b(n.this.d, i, -101, SystemClock.elapsedRealtime() - elapsedRealtime);
                                    }
                                }
                            }

                            @Override // com.duapps.ad.base.c
                            public void a(int i4, String str7) {
                                h.c("ToolboxCacheManager", "getWall sType :" + str + ", dlType->" + str4 + ", parse failed: " + str7);
                                sVar.a(AdError.INTERNAL_ERROR_CODE, com.duapps.ad.a.e.b());
                                if (str4.equals("high")) {
                                    com.duapps.ad.stats.c.f(n.this.d, i, i4, SystemClock.elapsedRealtime() - elapsedRealtime);
                                } else {
                                    com.duapps.ad.stats.c.b(n.this.d, i, i4, SystemClock.elapsedRealtime() - elapsedRealtime);
                                }
                            }
                        }, m.c(n.this.d, i));
                    } catch (MalformedURLException e2) {
                        h.b("ToolboxCacheManager", "getWall sType :" + str + ", dlType->" + str4 + ", parse exception.", e2);
                        sVar.a(3001, com.duapps.ad.a.g.b());
                        if (str4.equals("high")) {
                            com.duapps.ad.stats.c.f(n.this.d, i, AppLovinErrorCodes.FETCH_AD_TIMEOUT, SystemClock.elapsedRealtime() - elapsedRealtime);
                        } else {
                            com.duapps.ad.stats.c.b(n.this.d, i, AppLovinErrorCodes.FETCH_AD_TIMEOUT, SystemClock.elapsedRealtime() - elapsedRealtime);
                        }
                    }
                }
            });
        }
    }

    private void a(final int i, final String str, final int i2, final String str2, String str3, final s<AdModel> sVar, final String str4, final int i3) {
        sVar.a();
        final String b2 = p.b(this.d);
        final String str5 = str3 + b2 + "_" + str + "_" + i + "_" + i2;
        if (!com.duapps.ad.c.b.c.a(this.d)) {
            sVar.a(1000, com.duapps.ad.a.f1982a.b());
        } else {
            t.a().a(new Runnable() { // from class: com.duapps.ad.base.n.2
                @Override // java.lang.Runnable
                public void run() {
                    final long elapsedRealtime = SystemClock.elapsedRealtime();
                    try {
                        List<NameValuePair> a2 = g.a(n.this.d, b2, true);
                        a2.add(new BasicNameValuePair("play", com.duapps.ad.c.b.c.a(n.this.d, "com.android.vending") ? "1" : "0"));
                        a2.add(new BasicNameValuePair("res", "1080*460,244*244,170*170,108*108"));
                        a2.add(new BasicNameValuePair("ps", String.valueOf(i3)));
                        a2.add(new BasicNameValuePair("pn", String.valueOf(i2)));
                        a2.add(new BasicNameValuePair("sid", String.valueOf(i)));
                        a2.add(new BasicNameValuePair("sType", str));
                        a2.add(new BasicNameValuePair("dllv", str4));
                        URL url = new URL(str2 + URLEncodedUtils.format(a2, "UTF-8"));
                        h.c("ToolboxCacheManager", "getWall sType :" + str + ", dlType->" + str4 + ", Url ->" + url.toString());
                        r.a(url, new r.b() { // from class: com.duapps.ad.base.n.2.1
                            @Override // com.duapps.ad.base.c
                            public void a(int i4, r.a aVar) {
                                try {
                                    if (i4 == 200 && aVar != null) {
                                        JSONObject jSONObject = aVar.f2087a;
                                        JSONObject jSONObject2 = jSONObject.getJSONObject("datas");
                                        h.a("ToolboxCacheManager", "getWall sType :" + str + ", dlType->" + str4 + ", response ->" + jSONObject.toString());
                                        a a3 = n.this.a(str5);
                                        a3.f2074b = aVar.f2087a.toString();
                                        a3.c = System.currentTimeMillis();
                                        a3.f2073a = str5;
                                        n.this.a(a3);
                                        AdModel adModel = new AdModel(b2, i, str, jSONObject2, a3.c);
                                        m.d(n.this.d, adModel.n);
                                        k.a(n.this.d).a(adModel.h);
                                        l.a(n.this.d).a();
                                        ArrayList arrayList = new ArrayList();
                                        for (AdData adData : adModel.h) {
                                            if (adData.f2121a == 1) {
                                                arrayList.add(adData);
                                            }
                                        }
                                        if (arrayList.size() > 0) {
                                            l.a(n.this.d).a(arrayList);
                                        }
                                        n.this.a(adModel);
                                        sVar.a(i4, (int) adModel);
                                        m.a(n.this.d, i, aVar.c);
                                    } else if (i4 == 304) {
                                        h.c("ToolboxCacheManager", "Url->" + str2 + " 304 called.");
                                        a a4 = n.this.a(str5);
                                        if (a4.f2074b == null) {
                                            sVar.a(1001, com.duapps.ad.a.f1983b.b());
                                            return;
                                        }
                                        a4.c = System.currentTimeMillis();
                                        n.this.a(a4);
                                        JSONObject jSONObject3 = new JSONObject(a4.f2074b);
                                        JSONObject jSONObject4 = jSONObject3.getJSONObject("datas");
                                        h.a("ToolboxCacheManager", "getWall sType :" + str + ", dlType->" + str4 + " from cache, response ->" + jSONObject3.toString());
                                        sVar.a(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, (int) new AdModel(b2, i, str, jSONObject4, a4.c));
                                    }
                                    if (str4.equals("high")) {
                                        com.duapps.ad.stats.c.f(n.this.d, i, i4, SystemClock.elapsedRealtime() - elapsedRealtime);
                                    } else {
                                        com.duapps.ad.stats.c.b(n.this.d, i, i4, SystemClock.elapsedRealtime() - elapsedRealtime);
                                    }
                                } catch (JSONException e2) {
                                    h.b("ToolboxCacheManager", "getWall sType :" + str + ", dlType->" + str4 + ",parse JsonException :", e2);
                                    sVar.a(AdError.SERVER_ERROR_CODE, com.duapps.ad.a.d.b());
                                    if (str4.equals("high")) {
                                        com.duapps.ad.stats.c.f(n.this.d, i, -101, SystemClock.elapsedRealtime() - elapsedRealtime);
                                    } else {
                                        com.duapps.ad.stats.c.b(n.this.d, i, -101, SystemClock.elapsedRealtime() - elapsedRealtime);
                                    }
                                }
                            }

                            @Override // com.duapps.ad.base.c
                            public void a(int i4, String str6) {
                                h.c("ToolboxCacheManager", "getWall sType :" + str + ", dlType->" + str4 + ", parse failed: " + str6);
                                sVar.a(AdError.INTERNAL_ERROR_CODE, com.duapps.ad.a.e.b());
                                if (str4.equals("high")) {
                                    com.duapps.ad.stats.c.f(n.this.d, i, i4, SystemClock.elapsedRealtime() - elapsedRealtime);
                                } else {
                                    com.duapps.ad.stats.c.b(n.this.d, i, i4, SystemClock.elapsedRealtime() - elapsedRealtime);
                                }
                            }
                        }, m.c(n.this.d, i));
                    } catch (MalformedURLException e2) {
                        h.b("ToolboxCacheManager", "getWall sType :" + str + ", dlType->" + str4 + ", parse exception.", e2);
                        sVar.a(3001, com.duapps.ad.a.g.b());
                        if (str4.equals("high")) {
                            com.duapps.ad.stats.c.f(n.this.d, i, AppLovinErrorCodes.FETCH_AD_TIMEOUT, SystemClock.elapsedRealtime() - elapsedRealtime);
                        } else {
                            com.duapps.ad.stats.c.b(n.this.d, i, AppLovinErrorCodes.FETCH_AD_TIMEOUT, SystemClock.elapsedRealtime() - elapsedRealtime);
                        }
                    }
                }
            });
        }
    }

    private void a(final int i, final String str, final int i2, final String str2, String str3, final s<AdModel> sVar, final int i3) {
        sVar.a();
        final String b2 = p.b(this.d);
        final DisplayMetrics displayMetrics = this.d.getResources().getDisplayMetrics();
        final String str4 = str3 + b2 + "_" + str + "_" + i + "_" + i2;
        if (!com.duapps.ad.c.b.c.a(this.d)) {
            sVar.a(1000, com.duapps.ad.a.f1982a.b());
        } else {
            t.a().a(new Runnable() { // from class: com.duapps.ad.base.n.3
                @Override // java.lang.Runnable
                public void run() {
                    final long elapsedRealtime = SystemClock.elapsedRealtime();
                    try {
                        List<NameValuePair> a2 = g.a(n.this.d, b2, true);
                        a2.add(new BasicNameValuePair("play", com.duapps.ad.c.b.c.a(n.this.d, "com.android.vending") ? "1" : "0"));
                        a2.add(new BasicNameValuePair("res", String.valueOf(displayMetrics.heightPixels) + "*" + String.valueOf(displayMetrics.widthPixels)));
                        a2.add(new BasicNameValuePair("ps", String.valueOf(20)));
                        a2.add(new BasicNameValuePair("pn", String.valueOf(i2)));
                        a2.add(new BasicNameValuePair("sid", String.valueOf(i)));
                        a2.add(new BasicNameValuePair("sType", str));
                        a2.add(new BasicNameValuePair("aSize", String.valueOf(i3)));
                        a2.add(new BasicNameValuePair("ua", i.f2039b));
                        URL url = new URL(str2 + URLEncodedUtils.format(a2, "UTF-8"));
                        h.c("ToolboxCacheManager", "getOnlineWall sType :" + str + ", Url ->" + url.toString());
                        r.a(url, new r.b() { // from class: com.duapps.ad.base.n.3.1
                            @Override // com.duapps.ad.base.c
                            public void a(int i4, r.a aVar) {
                                try {
                                    if (i4 == 200 && aVar != null) {
                                        JSONObject jSONObject = aVar.f2087a;
                                        JSONObject jSONObject2 = jSONObject.getJSONObject("datas");
                                        h.a("ToolboxCacheManager", "getOnlineWall sType :" + str + ", response ->" + jSONObject.toString());
                                        a a3 = n.this.a(str4);
                                        a3.f2074b = aVar.f2087a.toString();
                                        a3.c = System.currentTimeMillis();
                                        a3.f2073a = str4;
                                        n.this.a(a3);
                                        AdModel adModel = new AdModel(b2, i, str, jSONObject2, a3.c);
                                        m.d(n.this.d, adModel.n);
                                        k.a(n.this.d).a(adModel.h);
                                        l.a(n.this.d).a();
                                        ArrayList arrayList = new ArrayList();
                                        for (AdData adData : adModel.h) {
                                            if (adData.f2121a == 1) {
                                                arrayList.add(adData);
                                            }
                                        }
                                        if (arrayList.size() > 0) {
                                            l.a(n.this.d).a(arrayList);
                                        }
                                        sVar.a(i4, (int) adModel);
                                        m.a(n.this.d, i, aVar.c);
                                    } else if (i4 == 304) {
                                        h.c("ToolboxCacheManager", "Url->" + str2 + " 304 called.");
                                        a a4 = n.this.a(str4);
                                        if (a4.f2074b == null) {
                                            sVar.a(1001, com.duapps.ad.a.f1983b.b());
                                            return;
                                        }
                                        a4.c = System.currentTimeMillis();
                                        n.this.a(a4);
                                        JSONObject jSONObject3 = new JSONObject(a4.f2074b).getJSONObject("datas");
                                        h.a("ToolboxCacheManager", "getOnlineWall sType :" + str + " from cache, response ->" + aVar);
                                        sVar.a(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, (int) new AdModel(b2, i, str, jSONObject3, a4.c));
                                    }
                                    com.duapps.ad.stats.c.d(n.this.d, i, i4, SystemClock.elapsedRealtime() - elapsedRealtime);
                                } catch (JSONException e2) {
                                    h.b("ToolboxCacheManager", "getOnlineWall sType :" + str + ",parse JsonException :", e2);
                                    sVar.a(AdError.SERVER_ERROR_CODE, com.duapps.ad.a.d.b());
                                    com.duapps.ad.stats.c.d(n.this.d, i, -101, SystemClock.elapsedRealtime() - elapsedRealtime);
                                }
                            }

                            @Override // com.duapps.ad.base.c
                            public void a(int i4, String str5) {
                                h.c("ToolboxCacheManager", "getOnlineWall sType :" + str + ", parse failed: " + str5);
                                sVar.a(AdError.INTERNAL_ERROR_CODE, com.duapps.ad.a.e.b());
                                com.duapps.ad.stats.c.d(n.this.d, i, i4, SystemClock.elapsedRealtime() - elapsedRealtime);
                            }
                        }, m.c(n.this.d, i));
                    } catch (MalformedURLException e2) {
                        h.b("ToolboxCacheManager", "getWall sType :" + str + ", parse exception.", e2);
                        sVar.a(3001, com.duapps.ad.a.g.b());
                        com.duapps.ad.stats.c.d(n.this.d, i, AppLovinErrorCodes.FETCH_AD_TIMEOUT, SystemClock.elapsedRealtime() - elapsedRealtime);
                    }
                }
            });
        }
    }

    public void a(int i, int i2, s<AdModel> sVar, String str) {
        a(i, "native", i2, f2053a, "native_", sVar, "normal", 9, str);
    }

    public void a(int i, int i2, s<AdModel> sVar) {
        a(i, "native", i2, f2053a, "native_", sVar, "normal", 20, null);
    }

    public void a(int i, int i2, s<AdModel> sVar, int i3) {
        a(i, "online", i2, c, "online_", sVar, i3);
    }

    public void a(final int i, final String str, final String str2, final s<IMDataModel> sVar) {
        sVar.a();
        if (!m.a(f2054b + i, this.d)) {
            sVar.a(1002, "This url is request too frequently.");
            h.c("ToolboxCacheManager", "This url is request too frequently.");
            return;
        }
        final String b2 = p.b(this.d);
        if (!com.duapps.ad.c.b.c.a(this.d)) {
            sVar.a(1000, com.duapps.ad.a.f1982a.b());
        } else {
            t.a().a(new Runnable() { // from class: com.duapps.ad.base.n.4
                @Override // java.lang.Runnable
                public void run() {
                    final long elapsedRealtime = SystemClock.elapsedRealtime();
                    try {
                        List<NameValuePair> a2 = g.a(n.this.d, b2, true);
                        a2.add(new BasicNameValuePair("play", com.duapps.ad.c.b.c.a(n.this.d, "com.android.vending") ? "1" : "0"));
                        a2.add(new BasicNameValuePair("res", "1080*460,244*244,170*170,108*108"));
                        a2.add(new BasicNameValuePair("ps", String.valueOf(20)));
                        a2.add(new BasicNameValuePair("pn", String.valueOf(1)));
                        a2.add(new BasicNameValuePair("sid", String.valueOf(i)));
                        a2.add(new BasicNameValuePair("sType", "native"));
                        a2.add(new BasicNameValuePair("or", String.valueOf(b.j(n.this.d))));
                        a2.add(new BasicNameValuePair("siteId", str));
                        a2.add(new BasicNameValuePair("aSize", str2));
                        String property = System.getProperty("http.agent");
                        if (TextUtils.isEmpty(property)) {
                            property = "dianxinosdxbs/3.2 (Linux; Android; Tapas OTA) Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.18) Gecko/20110628 Ubuntu/10.04 (lucid) Firefox/3.6.18";
                        }
                        a2.add(new BasicNameValuePair("ua", property));
                        URL url = new URL(n.f2054b + URLEncodedUtils.format(a2, "UTF-8"));
                        h.c("ToolboxCacheManager", "getInmobiNativeAds sType :native, Url ->" + url.toString());
                        r.a(url, new r.b() { // from class: com.duapps.ad.base.n.4.1
                            @Override // com.duapps.ad.base.c
                            public void a(int i2, r.a aVar) {
                                if (i2 == 200 && aVar != null) {
                                    try {
                                        JSONObject jSONObject = aVar.f2087a;
                                        JSONObject jSONObject2 = jSONObject.getJSONObject("datas");
                                        h.a("ToolboxCacheManager", "getInmobiNativeAds sType :native, response ->" + jSONObject.toString());
                                        sVar.a(i2, (int) new IMDataModel(b2, i, "native", jSONObject2, System.currentTimeMillis()));
                                    } catch (JSONException e2) {
                                        h.b("ToolboxCacheManager", "getInmobiNativeAds sType :native,parse JsonException :", e2);
                                        sVar.a(AdError.SERVER_ERROR_CODE, com.duapps.ad.a.d.b());
                                        com.duapps.ad.stats.c.c(n.this.d, i, -101, SystemClock.elapsedRealtime() - elapsedRealtime);
                                        return;
                                    }
                                }
                                com.duapps.ad.stats.c.c(n.this.d, i, i2, SystemClock.elapsedRealtime() - elapsedRealtime);
                            }

                            @Override // com.duapps.ad.base.c
                            public void a(int i2, String str3) {
                                h.c("ToolboxCacheManager", "getInmobiNativeAds sType :native, parse failed: " + str3);
                                sVar.a(AdError.INTERNAL_ERROR_CODE, com.duapps.ad.a.e.b());
                                com.duapps.ad.stats.c.c(n.this.d, i, i2, SystemClock.elapsedRealtime() - elapsedRealtime);
                            }
                        }, m.c(n.this.d, i));
                        m.b(n.f2054b + i, n.this.d);
                    } catch (MalformedURLException e2) {
                        h.b("ToolboxCacheManager", "getInmobiNativeAds sType :native, parse exception.", e2);
                        sVar.a(3001, com.duapps.ad.a.g.b());
                        com.duapps.ad.stats.c.c(n.this.d, i, AppLovinErrorCodes.FETCH_AD_TIMEOUT, SystemClock.elapsedRealtime() - elapsedRealtime);
                    }
                }
            });
        }
    }

    public void b(int i, int i2, s<AdModel> sVar, int i3) {
        a(i, "offerwall", i2, f2053a, "native_", sVar, "normal", i3);
    }

    /* compiled from: ToolCacheManager.java */
    static class a {

        /* renamed from: a, reason: collision with root package name */
        public String f2073a;

        /* renamed from: b, reason: collision with root package name */
        public String f2074b;
        public long c;

        a() {
        }
    }

    a a(String str) {
        Cursor cursor;
        Cursor cursor2 = null;
        String[] strArr = {"data", "ts"};
        String[] strArr2 = {str};
        a aVar = new a();
        aVar.f2073a = str;
        try {
            try {
                cursor = this.d.getContentResolver().query(DuAdCacheProvider.a(this.d, 3), strArr, "key=?", strArr2, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            aVar.f2074b = cursor.getString(0);
                            aVar.c = cursor.getLong(1);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        h.b("ToolboxCacheManager", "getCacheEntry() exception: ", e);
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        return aVar;
                    }
                }
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
            } catch (Throwable th) {
                th = th;
                if (cursor2 != null && !cursor2.isClosed()) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor2 = null;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
        return aVar;
    }

    void a(a aVar) {
        ContentValues contentValues = new ContentValues(4);
        contentValues.put("key", aVar.f2073a);
        contentValues.put("data", aVar.f2074b);
        contentValues.put("ts", Long.valueOf(aVar.c));
        try {
            if (this.d.getContentResolver().update(DuAdCacheProvider.a(this.d, 3), contentValues, "key=?", new String[]{aVar.f2073a}) < 1) {
                this.d.getContentResolver().insert(DuAdCacheProvider.a(this.d, 3), contentValues);
            }
        } catch (Exception e2) {
            h.b("ToolboxCacheManager", "cacheDabase saveCacheEntry() exception: ", e2);
        }
    }

    public void a(com.duapps.ad.stats.f fVar) {
        if (fVar != null && !TextUtils.isEmpty(fVar.a())) {
            try {
                ContentValues contentValues = new ContentValues(5);
                contentValues.put("pkgName", fVar.a());
                contentValues.put("ctime", Long.valueOf(System.currentTimeMillis()));
                contentValues.put("cdata", com.duapps.ad.stats.f.a(fVar).toString());
                if (this.d.getContentResolver().update(DuAdCacheProvider.a(this.d, 2), contentValues, "pkgName=?", new String[]{fVar.a()}) == 0) {
                    contentValues.put("status", (Integer) 0);
                    this.d.getContentResolver().insert(DuAdCacheProvider.a(this.d, 2), contentValues);
                }
            } catch (Exception e2) {
                h.b("ToolboxCacheManager", "updateOrInsertValidClickTime() exception: ", e2);
            }
        }
    }

    public com.duapps.ad.stats.f b(String str) {
        Cursor cursor;
        com.duapps.ad.stats.f fVar;
        Cursor cursor2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            try {
                cursor = this.d.getContentResolver().query(DuAdCacheProvider.a(this.d, 2), new String[]{"cdata", "ctime"}, "pkgName=? AND ctime>= ?", new String[]{str, String.valueOf(System.currentTimeMillis() - 86400000)}, null);
            } catch (Throwable th) {
                th = th;
                if (0 != 0 && !cursor2.isClosed()) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
        if (cursor != null) {
            try {
            } catch (Exception e3) {
                e = e3;
                h.b("ToolboxCacheManager", "getValidClickTimeRecord exception: ", e);
                if (cursor == null || cursor.isClosed()) {
                    fVar = null;
                } else {
                    cursor.close();
                    fVar = null;
                }
                return fVar;
            }
            if (cursor.moveToFirst()) {
                fVar = com.duapps.ad.stats.f.a(new JSONObject(cursor.getString(0)));
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
                return fVar;
            }
        }
        fVar = null;
        if (cursor != null) {
            cursor.close();
        }
        return fVar;
    }

    public void c(String str) {
        try {
            this.d.getContentResolver().delete(DuAdCacheProvider.a(this.d, 2), "pkgName=?", new String[]{str});
        } catch (Exception e2) {
            h.b("ToolboxCacheManager", "clearValidClickTimeRecord exception: ", e2);
        }
    }

    public void a(final AdModel adModel) {
        t.a().a(new Runnable() { // from class: com.duapps.ad.base.n.5
            @Override // java.lang.Runnable
            public void run() {
                if (adModel == null || adModel.h == null || adModel.h.size() == 0) {
                    h.c("ToolboxCacheManager", "ads == null || ads.list == null || ads.list.size() == 0");
                    return;
                }
                n.this.a();
                try {
                    for (AdData adData : adModel.h) {
                        h.c("ToolboxCacheManager", "wall---before insert: ad.package: " + adData.d + ",ad.preParse:" + adData.H);
                        if (adData.H == 1) {
                            n.this.b(new com.duapps.ad.stats.f(adData));
                        }
                    }
                } catch (Exception e2) {
                    if (h.a()) {
                        h.b("ToolboxCacheManager", "wall---batch update or insert triggerPreParse data error: ", e2);
                    }
                }
            }
        });
    }

    public void b(com.duapps.ad.stats.f fVar) {
        if (fVar != null && !TextUtils.isEmpty(fVar.a())) {
            try {
                ContentValues contentValues = new ContentValues(5);
                contentValues.put("ad_id", Long.valueOf(fVar.f().f2122b));
                contentValues.put("pkgName", fVar.a());
                contentValues.put("data", com.duapps.ad.stats.f.a(fVar).toString());
                contentValues.put("ctime", Long.valueOf(System.currentTimeMillis()));
                if (this.d.getContentResolver().update(DuAdCacheProvider.a(this.d, 5), contentValues, "pkgName=?", new String[]{fVar.a()}) == 0) {
                    this.d.getContentResolver().insert(DuAdCacheProvider.a(this.d, 5), contentValues);
                    h.c("ToolboxCacheManager", "update or insert triggerPreParse data success");
                }
            } catch (Exception e2) {
                if (h.a()) {
                    h.b("ToolboxCacheManager", "update or insert triggerPreParse data error: ", e2);
                }
            }
        }
    }

    public com.duapps.ad.stats.f d(String str) {
        Cursor cursor;
        com.duapps.ad.stats.f fVar;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            cursor = this.d.getContentResolver().query(DuAdCacheProvider.a(this.d, 5), new String[]{"pkgName", "data"}, "pkgName=? AND ctime >=?", new String[]{str, String.valueOf(System.currentTimeMillis() - m.m(this.d))}, null);
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th) {
            th = th;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        if (cursor != null) {
            try {
                try {
                } catch (Exception e3) {
                    e = e3;
                    if (h.a()) {
                        h.b("ToolboxCacheManager", "fetch triggerPreParse data error: ", e);
                    }
                    if (cursor == null || cursor.isClosed()) {
                        fVar = null;
                    } else {
                        cursor.close();
                        fVar = null;
                    }
                    return fVar;
                }
                if (cursor.moveToFirst()) {
                    fVar = com.duapps.ad.stats.f.a(new JSONObject(cursor.getString(1)));
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                    return fVar;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
                throw th;
            }
        }
        fVar = null;
        if (cursor != null) {
            cursor.close();
        }
        return fVar;
    }

    public void e(String str) {
        try {
            this.d.getContentResolver().delete(DuAdCacheProvider.a(this.d, 5), "pkgName=?", new String[]{str});
        } catch (Exception e2) {
            h.b("ToolboxCacheManager", "removeTriggerPreParseData error: ", e2);
        }
    }

    public List<com.duapps.ad.stats.f> f(String str) {
        Cursor cursor = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArr = {"cdata", "ctime"};
        String[] strArr2 = {str, String.valueOf(System.currentTimeMillis() - ((m.l(this.d) * 60) * 1000))};
        ArrayList arrayList = new ArrayList();
        try {
            try {
                cursor = this.d.getContentResolver().query(DuAdCacheProvider.a(this.d, 2), strArr, "pkgName=? AND ctime>= ?", strArr2, null);
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        arrayList.add(com.duapps.ad.stats.f.a(new JSONObject(cursor.getString(0))));
                    }
                }
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
            } catch (Exception e2) {
                h.b("ToolboxCacheManager", "getValidClickTimeRecord exception: ", e2);
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
            }
            return arrayList;
        } catch (Throwable th) {
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    public void a() {
        try {
            this.d.getContentResolver().delete(DuAdCacheProvider.a(this.d, 5), "ctime<?", new String[]{Long.toString(System.currentTimeMillis() - 86400000)});
        } catch (Exception e2) {
            h.b("ToolboxCacheManager", "clearTriggerPreParseData error: ", e2);
        }
    }

    public void b(int i, int i2, s<AdModel> sVar) {
        a(i, "native", i2, f2053a, "native_", sVar, "high", 20, null);
    }
}
