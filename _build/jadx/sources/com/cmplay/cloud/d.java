package com.cmplay.cloud;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import com.cmplay.tile2.GameApp;

/* compiled from: WifiStateReceiver.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static d f1282a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f1283b = true;
    private BroadcastReceiver c = new BroadcastReceiver() { // from class: com.cmplay.cloud.d.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkInfo networkInfo;
            if (d.this.f1283b) {
                d.this.f1283b = false;
            } else if (((WifiManager) GameApp.f1598a.getSystemService("wifi")) != null && "android.net.wifi.STATE_CHANGE".equals(intent.getAction()) && (networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo")) != null && networkInfo.isConnected()) {
                GameApp.g().a(new Runnable() { // from class: com.cmplay.cloud.d.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.a().a(GameApp.f1598a, false);
                    }
                }, 1000L);
            }
        }
    };

    public static d a() {
        if (f1282a == null) {
            synchronized (d.class) {
                if (f1282a == null) {
                    f1282a = new d();
                }
            }
        }
        return f1282a;
    }

    public void b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        GameApp.f1598a.registerReceiver(this.c, intentFilter);
    }
}
