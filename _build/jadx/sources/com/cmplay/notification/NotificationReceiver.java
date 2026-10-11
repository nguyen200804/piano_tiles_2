package com.cmplay.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NotificationReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.notification.NotificationReceiver.1
            @Override // java.lang.Runnable
            public void run() {
                Log.d("mys", "NotificationReceiver checkAndShowNotification");
            }
        });
    }
}
