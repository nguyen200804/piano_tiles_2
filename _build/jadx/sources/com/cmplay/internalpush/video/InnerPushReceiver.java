package com.cmplay.internalpush.video;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class InnerPushReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static InnerPushReceiver f1525a = null;

    /* renamed from: b, reason: collision with root package name */
    private static final List<WeakReference<a>> f1526b = new ArrayList();

    public interface a {
        void a(Intent intent);

        void b(Intent intent);

        void c(Intent intent);

        void d(Intent intent);
    }

    public static void a(a aVar) {
        if (aVar != null) {
            f1526b.add(new WeakReference<>(aVar));
        }
    }

    public static void b(a aVar) {
        Iterator<WeakReference<a>> it = f1526b.iterator();
        while (it.hasNext()) {
            if (it.next().get() == aVar) {
                it.remove();
                return;
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        a aVar;
        for (WeakReference<a> weakReference : f1526b) {
            if (weakReference != null && (aVar = weakReference.get()) != null) {
                String action = intent.getAction();
                if ("android.intent.action.SCREEN_OFF".equals(action)) {
                    aVar.a(intent);
                } else if ("android.intent.action.USER_PRESENT".equals(action)) {
                    aVar.b(intent);
                } else if ("android.media.VOLUME_CHANGED_ACTION".equals(action)) {
                    aVar.c(intent);
                } else if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action)) {
                    aVar.d(intent);
                }
            }
        }
    }

    public static void a(Context context) {
        if (context != null && f1525a == null) {
            f1525a = new InnerPushReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
            intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
            context.getApplicationContext().registerReceiver(f1525a, intentFilter);
        }
    }

    public static void b(Context context) {
        if (context != null && f1525a != null && f1526b.size() == 0) {
            try {
                context.getApplicationContext().unregisterReceiver(f1525a);
            } catch (Exception e) {
                e.printStackTrace();
            }
            f1525a = null;
        }
    }
}
