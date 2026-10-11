package com.cmplay.cloud;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.cmplay.util.aa;
import com.cmplay.util.v;

/* compiled from: CloudConfigUpdater.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {
    private static b e;

    /* renamed from: a, reason: collision with root package name */
    private Context f1276a;

    /* renamed from: b, reason: collision with root package name */
    private AlarmManager f1277b;
    private a c;
    private PendingIntent d;

    public static b a(Context context) {
        if (e == null) {
            synchronized (b.class) {
                if (e == null) {
                    e = new b(context);
                }
            }
        }
        return e;
    }

    private b(Context context) {
        this.f1276a = context;
        if (com.cmplay.i.c.a()) {
            e();
        }
    }

    public void a(boolean z) {
        if (com.cmplay.i.c.a()) {
            b(z);
            d();
        }
    }

    public void a() {
        if (com.cmplay.i.c.a()) {
            com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.cloud.b.1
                @Override // java.lang.Runnable
                public void run() {
                    com.ijinshan.cloudconfig.c.a.a(b.this.f1276a);
                    String b2 = com.ijinshan.cloudconfig.b.a.a().b("local_version", "");
                    if (TextUtils.isEmpty(b2)) {
                        b.this.a(true);
                    } else {
                        com.ijinshan.cloudconfig.deepcloudconfig.c.a().a(b2);
                        b.this.d();
                        new com.cmplay.util.c.a.c().a((byte) 4, b2);
                    }
                    Log.d("mys", "forceExecute cloud version = " + b2);
                }
            });
        } else {
            com.cmplay.cloud.a.a().a(this.f1276a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Intent intent = new Intent();
        intent.setAction("tiles2_cloudconfig_delay_task_action");
        intent.setPackage(this.f1276a.getPackageName());
        this.d = PendingIntent.getBroadcast(this.f1276a, 0, intent, 134217728);
        this.f1277b.cancel(this.d);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1277b.setExactAndAllowWhileIdle(0, System.currentTimeMillis() + 21600000, this.d);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.f1277b.setExact(0, System.currentTimeMillis() + 21600000, this.d);
        } else {
            this.f1277b.set(0, System.currentTimeMillis() + 21600000, this.d);
        }
    }

    private void e() {
        if (this.c == null) {
            this.c = new a();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("tiles2_cloudconfig_delay_task_action");
            this.f1276a.registerReceiver(this.c, intentFilter);
        }
        if (this.f1277b == null) {
            this.f1277b = (AlarmManager) this.f1276a.getSystemService("alarm");
        }
    }

    public void b() {
        String b2 = v.b(this.f1276a);
        if (!TextUtils.isEmpty(b2)) {
            aa.a("key_cloud_update_app_version", b2);
        }
    }

    /* compiled from: CloudConfigUpdater.java */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && "tiles2_cloudconfig_delay_task_action".equals(intent.getAction())) {
                b.this.b(false);
                b.this.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final boolean z) {
        if (!z) {
            if (System.currentTimeMillis() - aa.b("last_pull_cloud_cfg_time_at_service", -1L) < 21600000) {
                Log.d("cfg", "service update cloud config interval is too short");
                return;
            }
            aa.a("last_pull_cloud_cfg_time_at_service", System.currentTimeMillis());
        }
        com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.cloud.b.2
            @Override // java.lang.Runnable
            public void run() {
                com.ijinshan.cloudconfig.c.a.a(b.this.f1276a);
                new com.cmplay.util.c.a.c().a(z ? (byte) 4 : (byte) 7, com.ijinshan.cloudconfig.b.a.a().b("local_version", "none"));
                b.this.c();
            }
        });
    }

    public void c() {
        String b2 = com.ijinshan.cloudconfig.b.a.a().b("local_version", "");
        String b3 = v.b(this.f1276a);
        String a2 = aa.a("key_cloud_update_app_version");
        Log.d("cfg", "before cloud version = " + b2);
        if (TextUtils.isEmpty(b2) || TextUtils.equals(b3, a2)) {
            Log.d("cfg", "pullCloudConfig without version");
            com.ijinshan.cloudconfig.deepcloudconfig.c.a().a(false);
        } else {
            Log.d("cfg", "pullCloudConfig with version " + b2);
            com.ijinshan.cloudconfig.deepcloudconfig.c.a().a(b2);
        }
    }
}
