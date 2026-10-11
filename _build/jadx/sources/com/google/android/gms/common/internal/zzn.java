package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class zzn extends zzm implements Handler.Callback {
    private final Handler mHandler;
    private final HashMap<zza, zzb> yN = new HashMap<>();
    private final com.google.android.gms.common.stats.zzb yO = com.google.android.gms.common.stats.zzb.zzaux();
    private final long yP = 5000;
    private final Context zzaql;

    private static final class zza {
        private final String yQ;
        private final ComponentName yR;
        private final String zzcvc;

        public zza(ComponentName componentName) {
            this.zzcvc = null;
            this.yQ = null;
            this.yR = (ComponentName) zzab.zzy(componentName);
        }

        public zza(String str, String str2) {
            this.zzcvc = zzab.zzhr(str);
            this.yQ = zzab.zzhr(str2);
            this.yR = null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return zzaa.equal(this.zzcvc, zzaVar.zzcvc) && zzaa.equal(this.yR, zzaVar.yR);
        }

        public int hashCode() {
            return zzaa.hashCode(this.zzcvc, this.yR);
        }

        public String toString() {
            return this.zzcvc == null ? this.yR.flattenToString() : this.zzcvc;
        }

        public Intent zzasy() {
            return this.zzcvc != null ? new Intent(this.zzcvc).setPackage(this.yQ) : new Intent().setComponent(this.yR);
        }
    }

    private final class zzb {
        private IBinder xL;
        private ComponentName yR;
        private boolean yU;
        private final zza yV;
        private final zza yS = new zza();
        private final Set<ServiceConnection> yT = new HashSet();
        private int mState = 2;

        public class zza implements ServiceConnection {
            public zza() {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (zzn.this.yN) {
                    zzb.this.xL = iBinder;
                    zzb.this.yR = componentName;
                    Iterator it = zzb.this.yT.iterator();
                    while (it.hasNext()) {
                        ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                    }
                    zzb.this.mState = 1;
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                synchronized (zzn.this.yN) {
                    zzb.this.xL = null;
                    zzb.this.yR = componentName;
                    Iterator it = zzb.this.yT.iterator();
                    while (it.hasNext()) {
                        ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                    }
                    zzb.this.mState = 2;
                }
            }
        }

        public zzb(zza zzaVar) {
            this.yV = zzaVar;
        }

        public IBinder getBinder() {
            return this.xL;
        }

        public ComponentName getComponentName() {
            return this.yR;
        }

        public int getState() {
            return this.mState;
        }

        public boolean isBound() {
            return this.yU;
        }

        public void zza(ServiceConnection serviceConnection, String str) {
            zzn.this.yO.zza(zzn.this.zzaql, serviceConnection, str, this.yV.zzasy());
            this.yT.add(serviceConnection);
        }

        public boolean zza(ServiceConnection serviceConnection) {
            return this.yT.contains(serviceConnection);
        }

        public boolean zzasz() {
            return this.yT.isEmpty();
        }

        public void zzb(ServiceConnection serviceConnection, String str) {
            zzn.this.yO.zzb(zzn.this.zzaql, serviceConnection);
            this.yT.remove(serviceConnection);
        }

        @TargetApi(14)
        public void zzhm(String str) {
            this.mState = 3;
            this.yU = zzn.this.yO.zza(zzn.this.zzaql, str, this.yV.zzasy(), this.yS, 129);
            if (this.yU) {
                return;
            }
            this.mState = 2;
            try {
                zzn.this.yO.zza(zzn.this.zzaql, this.yS);
            } catch (IllegalArgumentException e) {
            }
        }

        public void zzhn(String str) {
            zzn.this.yO.zza(zzn.this.zzaql, this.yS);
            this.yU = false;
            this.mState = 2;
        }
    }

    zzn(Context context) {
        this.zzaql = context.getApplicationContext();
        this.mHandler = new Handler(context.getMainLooper(), this);
    }

    private boolean zza(zza zzaVar, ServiceConnection serviceConnection, String str) {
        boolean isBound;
        zzab.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.yN) {
            zzb zzbVar = this.yN.get(zzaVar);
            if (zzbVar != null) {
                this.mHandler.removeMessages(0, zzbVar);
                if (!zzbVar.zza(serviceConnection)) {
                    zzbVar.zza(serviceConnection, str);
                    switch (zzbVar.getState()) {
                        case 1:
                            serviceConnection.onServiceConnected(zzbVar.getComponentName(), zzbVar.getBinder());
                            break;
                        case 2:
                            zzbVar.zzhm(str);
                            break;
                    }
                } else {
                    String valueOf = String.valueOf(zzaVar);
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 81).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(valueOf).toString());
                }
            } else {
                zzbVar = new zzb(zzaVar);
                zzbVar.zza(serviceConnection, str);
                zzbVar.zzhm(str);
                this.yN.put(zzaVar, zzbVar);
            }
            isBound = zzbVar.isBound();
        }
        return isBound;
    }

    private void zzb(zza zzaVar, ServiceConnection serviceConnection, String str) {
        zzab.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.yN) {
            zzb zzbVar = this.yN.get(zzaVar);
            if (zzbVar == null) {
                String valueOf = String.valueOf(zzaVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Nonexistent connection status for service config: ").append(valueOf).toString());
            }
            if (!zzbVar.zza(serviceConnection)) {
                String valueOf2 = String.valueOf(zzaVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf2).length() + 76).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(valueOf2).toString());
            }
            zzbVar.zzb(serviceConnection, str);
            if (zzbVar.zzasz()) {
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, zzbVar), this.yP);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                zzb zzbVar = (zzb) message.obj;
                synchronized (this.yN) {
                    if (zzbVar.zzasz()) {
                        if (zzbVar.isBound()) {
                            zzbVar.zzhn("GmsClientSupervisor");
                        }
                        this.yN.remove(zzbVar.yV);
                    }
                }
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.common.internal.zzm
    public boolean zza(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return zza(new zza(componentName), serviceConnection, str);
    }

    @Override // com.google.android.gms.common.internal.zzm
    public boolean zza(String str, String str2, ServiceConnection serviceConnection, String str3) {
        return zza(new zza(str, str2), serviceConnection, str3);
    }

    @Override // com.google.android.gms.common.internal.zzm
    public void zzb(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        zzb(new zza(componentName), serviceConnection, str);
    }

    @Override // com.google.android.gms.common.internal.zzm
    public void zzb(String str, String str2, ServiceConnection serviceConnection, String str3) {
        zzb(new zza(str, str2), serviceConnection, str3);
    }
}
