package com.cmcm.orion.utils.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.cmcm.orion.picks.impl.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ReceiverUtils extends BroadcastReceiver {

    /* renamed from: b, reason: collision with root package name */
    private static ReceiverUtils f1077b;

    /* renamed from: a, reason: collision with root package name */
    public static List<a.InterfaceC0019a> f1076a = new ArrayList();
    private static final Object c = new Object();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.SCREEN_OFF".equals(action)) {
            Iterator<a.InterfaceC0019a> it = f1076a.iterator();
            while (it.hasNext()) {
                it.next();
            }
        } else if ("android.intent.action.SCREEN_ON".equals(action)) {
            Iterator<a.InterfaceC0019a> it2 = f1076a.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    public static void a(Context context) {
        if (context != null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            if (f1077b == null) {
                f1077b = new ReceiverUtils();
            }
            context.registerReceiver(f1077b, intentFilter);
        }
    }
}
