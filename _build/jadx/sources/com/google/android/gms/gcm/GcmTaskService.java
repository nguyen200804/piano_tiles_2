package com.google.android.gms.gcm;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.support.annotation.CallSuper;
import android.util.Log;
import com.google.android.gms.gcm.zzb;
import java.util.HashSet;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class GcmTaskService extends Service {
    public static final String SERVICE_ACTION_EXECUTE_TASK = "com.google.android.gms.gcm.ACTION_TASK_READY";
    public static final String SERVICE_ACTION_INITIALIZE = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE";
    public static final String SERVICE_PERMISSION = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE";
    private final Set<String> Zi = new HashSet();
    private int Zj;

    private class zza extends Thread {
        private final zzb Zk;
        private final Bundle mExtras;
        private final String mTag;

        zza(String str, IBinder iBinder, Bundle bundle) {
            super(String.valueOf(str).concat(" GCM Task"));
            this.mTag = str;
            this.Zk = zzb.zza.zzgm(iBinder);
            this.mExtras = bundle;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            try {
                this.Zk.zzsn(GcmTaskService.this.onRunTask(new TaskParams(this.mTag, this.mExtras)));
            } catch (RemoteException e) {
                String valueOf = String.valueOf(this.mTag);
                Log.e("GcmTaskService", valueOf.length() != 0 ? "Error reporting result of operation to scheduler for ".concat(valueOf) : new String("Error reporting result of operation to scheduler for "));
            } finally {
                GcmTaskService.this.zzkc(this.mTag);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzkc(String str) {
        synchronized (this.Zi) {
            this.Zi.remove(str);
            if (this.Zi.size() == 0) {
                stopSelf(this.Zj);
            }
        }
    }

    private void zzsm(int i) {
        synchronized (this.Zi) {
            this.Zj = i;
            if (this.Zi.size() == 0) {
                stopSelf(this.Zj);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onInitializeTasks() {
    }

    public abstract int onRunTask(TaskParams taskParams);

    @Override // android.app.Service
    @CallSuper
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            try {
                intent.setExtrasClassLoader(PendingCallback.class.getClassLoader());
                String action = intent.getAction();
                if (SERVICE_ACTION_EXECUTE_TASK.equals(action)) {
                    String stringExtra = intent.getStringExtra("tag");
                    Parcelable parcelableExtra = intent.getParcelableExtra("callback");
                    Bundle bundle = (Bundle) intent.getParcelableExtra("extras");
                    if (parcelableExtra == null || !(parcelableExtra instanceof PendingCallback)) {
                        String valueOf = String.valueOf(getPackageName());
                        Log.e("GcmTaskService", new StringBuilder(String.valueOf(valueOf).length() + 47 + String.valueOf(stringExtra).length()).append(valueOf).append(" ").append(stringExtra).append(": Could not process request, invalid callback.").toString());
                    } else {
                        synchronized (this.Zi) {
                            this.Zi.add(stringExtra);
                        }
                        new zza(stringExtra, ((PendingCallback) parcelableExtra).getIBinder(), bundle).start();
                    }
                } else if (SERVICE_ACTION_INITIALIZE.equals(action)) {
                    onInitializeTasks();
                } else {
                    Log.e("GcmTaskService", new StringBuilder(String.valueOf(action).length() + 37).append("Unknown action received ").append(action).append(", terminating").toString());
                }
            } finally {
                zzsm(i2);
            }
        }
        return 2;
    }
}
