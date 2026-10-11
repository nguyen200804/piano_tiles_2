package com.cmplay.ad.g;

import com.cmplay.tile2.GameApp;
import com.cmplay.util.aa;
import com.cmplay.util.c;
import com.cmplay.util.t;
import com.cmplay.util.v;
import com.mopub.common.Constants;
import java.net.HttpURLConnection;
import java.net.URL;

/* compiled from: AdUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    public static void a(final int i, final int i2, final boolean z) {
        com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.ad.g.a.1
            @Override // java.lang.Runnable
            public void run() {
                StringBuffer stringBuffer = new StringBuffer();
                if (i2 > 0) {
                    stringBuffer.append("http://p2.cmcm.com/adv-stat?").append("s=").append(i).append("&c=").append(i2).append("&m=").append(t.d(GameApp.f1598a)).append("&v=").append(v.b(GameApp.f1598a));
                    c.b("AdUtil", "记录 recordAdStatus = " + ((Object) stringBuffer));
                    boolean b2 = a.b(stringBuffer.toString());
                    switch (i) {
                        case 1:
                            if (b2) {
                                aa.a("key_ad_video_show", 0);
                                break;
                            } else if (!z) {
                                aa.a("key_ad_video_show", i2);
                                break;
                            }
                            break;
                        case 2:
                            if (b2) {
                                aa.a("key_ad_interstitial_show", 0);
                                break;
                            } else if (!z) {
                                aa.a("key_ad_interstitial_show", i2);
                                break;
                            }
                            break;
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v9 */
    public static boolean b(String str) {
        HttpURLConnection httpURLConnection;
        ?? r2 = 0;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            httpURLConnection.setConnectTimeout(Constants.TEN_SECONDS_MILLIS);
            httpURLConnection.setReadTimeout(Constants.TEN_SECONDS_MILLIS);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod("GET");
        } catch (Exception e2) {
            httpURLConnection2 = httpURLConnection;
            e = e2;
            e.printStackTrace();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            r2 = "失败 = " + str;
            c.b("AdUtil", r2);
            return false;
        } catch (Throwable th2) {
            r2 = httpURLConnection;
            th = th2;
            if (r2 != 0) {
                r2.disconnect();
            }
            throw th;
        }
        if (httpURLConnection.getResponseCode() == 200) {
            c.b("AdUtil", "成功 = conn.getContent() = " + str);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return true;
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        r2 = "失败 = " + str;
        c.b("AdUtil", r2);
        return false;
    }
}
