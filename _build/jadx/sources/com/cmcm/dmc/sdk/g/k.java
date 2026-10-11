package com.cmcm.dmc.sdk.g;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.cmcm.dmc.sdk.a.q;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k {
    public static String a(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            e.a().b();
            jSONObject.put("sdk_type", 1);
            String[] a2 = q.a(context);
            jSONObject.put("mcc", a2[0]);
            jSONObject.put("mnc", a2[1]);
            jSONObject.put("xaid", q.b(context));
            jSONObject.put("macAddress", q.a());
            jSONObject.put("root", q.e());
            jSONObject.put("brand", Build.BRAND);
            jSONObject.put("model", Build.MODEL);
            String a3 = a.b().a();
            if (a3 != null) {
                a3.trim();
            }
            jSONObject.put("gaid", a3);
            jSONObject.put("devicebirthday", q.f() / 1000);
            jSONObject.put("osver", Build.VERSION.RELEASE);
            jSONObject.put("hostapk", context.getPackageName());
            jSONObject.put("hostver", q.g(context));
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            jSONObject.put("xdpi", displayMetrics.xdpi);
            jSONObject.put("ydpi", displayMetrics.ydpi);
            jSONObject.put("widthPixels", displayMetrics.widthPixels);
            jSONObject.put("heightPixels", displayMetrics.heightPixels);
            jSONObject.put("apilevel", Build.VERSION.SDK_INT);
            jSONObject.put("error", e.a().c());
            jSONObject.put("rom_mem", q.c());
            jSONObject.put("ram_mem", q.d(context));
            return jSONObject.toString();
        } catch (Exception e) {
            return "";
        }
    }
}
