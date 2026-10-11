package com.cmplay.internalpush;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;

/* compiled from: WifiStateReceiver.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class t {
    private static t c;

    /* renamed from: a, reason: collision with root package name */
    private boolean f1493a = true;

    /* renamed from: b, reason: collision with root package name */
    private Handler f1494b = new Handler(Looper.getMainLooper());
    private BroadcastReceiver d = new BroadcastReceiver() { // from class: com.cmplay.internalpush.t.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkInfo networkInfo;
            if (t.this.f1493a) {
                t.this.f1493a = false;
            } else if (((WifiManager) context.getSystemService("wifi")) != null && "android.net.wifi.STATE_CHANGE".equals(intent.getAction()) && (networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo")) != null && networkInfo.isConnected()) {
                t.this.f1494b.postDelayed(new Runnable() { // from class: com.cmplay.internalpush.t.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.cmplay.base.util.g.a("zzb_cloud", "网络切换，拉取魔方-----");
                        com.ijinshan.cloudconfig.a.a(1, "");
                    }
                }, 1000L);
            }
        }
    };

    public static t a() {
        if (c == null) {
            synchronized (t.class) {
                if (c == null) {
                    c = new t();
                }
            }
        }
        return c;
    }

    public void a(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        context.registerReceiver(this.d, intentFilter);
    }
}
