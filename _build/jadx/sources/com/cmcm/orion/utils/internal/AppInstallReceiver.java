package com.cmcm.orion.utils.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppInstallReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context != null && intent != null) {
            try {
                Context a2 = com.cmcm.orion.adsdk.e.a();
                if (a2 != null || com.cmcm.orion.adsdk.e.a(context.getApplicationContext())) {
                    if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction()) && !intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                        Uri data = intent.getData();
                        String schemeSpecificPart = data != null ? data.getSchemeSpecificPart() : "";
                        c.a().a(schemeSpecificPart, a2);
                        a.a().a(schemeSpecificPart);
                        return;
                    }
                    if ("android.intent.action.PACKAGE_REMOVED".equals(intent.getAction())) {
                        Uri data2 = intent.getData();
                        c.a().a(data2 != null ? data2.getSchemeSpecificPart() : "");
                    }
                }
            } catch (Throwable th) {
            }
        }
    }
}
