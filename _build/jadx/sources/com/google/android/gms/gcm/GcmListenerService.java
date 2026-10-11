package com.google.android.gms.gcm;

import android.annotation.TargetApi;
import android.app.Service;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class GcmListenerService extends Service {
    private int YZ;
    private final Object zzail = new Object();
    private int Za = 0;

    static void zzab(Bundle bundle) {
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next != null && next.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    private void zzble() {
        synchronized (this.zzail) {
            this.Za--;
            if (this.Za == 0) {
                zzsl(this.YZ);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.gcm.GcmListenerService$2] */
    @TargetApi(11)
    private void zzl(final Intent intent) {
        if (Build.VERSION.SDK_INT >= 11) {
            AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.google.android.gms.gcm.GcmListenerService.1
                @Override // java.lang.Runnable
                public void run() {
                    GcmListenerService.this.zzm(intent);
                }
            });
        } else {
            new AsyncTask<Void, Void, Void>() { // from class: com.google.android.gms.gcm.GcmListenerService.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public Void doInBackground(Void... voidArr) {
                    GcmListenerService.this.zzm(intent);
                    return null;
                }
            }.execute(new Void[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzm(Intent intent) {
        try {
            switch (intent.getAction()) {
                case "com.google.android.c2dm.intent.RECEIVE":
                    zzn(intent);
                    break;
                default:
                    String valueOf = String.valueOf(intent.getAction());
                    Log.d("GcmListenerService", valueOf.length() != 0 ? "Unknown intent action: ".concat(valueOf) : new String("Unknown intent action: "));
                    break;
            }
            zzble();
        } finally {
            GcmReceiver.completeWakefulIntent(intent);
        }
    }

    private void zzn(Intent intent) {
        String stringExtra;
        stringExtra = intent.getStringExtra("message_type");
        if (stringExtra == null) {
            stringExtra = GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE;
        }
        switch (stringExtra) {
            case "gcm":
                zzo(intent);
                break;
            case "deleted_messages":
                onDeletedMessages();
                break;
            case "send_event":
                onMessageSent(intent.getStringExtra("google.message_id"));
                break;
            case "send_error":
                onSendError(zzp(intent), intent.getStringExtra("error"));
                break;
            default:
                String valueOf = String.valueOf(stringExtra);
                Log.w("GcmListenerService", valueOf.length() != 0 ? "Received message with unknown type: ".concat(valueOf) : new String("Received message with unknown type: "));
                break;
        }
    }

    private void zzo(Intent intent) {
        Bundle extras = intent.getExtras();
        extras.remove("message_type");
        extras.remove("android.support.content.wakelockid");
        if (zza.zzac(extras)) {
            if (!zza.zzdc(this)) {
                zza.zzdb(this).zzae(extras);
                return;
            }
            zza.zzad(extras);
        }
        String string = extras.getString("from");
        extras.remove("from");
        zzab(extras);
        onMessageReceived(string, extras);
    }

    private String zzp(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(String str, Bundle bundle) {
    }

    public void onMessageSent(String str) {
    }

    public void onSendError(String str, String str2) {
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.zzail) {
            this.YZ = i2;
            this.Za++;
        }
        if (intent == null) {
            zzble();
            return 2;
        }
        zzl(intent);
        return 3;
    }

    boolean zzsl(int i) {
        return stopSelfResult(i);
    }
}
