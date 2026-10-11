package com.cmcm.dmc.sdk.e;

import android.content.SharedPreferences;
import android.location.Location;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class l extends b implements com.cmcm.dmc.sdk.a.e {

    /* renamed from: a, reason: collision with root package name */
    private com.cmcm.dmc.sdk.a.h f743a;

    private JSONArray c() {
        JSONArray jSONArray = new JSONArray();
        try {
            WifiManager wifiManager = (WifiManager) com.cmcm.dmc.sdk.a.c.c().getSystemService("wifi");
            List<ScanResult> scanResults = wifiManager.getScanResults();
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (scanResults != null && scanResults.size() > 0) {
                for (ScanResult scanResult : scanResults) {
                    if (scanResult != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("ssid", scanResult.SSID);
                        jSONObject.put("rssid", WifiManager.calculateSignalLevel(scanResult.level, 100));
                        jSONObject.put("bssid", scanResult.BSSID);
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
                }
            }
        } catch (Exception e) {
        }
        return jSONArray;
    }

    private int i() {
        return Math.max(com.cmcm.dmc.sdk.a.c.a(f(), "interval", 30), 5) * 60 * 1000;
    }

    @Override // com.cmcm.dmc.sdk.a.e
    public void a(Location location, int i) {
        if (i == 3) {
            com.cmcm.dmc.sdk.a.c.d().postDelayed(new Runnable() { // from class: com.cmcm.dmc.sdk.e.l.2
                @Override // java.lang.Runnable
                public void run() {
                    if (l.this.f743a != null) {
                        l.this.f743a.a(l.this, "");
                    }
                }
            }, 300000L);
            return;
        }
        SharedPreferences h = h();
        try {
            JSONObject jSONObject = new JSONObject();
            if (location != null) {
                if (h.getLong("location_location_time", 0L) != location.getTime()) {
                    JSONArray c = c();
                    jSONObject.put("provider", location.getProvider());
                    jSONObject.put("longitude", location.getLongitude());
                    jSONObject.put("latitude", location.getLatitude());
                    jSONObject.put("time", location.getTime() / 1000);
                    jSONObject.put("accuracy", (int) (location.getAccuracy() + 0.5d));
                    if (c != null && c.length() > 0) {
                        jSONObject.put("wifi", c);
                    }
                } else {
                    i = 2;
                }
            }
            jSONObject.put("errorcode", i);
            a(jSONObject.toString());
        } catch (JSONException e) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverLocation", "" + e.getMessage());
        }
        if (i == 0 && location != null) {
            SharedPreferences.Editor edit = h.edit();
            edit.putLong("location_location_time", location.getTime());
            edit.apply();
        }
        if (this.f743a == null || i == 6) {
            return;
        }
        com.cmcm.dmc.sdk.a.c.d().postDelayed(new Runnable() { // from class: com.cmcm.dmc.sdk.e.l.3
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f743a != null) {
                    l.this.f743a.a(l.this, "");
                }
            }
        }, i());
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void b() {
        this.f743a = new com.cmcm.dmc.sdk.a.h();
        this.f743a.a();
        com.cmcm.dmc.sdk.a.c.d().postDelayed(new Runnable() { // from class: com.cmcm.dmc.sdk.e.l.1
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f743a != null) {
                    l.this.f743a.a(l.this, "");
                }
            }
        }, 300000L);
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public String f() {
        return "location";
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void g() {
        if (this.f743a != null) {
            this.f743a = null;
        }
    }
}
