package com.cmplay.webview.d;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.cmplay.util.aa;
import com.mopub.common.Constants;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PreLoadImage.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: b, reason: collision with root package name */
    private static c f1938b;

    /* renamed from: a, reason: collision with root package name */
    private String f1939a = a.a("/h5_down/", ".nomedia");

    public c() {
        com.cmplay.util.c.b("ly", "PreLoadImage mPath = " + this.f1939a);
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            if (f1938b == null) {
                synchronized (c.class) {
                    if (f1938b == null) {
                        f1938b = new c();
                    }
                }
            }
            cVar = f1938b;
        }
        return cVar;
    }

    public String[] a(String str) {
        String[] strArr = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONArray optJSONArray = new JSONObject(str).optJSONArray("all_url");
            String[] strArr2 = new String[optJSONArray.length()];
            int i = 0;
            while (true) {
                try {
                    int i2 = i;
                    if (i2 >= optJSONArray.length()) {
                        return strArr2;
                    }
                    strArr2[i2] = ((JSONObject) optJSONArray.get(i2)).optString("url");
                    i = i2 + 1;
                } catch (JSONException e) {
                    strArr = strArr2;
                    e = e;
                    e.printStackTrace();
                    return strArr;
                }
            }
        } catch (JSONException e2) {
            e = e2;
        }
    }

    public boolean b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            long optLong = jSONObject.optLong("startTime");
            long optLong2 = jSONObject.optLong("endTime");
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            if (currentTimeMillis >= optLong && currentTimeMillis <= optLong2) {
                return true;
            }
            aa.a("key_load_over_image", false);
            return false;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void b() {
        new Thread(new Runnable() { // from class: com.cmplay.webview.d.c.1
            @Override // java.lang.Runnable
            public void run() {
                String[] a2;
                String a3 = com.cmplay.cloud.a.a().a(2, "section_common", "cloud_key_h5_down_load_image", "");
                com.cmplay.util.c.b("ly", "startLoadImageAll json = " + a3 + " isTimeNeedDown(json) = " + c.this.b(a3) + " SharePreferenceHelper = " + aa.b("key_load_over_image", false));
                if (!TextUtils.isEmpty(a3) && c.this.b(a3) && !aa.b("key_load_over_image", false) && (a2 = c.this.a(a3)) != null && a2.length >= 1 && !TextUtils.isEmpty(c.this.f1939a)) {
                    for (String str : a2) {
                        if (!a.b(c.this.f1939a, str)) {
                            c.this.a(str, a.a(str));
                        }
                    }
                    aa.a("key_load_over_image", true);
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        InputStream c = c(str);
        if (c != null) {
            Bitmap decodeStream = BitmapFactory.decodeStream(c);
            a(decodeStream, str2);
            decodeStream.recycle();
        }
    }

    private InputStream c(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(Constants.TEN_SECONDS_MILLIS);
            httpURLConnection.setReadTimeout(Constants.TEN_SECONDS_MILLIS);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod("GET");
            if (httpURLConnection.getResponseCode() == 200) {
                return httpURLConnection.getInputStream();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private void a(Bitmap bitmap, String str) {
        if (bitmap != null && !bitmap.isRecycled() && !TextUtils.isEmpty(this.f1939a)) {
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(this.f1939a + str)));
                try {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 100, bufferedOutputStream);
                    bufferedOutputStream.flush();
                } finally {
                    bufferedOutputStream.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
