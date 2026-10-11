package com.cmplay.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.cmplay.util.NativeUtil;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NotificationDeleteReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && intent.hasExtra(":notification_id")) {
            try {
                NativeUtil.onNotificationRemoved(intent.getIntExtra(":notification_id", -1), System.currentTimeMillis() / 1000, intent.getStringExtra(":extra_data"));
            } catch (Exception e) {
            }
        }
    }
}
