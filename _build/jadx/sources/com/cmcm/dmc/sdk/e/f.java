package com.cmcm.dmc.sdk.e;

import android.app.AppOpsManager;
import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f extends b {

    /* renamed from: a, reason: collision with root package name */
    private com.cmcm.dmc.sdk.a.l f728a;

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        JSONArray i = i();
        if (i != null) {
            a(i.toString());
        }
    }

    private static JSONArray i() {
        WifiManager wifiManager = (WifiManager) com.cmcm.dmc.sdk.a.c.c().getSystemService("wifi");
        if (wifiManager == null) {
            return null;
        }
        try {
            List<ScanResult> scanResults = wifiManager.getScanResults();
            if (scanResults != null && scanResults.size() > 0) {
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                JSONArray jSONArray = new JSONArray();
                for (ScanResult scanResult : scanResults) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("bssid", scanResult.BSSID);
                    jSONObject.put("ssid", scanResult.SSID);
                    jSONObject.put("rssid", WifiManager.calculateSignalLevel(scanResult.level, 100));
                    if (connectionInfo != null) {
                        String ssid = connectionInfo.getSSID();
                        if (!TextUtils.isEmpty(ssid) && ssid.contains("\"")) {
                            ssid = ssid.replaceAll("\"", "");
                        }
                        if (connectionInfo.getBSSID().equals(scanResult.BSSID) && scanResult.SSID.equals(ssid)) {
                            jSONObject.put("connect", 1);
                        } else {
                            jSONObject.put("connect", 0);
                        }
                    }
                    jSONArray.put(jSONObject);
                }
                return jSONArray;
            }
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverAvailableNetworks", e.getMessage());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int j() {
        return Math.max(com.cmcm.dmc.sdk.a.c.a(f(), "interval", 60), 5) * 60 * 1000;
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void b() {
        Context c = com.cmcm.dmc.sdk.a.c.c();
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) c.getSystemService("appops");
                int checkOp = appOpsManager.checkOp("android:fine_location", Process.myUid(), c.getPackageName());
                int checkOp2 = appOpsManager.checkOp("android:coarse_location", Process.myUid(), c.getPackageName());
                if (checkOp != 0 && checkOp2 != 0) {
                    return;
                }
            } catch (Throwable th) {
                com.cmcm.dmc.sdk.a.i.a("ReceiverAvailableNetworks", th.getMessage());
            }
        }
        this.f728a = new com.cmcm.dmc.sdk.a.l();
        this.f728a.a(new Runnable() { // from class: com.cmcm.dmc.sdk.e.f.1
            @Override // java.lang.Runnable
            public void run() {
                if (f.this.f728a != null) {
                    f.this.c();
                    f.this.f728a.a(f.this.j());
                }
            }
        }, 300000L);
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public String f() {
        return "available_network_list";
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void g() {
        if (this.f728a != null) {
            this.f728a.b();
            this.f728a = null;
        }
    }
}
