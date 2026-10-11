package com.mopub.dg.adsdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.mopub.dg.e.a.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DGReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        new a();
        a.a(context, intent);
    }
}
