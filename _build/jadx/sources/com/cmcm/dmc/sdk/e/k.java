package com.cmcm.dmc.sdk.e;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k extends a {
    @Override // com.cmcm.dmc.sdk.e.a
    protected void c() {
        try {
            List<PackageInfo> installedPackages = com.cmcm.dmc.sdk.a.c.c().getPackageManager().getInstalledPackages(0);
            PackageManager packageManager = com.cmcm.dmc.sdk.a.c.c().getPackageManager();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < installedPackages.size(); i++) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("packageName", installedPackages.get(i).packageName);
                jSONObject.put("isSystemApp", (installedPackages.get(i).applicationInfo.flags & 1) != 0);
                jSONObject.put("versionCode", installedPackages.get(i).versionCode);
                jSONObject.put("versionName", installedPackages.get(i).versionName);
                jSONObject.put("appSource", TextUtils.isEmpty(packageManager.getInstallerPackageName(installedPackages.get(i).packageName)) ? "" : packageManager.getInstallerPackageName(installedPackages.get(i).packageName));
                jSONObject.put("installDate", installedPackages.get(i).firstInstallTime / 1000);
                arrayList.add(jSONObject);
            }
            a(arrayList.toString());
        } catch (Exception e) {
        }
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public String f() {
        return "inst_app_list";
    }
}
