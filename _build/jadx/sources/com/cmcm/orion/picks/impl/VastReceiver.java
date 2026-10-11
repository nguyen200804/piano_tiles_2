package com.cmcm.orion.picks.impl;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.cmcm.orion.picks.impl.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static VastReceiver f895a = null;

    /* renamed from: b, reason: collision with root package name */
    private static final List<WeakReference<a.InterfaceC0019a>> f896b = new ArrayList();
    private static boolean c = false;

    public static void a(a.InterfaceC0019a interfaceC0019a) {
        if (interfaceC0019a != null) {
            f896b.add(new WeakReference<>(interfaceC0019a));
        }
    }

    public static void b(a.InterfaceC0019a interfaceC0019a) {
        Iterator<WeakReference<a.InterfaceC0019a>> it = f896b.iterator();
        while (it.hasNext()) {
            if (it.next().get() == interfaceC0019a) {
                it.remove();
                return;
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        a.InterfaceC0019a interfaceC0019a;
        boolean z;
        KeyguardManager keyguardManager;
        for (WeakReference<a.InterfaceC0019a> weakReference : f896b) {
            if (weakReference != null && (interfaceC0019a = weakReference.get()) != null) {
                String action = intent.getAction();
                if ("android.intent.action.SCREEN_OFF".equals(action)) {
                    c = false;
                    interfaceC0019a.c();
                } else if ("android.intent.action.USER_PRESENT".equals(action)) {
                    if (!c) {
                        c = true;
                        interfaceC0019a.c_();
                    }
                } else if ("android.media.VOLUME_CHANGED_ACTION".equals(action)) {
                    interfaceC0019a.e();
                } else if (!"android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action) && "android.intent.action.SCREEN_ON".equals(action) && !c) {
                    if (context == null || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null) {
                        z = true;
                    } else {
                        z = Build.VERSION.SDK_INT >= 16 ? keyguardManager.isKeyguardLocked() : true;
                    }
                    if (!z) {
                        c = true;
                        interfaceC0019a.c_();
                    }
                }
            }
        }
    }

    public static void a(Context context) {
        if (context != null && f895a == null) {
            f895a = new VastReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
            intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
            context.getApplicationContext().registerReceiver(f895a, intentFilter);
        }
    }

    public static void b(Context context) {
        if (context != null && f895a != null && f896b.size() == 0) {
            context.getApplicationContext().unregisterReceiver(f895a);
            f895a = null;
        }
    }
}
