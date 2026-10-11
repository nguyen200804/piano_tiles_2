package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinLogger;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class cv {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f510a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinLogger f511b;

    cv(AppLovinSdkImpl appLovinSdkImpl) {
        this.f510a = appLovinSdkImpl;
        this.f511b = appLovinSdkImpl.getLogger();
    }

    private int a(Throwable th) {
        if (th instanceof SocketTimeoutException) {
            return AppLovinErrorCodes.FETCH_AD_TIMEOUT;
        }
        if (!(th instanceof IOException)) {
            return th instanceof JSONException ? -104 : -1;
        }
        String message = th.getMessage();
        return (message == null || !message.toLowerCase(Locale.ENGLISH).contains("authentication challenge")) ? -100 : 401;
    }

    private HttpURLConnection a(String str, String str2, int i) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setConnectTimeout(i < 0 ? ((Integer) this.f510a.a(av.t)).intValue() : i);
        if (i < 0) {
            i = ((Integer) this.f510a.a(av.v)).intValue();
        }
        httpURLConnection.setReadTimeout(i);
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setAllowUserInteraction(false);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    private static void a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception e) {
            }
        }
    }

    private void a(String str, int i, String str2, cw cwVar) {
        this.f511b.d("ConnectionManager", i + " received from from \"" + str2 + "\": " + str);
        if (i < 200 || i >= 300) {
            this.f511b.e("ConnectionManager", i + " error received from \"" + str2 + "\"");
            cwVar.a(i);
            return;
        }
        JSONObject jSONObject = new JSONObject();
        if (i != 204 && str != null && str.length() > 2) {
            jSONObject = new JSONObject(str);
        }
        cwVar.a(jSONObject, i);
    }

    private void a(String str, String str2, int i, long j) {
        this.f511b.i("ConnectionManager", "Successful " + str + " returned " + i + " in " + ((System.currentTimeMillis() - j) / 1000.0f) + " s over " + cx.a(this.f510a) + " to \"" + str2 + "\"");
    }

    private void a(String str, String str2, int i, long j, Throwable th) {
        this.f511b.e("ConnectionManager", "Failed " + str + " returned " + i + " in " + ((System.currentTimeMillis() - j) / 1000.0f) + " s over " + cx.a(this.f510a) + " to \"" + str2 + "\"", th);
    }

    private static void a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
            }
        }
    }

    void a(String str, int i, cw cwVar) {
        a(str, "GET", i, null, true, cwVar);
    }

    void a(String str, int i, JSONObject jSONObject, boolean z, cw cwVar) {
        a(str, "POST", i, jSONObject, z, cwVar);
    }

    void a(String str, int i, boolean z, cw cwVar) {
        a(str, "GET", i, null, z, cwVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x015f A[Catch: all -> 0x0190, TRY_ENTER, TryCatch #1 {all -> 0x0190, blocks: (B:25:0x00b9, B:33:0x0110, B:35:0x0116, B:37:0x011d, B:28:0x015f, B:29:0x0163, B:56:0x0136, B:57:0x0142), top: B:21:0x0087 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void a(java.lang.String r14, java.lang.String r15, int r16, org.json.JSONObject r17, boolean r18, com.applovin.impl.sdk.cw r19) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.cv.a(java.lang.String, java.lang.String, int, org.json.JSONObject, boolean, com.applovin.impl.sdk.cw):void");
    }

    void a(String str, JSONObject jSONObject, cw cwVar) {
        a(str, "POST", -1, jSONObject, true, cwVar);
    }
}
