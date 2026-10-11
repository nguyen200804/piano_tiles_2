package com.mnt.impl.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.mnt.impl.f.m;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class d extends BroadcastReceiver {
    d() {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (c.f3935a.equals(intent.getAction())) {
            m.a(context);
        }
    }
}
