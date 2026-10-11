package com.mnt.impl.b;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final String f3935a;
    public static c e;

    /* renamed from: b, reason: collision with root package name */
    public Context f3936b;
    public AlarmManager c;
    public BroadcastReceiver d;
    public PendingIntent f;

    static {
        AlarmManager.class.getName();
        f3935a = com.mnt.impl.e.mi;
    }

    private c(Context context) {
        if (context != null) {
            this.f3936b = context.getApplicationContext();
            this.c = (AlarmManager) context.getSystemService("alarm");
            this.d = new d();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(f3935a);
            this.f3936b.registerReceiver(this.d, intentFilter);
        }
    }

    public static synchronized c a(Context context) {
        c cVar;
        synchronized (c.class) {
            if (e == null) {
                e = new c(context);
            }
            cVar = e;
        }
        return cVar;
    }
}
