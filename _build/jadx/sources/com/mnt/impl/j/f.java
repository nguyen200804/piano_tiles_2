package com.mnt.impl.j;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.HashSet;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final String f4082a;
    private static f e;

    /* renamed from: b, reason: collision with root package name */
    Set<a> f4083b = new HashSet();
    private Context c;
    private AlarmManager d;

    public interface a {
        void a();
    }

    static {
        String str = com.mnt.impl.e.jo;
        f4082a = com.mnt.impl.e.jp;
    }

    private f(Context context) {
        this.c = context.getApplicationContext();
        this.d = (AlarmManager) context.getSystemService("alarm");
        new HashSet();
        g gVar = new g(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(f4082a);
        this.c.registerReceiver(gVar, intentFilter);
    }

    public static synchronized f a(Context context) {
        f fVar;
        synchronized (f.class) {
            if (e == null) {
                f fVar2 = new f(context);
                e = fVar2;
                Intent intent = new Intent();
                intent.setAction(f4082a);
                try {
                    fVar2.d.setInexactRepeating(0, System.currentTimeMillis(), (long) ((Math.random() * 4.32E7d) + 4.32E7d), PendingIntent.getBroadcast(fVar2.c, 0, intent, 134217728));
                } catch (Exception e2) {
                }
            }
            fVar = e;
        }
        return fVar;
    }
}
