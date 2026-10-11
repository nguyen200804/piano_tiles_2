package com.example.luckywheel.a;

import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private String f2281a;

    /* renamed from: b, reason: collision with root package name */
    private int f2282b = -1;
    private JSONObject c = null;

    public i(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byte[] bArr = new byte[4096];
            byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    } else {
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                } catch (Exception e) {
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e2) {
                        }
                    }
                    a();
                } catch (Throwable th) {
                    byteArrayOutputStream2 = byteArrayOutputStream;
                    th = th;
                    if (byteArrayOutputStream2 != null) {
                        try {
                            byteArrayOutputStream2.close();
                        } catch (Exception e3) {
                        }
                    }
                    throw th;
                }
            }
            this.f2281a = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (Exception e4) {
                }
            }
        } catch (Exception e5) {
            byteArrayOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        a();
    }

    protected void a() {
        if (TextUtils.isEmpty(this.f2281a)) {
            return;
        }
        try {
            this.c = new JSONObject(this.f2281a);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if (this.c != null) {
            this.f2282b = this.c.optInt("error", -1);
        }
    }

    public String b() {
        return this.f2281a;
    }

    public int c() {
        return this.f2282b;
    }

    public JSONObject d() {
        return this.c;
    }
}
