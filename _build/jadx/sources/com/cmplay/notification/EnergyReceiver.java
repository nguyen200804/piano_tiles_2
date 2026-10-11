package com.cmplay.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class EnergyReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.d("cheng", "EnergyReceiver...onReceive");
        if (intent != null && TextUtils.equals(a.f1572a, intent.getAction())) {
            Log.d("cheng", "EnergyReceiver...showEnergyNotification");
            a.a(context, intent.getStringExtra(a.f1573b), intent.getStringExtra(a.c));
        }
    }
}
