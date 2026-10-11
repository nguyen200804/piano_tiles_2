package com.cmplay.internalpush;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class InnerPushService extends Service {

    /* renamed from: a, reason: collision with root package name */
    private static long f1403a = 0;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (com.cmplay.base.util.g.a()) {
            Log.d("InnerPushService", "service created");
        }
        com.cmplay.base.util.g.a("InnerPushService created");
        a();
    }

    private void a() {
        f1403a = System.currentTimeMillis();
        if (com.cmplay.base.util.g.a()) {
            Log.d("InnerPushService", "ALARM_SERVICE_START_TIME = " + f1403a);
        }
        AlarmManager alarmManager = (AlarmManager) getSystemService("alarm");
        Intent intent = new Intent(getApplicationContext(), (Class<?>) InnerPushService.class);
        intent.putExtra("command_key", "pull_cloud_alarm_config");
        alarmManager.cancel(PendingIntent.getService(getApplicationContext(), 1001, intent, 268435456));
        try {
            alarmManager.setRepeating(0, System.currentTimeMillis() + 21600000, 21600000L, PendingIntent.getService(getApplicationContext(), 1001, intent, 134217728));
        } catch (Throwable th) {
            if (com.cmplay.base.util.g.a()) {
                Log.e("InnerPushService", "start alarm failed");
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (com.cmplay.base.util.g.a()) {
            Log.d("InnerPushService", "command received");
        }
        if (intent != null) {
            String stringExtra = intent.getStringExtra("command_key");
            if (TextUtils.equals(stringExtra, "pull_cloud_config")) {
                com.cmplay.base.util.g.a("zzb_cloud", "InnerPushService.onStartCommand  CloudHeplerProxy.startServicePullCloudConfig");
                f.a(this);
            } else if (TextUtils.equals(stringExtra, "pull_cloud_alarm_config")) {
                com.cmplay.base.util.g.a("zzb_cloud", "InnerPushService 6小时尝试拉取下");
                com.ijinshan.cloudconfig.a.a(1, "");
            }
            a(intent);
        }
        return 1;
    }

    private void a(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            int i = extras.getInt("extra_type");
            if (com.cmplay.base.util.g.a()) {
                Log.d("InnerPushService", "command extra type:" + i);
            }
            if (com.cmplay.base.util.g.a()) {
                Log.e("InnerPushService", "handleIntent " + i);
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }
}
