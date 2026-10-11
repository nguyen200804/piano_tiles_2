package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BoltsMeasurementEventListener extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static BoltsMeasurementEventListener f3150a;

    /* renamed from: b, reason: collision with root package name */
    private Context f3151b;

    private BoltsMeasurementEventListener(Context context) {
        this.f3151b = context.getApplicationContext();
    }

    private void a() {
        LocalBroadcastManager.getInstance(this.f3151b).registerReceiver(this, new IntentFilter("com.parse.bolts.measurement_event"));
    }

    private void b() {
        LocalBroadcastManager.getInstance(this.f3151b).unregisterReceiver(this);
    }

    public static BoltsMeasurementEventListener a(Context context) {
        if (f3150a != null) {
            return f3150a;
        }
        f3150a = new BoltsMeasurementEventListener(context);
        f3150a.a();
        return f3150a;
    }

    protected void finalize() throws Throwable {
        try {
            b();
        } finally {
            super.finalize();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        com.facebook.appevents.a b2 = com.facebook.appevents.a.b(context);
        String str = "bf_" + intent.getStringExtra("event_name");
        Bundle bundleExtra = intent.getBundleExtra("event_args");
        Bundle bundle = new Bundle();
        for (String str2 : bundleExtra.keySet()) {
            bundle.putString(str2.replaceAll("[^0-9a-zA-Z _-]", "-").replaceAll("^[ -]*", "").replaceAll("[ -]*$", ""), (String) bundleExtra.get(str2));
        }
        b2.a(str, bundle);
    }
}
