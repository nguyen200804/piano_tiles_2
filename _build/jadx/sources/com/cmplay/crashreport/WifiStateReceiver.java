package com.cmplay.crashreport;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WifiStateReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private Handler f1286a = new Handler();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        NetworkInfo networkInfo;
        if (((WifiManager) context.getSystemService("wifi")) != null && "android.net.wifi.STATE_CHANGE".equals(intent.getAction()) && (networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo")) != null && networkInfo.isConnected()) {
            this.f1286a.postDelayed(new v(this, context), 1000L);
        }
    }
}
