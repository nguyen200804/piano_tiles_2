package com.ijinshan.cloudconfig.deepcloudconfig;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CloudDataChangeReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("com.ijinshan.krcmd.deepcloudconfig.CloudDataChangeReceiver.datachange")) {
            com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "CloudDataChangeReceiver.onReceive  CloudConfig.getInstance().reloadData()");
            a.a().b();
        }
    }
}
