package com.google.android.gms.iid;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class InstanceIDListenerService extends Service {
    int aaA;
    int aaB;
    MessengerCompat aaw = new MessengerCompat(new Handler(Looper.getMainLooper()) { // from class: com.google.android.gms.iid.InstanceIDListenerService.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            InstanceIDListenerService.this.zza(message, MessengerCompat.zzc(message));
        }
    });
    BroadcastReceiver aax = new BroadcastReceiver() { // from class: com.google.android.gms.iid.InstanceIDListenerService.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Log.isLoggable("InstanceID", 3)) {
                intent.getStringExtra("registration_id");
                String valueOf = String.valueOf(intent.getExtras());
                Log.d("InstanceID", new StringBuilder(String.valueOf(valueOf).length() + 46).append("Received GSF callback using dynamic receiver: ").append(valueOf).toString());
            }
            InstanceIDListenerService.this.zzn(intent);
            InstanceIDListenerService.this.stop();
        }
    };
    static String ACTION = "action";
    private static String aay = "google.com/iid";
    private static String aaz = "CMD";
    private static String Zh = "gcm.googleapis.com/refresh";

    static void zza(Context context, zzd zzdVar) {
        zzdVar.zzbmd();
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.putExtra(aaz, "RST");
        intent.setPackage(context.getPackageName());
        context.startService(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(Message message, int i) {
        zzc.zzdi(this);
        getPackageManager();
        if (i == zzc.aaI || i == zzc.aaH) {
            zzn((Intent) message.obj);
            return;
        }
        int i2 = zzc.aaH;
        Log.w("InstanceID", new StringBuilder(77).append("Message from unexpected caller ").append(i).append(" mine=").append(i2).append(" appid=").append(zzc.aaI).toString());
    }

    static void zzdh(Context context) {
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.setPackage(context.getPackageName());
        intent.putExtra(aaz, "SYNC");
        context.startService(intent);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (intent == null || !"com.google.android.gms.iid.InstanceID".equals(intent.getAction())) {
            return null;
        }
        return this.aaw.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        IntentFilter intentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
        intentFilter.addCategory(getPackageName());
        registerReceiver(this.aax, intentFilter, "com.google.android.c2dm.permission.RECEIVE", null);
    }

    @Override // android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.aax);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Intent intent2;
        zzsu(i2);
        if (intent == null) {
            return 2;
        }
        try {
            if ("com.google.android.gms.iid.InstanceID".equals(intent.getAction())) {
                if (Build.VERSION.SDK_INT <= 18 && (intent2 = (Intent) intent.getParcelableExtra("GSF")) != null) {
                    startService(intent2);
                    stop();
                    return 1;
                }
                zzn(intent);
            }
            stop();
            if (intent.getStringExtra("from") != null) {
                WakefulBroadcastReceiver.completeWakefulIntent(intent);
            }
            return 2;
        } finally {
            stop();
        }
    }

    public void onTokenRefresh() {
    }

    void stop() {
        synchronized (this) {
            this.aaA--;
            if (this.aaA == 0) {
                stopSelf(this.aaB);
            }
            if (Log.isLoggable("InstanceID", 3)) {
                Log.d("InstanceID", new StringBuilder(28).append("Stop ").append(this.aaA).append(" ").append(this.aaB).toString());
            }
        }
    }

    public void zzbx(boolean z) {
        onTokenRefresh();
    }

    public void zzn(Intent intent) {
        InstanceID zza;
        String stringExtra = intent.getStringExtra("subtype");
        if (stringExtra == null) {
            zza = InstanceID.getInstance(this);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("subtype", stringExtra);
            zza = InstanceID.zza(this, bundle);
        }
        String stringExtra2 = intent.getStringExtra(aaz);
        if (intent.getStringExtra("error") != null || intent.getStringExtra("registration_id") != null) {
            if (Log.isLoggable("InstanceID", 3)) {
                String valueOf = String.valueOf(stringExtra);
                Log.d("InstanceID", valueOf.length() != 0 ? "Register result in service ".concat(valueOf) : new String("Register result in service "));
            }
            zza.zzblz().zzv(intent);
            return;
        }
        if (Log.isLoggable("InstanceID", 3)) {
            String valueOf2 = String.valueOf(intent.getExtras());
            Log.d("InstanceID", new StringBuilder(String.valueOf(stringExtra).length() + 18 + String.valueOf(stringExtra2).length() + String.valueOf(valueOf2).length()).append("Service command ").append(stringExtra).append(" ").append(stringExtra2).append(" ").append(valueOf2).toString());
        }
        if (intent.getStringExtra("unregistered") != null) {
            zzd zzbly = zza.zzbly();
            if (stringExtra == null) {
                stringExtra = "";
            }
            zzbly.zzkj(stringExtra);
            zza.zzblz().zzv(intent);
            return;
        }
        if (Zh.equals(intent.getStringExtra("from"))) {
            zza.zzbly().zzkj(stringExtra);
            zzbx(false);
            return;
        }
        if ("RST".equals(stringExtra2)) {
            zza.zzblx();
            zzbx(true);
            return;
        }
        if ("RST_FULL".equals(stringExtra2)) {
            if (zza.zzbly().isEmpty()) {
                return;
            }
            zza.zzbly().zzbmd();
            zzbx(true);
            return;
        }
        if (!"SYNC".equals(stringExtra2)) {
            if ("PING".equals(stringExtra2)) {
            }
        } else {
            zza.zzbly().zzkj(stringExtra);
            zzbx(false);
        }
    }

    void zzsu(int i) {
        synchronized (this) {
            this.aaA++;
            if (i > this.aaB) {
                this.aaB = i;
            }
        }
    }
}
