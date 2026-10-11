package com.duapps.ad.c.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Base64;
import com.applovin.sdk.AppLovinErrorCodes;
import com.duapps.ad.base.g;
import com.duapps.ad.base.h;
import com.duapps.ad.base.m;
import com.duapps.ad.base.p;
import com.duapps.ad.base.r;
import com.duapps.ad.base.t;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: StrategyPuller.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends Handler {

    /* renamed from: b, reason: collision with root package name */
    private static final String f2107b = d.class.getSimpleName();
    private static String c = "http://api.mobula.sdk.duapps.col/adunion/slot/getSrcPrio?";

    /* renamed from: a, reason: collision with root package name */
    private Context f2108a;

    public d(Context context) {
        this.f2108a = context;
        d();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (5 == i) {
            removeMessages(5);
            a aVar = new a(this.f2108a);
            if (Looper.getMainLooper() == Looper.myLooper()) {
                t.a().a(aVar);
            } else {
                post(aVar);
            }
            sendEmptyMessageDelayed(5, 21600000L);
        } else if (7 == i) {
            removeMessages(7);
            long n = m.n(this.f2108a);
            if (n > 0) {
                e.a(this.f2108a).a((String) null);
                sendEmptyMessageDelayed(7, n);
            }
        }
        super.handleMessage(message);
    }

    private void d() {
        if (m.t(this.f2108a) == 0) {
            m.c(this.f2108a, SystemClock.elapsedRealtime());
        }
    }

    public void a() {
        if (com.duapps.ad.c.b.c.a(this.f2108a)) {
            long currentTimeMillis = System.currentTimeMillis() - m.e(this.f2108a);
            if (currentTimeMillis < 0) {
                m.d(this.f2108a);
            } else {
                sendEmptyMessageDelayed(5, currentTimeMillis <= 21600000 ? 21600000 - currentTimeMillis : 0L);
                sendEmptyMessage(7);
            }
        }
    }

    public static void a(Context context, JSONObject jSONObject) {
        String str;
        long j;
        m.f(context, jSONObject.optInt("isPkgT") > 0);
        m.d(context, jSONObject.getInt("logPriority"));
        m.g(context, jSONObject.has("isPT") ? jSONObject.optInt("isPT") > 0 : true);
        h.c("TEST", "getSrc logPriority :" + jSONObject.getInt("logPriority"));
        String optString = jSONObject.optString("imId");
        try {
            h.c("TEST", "from server Inmobi ID = " + optString);
            str = new String(com.duapps.ad.base.b.a("8a1n9d0i3c1y0c2f", "8a1n9d0i3c1y0c2f", Base64.decode(optString.getBytes(), 0)));
            try {
                h.c("TEST", "AES Inmobi ID = " + str);
            } catch (Exception e) {
            }
        } catch (Exception e2) {
            str = optString;
        }
        m.b(context, str);
        h.c("TEST", "getSrc Inmobi ID = " + str);
        long optLong = jSONObject.optLong("tcppCacheTime", 0L);
        if (optLong > 0) {
            optLong = optLong * 60 * 1000;
        }
        m.b(context, optLong);
        if (jSONObject.has("tcppPullTime")) {
            int i = jSONObject.getInt("tcppPullTime");
            h.c(f2107b, "tcppPullTime  = " + i);
            if (i == 0 || i >= 30) {
                m.g(context, i);
            }
        }
        int optInt = jSONObject.optInt("fbct", 0);
        h.c("StrategyPuller", "fbct  = " + optInt);
        if (optInt > 0) {
            m.h(context, optInt);
        }
        h.c("TEST", "getSrcPrio --> tcppCacheTime : " + optLong);
        boolean z = jSONObject.optInt("isAllowC", 1) > 0;
        boolean z2 = jSONObject.optInt("isAllowT", 1) > 0;
        boolean z3 = jSONObject.optInt("isAllowS", 1) > 0;
        long optLong2 = jSONObject.optLong("nuInterval", 0L);
        if (optLong2 <= 0) {
            j = 14400000;
        } else {
            j = optLong2 * 60 * 1000;
        }
        m.b(context, z);
        m.c(context, z2);
        m.d(context, z3);
        m.d(context, j);
        m.a(context, jSONObject.optInt("itwd", 1) > 0);
        JSONArray optJSONArray = jSONObject.optJSONArray("priorityBrowsers");
        if (optJSONArray != null && optJSONArray.length() > 0) {
            h.c("StrategyPuller", "browserArray : " + optJSONArray.toString());
            m.c(context, optJSONArray.toString());
        }
        m.d(context, jSONObject.optString("pk"));
        String optString2 = jSONObject.optString("exg");
        h.c("StrategyPuller", "exg:" + optString2);
        m.g(context, optString2);
        String optString3 = jSONObject.optString("location");
        h.c("StrategyPuller", "location:" + optString3);
        m.f(context, optString3);
        boolean z4 = jSONObject.optInt("isSus", 1) > 0;
        h.c("StrategyPuller", "isSus:" + z4);
        m.e(context, z4);
    }

    /* compiled from: StrategyPuller.java */
    private static class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private Context f2109a;

        public a(Context context) {
            this.f2109a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(JSONObject jSONObject) {
            JSONObject jSONObject2;
            try {
                String f = com.duapps.ad.c.b.c.f(jSONObject.getString("datas"));
                jSONObject2 = new JSONObject(f);
                h.c("decode", "strategy decode succ:--> " + f);
            } catch (Exception e) {
                jSONObject2 = jSONObject.getJSONObject("datas");
                h.c("decode", "strategy decode fail" + jSONObject.toString());
            }
            d.a(this.f2109a, jSONObject2);
            JSONArray jSONArray = jSONObject2.getJSONArray("list");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    m.a(this.f2109a, optJSONObject.optInt("sid"), optJSONObject.toString());
                }
            }
            int optInt = jSONObject2.optInt("tcppTctp");
            m.f(this.f2109a, optInt);
            h.c("TEST", "tcppTctp = " + optInt);
            m.d(this.f2109a);
        }

        @Override // java.lang.Runnable
        public void run() {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                List<NameValuePair> a2 = g.a(this.f2109a, p.b(this.f2109a), true);
                HashSet<Integer> a3 = p.a(this.f2109a).a();
                StringBuilder sb = new StringBuilder();
                Iterator<Integer> it = a3.iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append(",");
                }
                String sb2 = sb.toString();
                if (sb2.length() > 1) {
                    sb2 = sb2.substring(0, sb2.length() - 1);
                }
                a2.add(new BasicNameValuePair("sid", sb2));
                a2.add(new BasicNameValuePair("res", "1080*460,244*244,170*170,108*108"));
                URL url = new URL(d.c + URLEncodedUtils.format(a2, "UTF-8"));
                h.c("test", "get src priority url: " + url);
                r.a(url, new r.b() { // from class: com.duapps.ad.c.a.d.a.1
                    @Override // com.duapps.ad.base.c
                    public void a(int i, r.a aVar) {
                        m.a(a.this.f2109a, aVar.c);
                        JSONObject jSONObject = aVar.f2087a;
                        if (jSONObject == null) {
                            h.c(d.f2107b, "getSrc code :" + i + " ,\n responseJson is null!");
                            return;
                        }
                        h.c(d.f2107b, "getSrc code :" + i + " ,\n response: " + jSONObject.toString());
                        if (200 == i && jSONObject != null) {
                            try {
                                a.this.a(jSONObject);
                            } catch (JSONException e) {
                                com.duapps.ad.stats.c.a(a.this.f2109a, -101, SystemClock.elapsedRealtime() - elapsedRealtime);
                                return;
                            }
                        } else if (304 == i) {
                            return;
                        }
                        com.duapps.ad.stats.c.a(a.this.f2109a, i, SystemClock.elapsedRealtime() - elapsedRealtime);
                    }

                    @Override // com.duapps.ad.base.c
                    public void a(int i, String str) {
                        m.d(a.this.f2109a);
                        com.duapps.ad.stats.c.a(a.this.f2109a, i, SystemClock.elapsedRealtime() - elapsedRealtime);
                    }
                }, m.f(this.f2109a));
            } catch (MalformedURLException e) {
                com.duapps.ad.stats.c.a(this.f2109a, AppLovinErrorCodes.FETCH_AD_TIMEOUT, SystemClock.elapsedRealtime() - elapsedRealtime);
            }
            e.a(this.f2109a).a((String) null);
        }
    }
}
