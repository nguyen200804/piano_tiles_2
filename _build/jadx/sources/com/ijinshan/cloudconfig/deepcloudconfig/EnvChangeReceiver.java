package com.ijinshan.cloudconfig.deepcloudconfig;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.ijinshan.cloudconfig.d.d;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class EnvChangeReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().contentEquals("android.intent.action.LOCALE_CHANGED")) {
            String b2 = com.ijinshan.cloudconfig.a.b.b();
            if (TextUtils.isEmpty(b2)) {
                b2 = d.g(context);
            }
            if ("com.cleanmaster.mguard_cn".equals(b2) || "com.cleanmaster.mguard".equals(b2)) {
                c.a().a("");
            } else {
                c.a().a(false);
            }
        }
    }
}
