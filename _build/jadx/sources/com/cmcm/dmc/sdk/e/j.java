package com.cmcm.dmc.sdk.e;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j extends b {
    public static String c(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            PackageManager packageManager = com.cmcm.dmc.sdk.a.c.c().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            jSONObject.put("packageName", str);
            jSONObject.put("isSystemApp", (packageInfo.applicationInfo.flags & 1) != 0);
            jSONObject.put("versionCode", packageInfo.versionCode);
            jSONObject.put("versionName", packageInfo.versionName);
            jSONObject.put("appSource", TextUtils.isEmpty(packageManager.getInstallerPackageName(str)) ? "" : packageManager.getInstallerPackageName(str));
            jSONObject.put("installDate", packageInfo.firstInstallTime);
            return jSONObject.toString();
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverInstApp", "" + e.getMessage());
            return null;
        }
    }

    public void b(String str) {
        String c = c(str);
        if (c != null) {
            a(c);
        }
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public String f() {
        return "inst_app";
    }
}
