package com.mopub.nativesdk.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Receiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction())) {
            String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            if (!TextUtils.isEmpty(schemeSpecificPart)) {
                C0219a.b();
                C0219a.a(schemeSpecificPart);
            }
        }
    }
}
