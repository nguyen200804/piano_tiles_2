package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Process;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.internal.zzpm;
import com.google.android.gms.internal.zzqy;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzqc implements Handler.Callback {
    private static zzqc uG;
    private static final Object zzamr = new Object();
    private final Context mContext;
    private final Handler mHandler;
    private final GoogleApiAvailability sh;
    private long uF;
    private int uH;
    private final AtomicInteger uI;
    private final SparseArray<zzc<?>> uJ;
    private final Map<zzpj<?>, zzc<?>> uK;
    private zzpr uL;
    private final Set<zzpj<?>> uM;
    private final ReferenceQueue<com.google.android.gms.common.api.zzc<?>> uN;
    private final SparseArray<zza> uO;
    private zzb uP;
    private long ue;
    private long uf;

    private final class zza extends PhantomReference<com.google.android.gms.common.api.zzc<?>> {
        private final int sx;

        public zza(com.google.android.gms.common.api.zzc zzcVar, int i, ReferenceQueue<com.google.android.gms.common.api.zzc<?>> referenceQueue) {
            super(zzcVar, referenceQueue);
            this.sx = i;
        }

        public void zzaqg() {
            zzqc.this.mHandler.sendMessage(zzqc.this.mHandler.obtainMessage(2, this.sx, 2));
        }
    }

    private static final class zzb extends Thread {
        private final ReferenceQueue<com.google.android.gms.common.api.zzc<?>> uN;
        private final SparseArray<zza> uO;
        private final AtomicBoolean uR;

        public zzb(ReferenceQueue<com.google.android.gms.common.api.zzc<?>> referenceQueue, SparseArray<zza> sparseArray) {
            super("GoogleApiCleanup");
            this.uR = new AtomicBoolean();
            this.uN = referenceQueue;
            this.uO = sparseArray;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.uR.set(true);
            Process.setThreadPriority(10);
            while (this.uR.get()) {
                try {
                    zza zzaVar = (zza) this.uN.remove();
                    this.uO.remove(zzaVar.sx);
                    zzaVar.zzaqg();
                } catch (InterruptedException e) {
                    return;
                } finally {
                    this.uR.set(false);
                }
            }
        }
    }

    private class zzc<O extends Api.ApiOptions> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        private final zzpj<O> rQ;
        private final Api.zze uT;
        private final Api.zzb uU;
        private boolean ud;
        private final Queue<zzpi> uS = new LinkedList();
        private final SparseArray<zzqy> uV = new SparseArray<>();
        private final Set<zzpl> uW = new HashSet();
        private final SparseArray<Map<Object, zzpm.zza>> uX = new SparseArray<>();
        private ConnectionResult uY = null;

        @WorkerThread
        public zzc(com.google.android.gms.common.api.zzc<O> zzcVar) {
            this.uT = zzb(zzcVar);
            if (this.uT instanceof com.google.android.gms.common.internal.zzah) {
                this.uU = ((com.google.android.gms.common.internal.zzah) this.uT).zzatn();
            } else {
                this.uU = this.uT;
            }
            this.rQ = zzcVar.zzaob();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public void connect() {
            if (this.uT.isConnected() || this.uT.isConnecting()) {
                return;
            }
            if (this.uT.zzanu() && zzqc.this.uH != 0) {
                zzqc.this.uH = zzqc.this.sh.isGooglePlayServicesAvailable(zzqc.this.mContext);
                if (zzqc.this.uH != 0) {
                    onConnectionFailed(new ConnectionResult(zzqc.this.uH, null));
                    return;
                }
            }
            this.uT.zza(zzqc.this.new zzd(this.uT, this.rQ));
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public void resume() {
            if (this.ud) {
                connect();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public void zzab(Status status) {
            Iterator<zzpi> it = this.uS.iterator();
            while (it.hasNext()) {
                it.next().zzx(status);
            }
            this.uS.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public void zzapu() {
            if (this.ud) {
                zzaqk();
                zzab(zzqc.this.sh.isGooglePlayServicesAvailable(zzqc.this.mContext) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.uT.disconnect();
            }
        }

        @WorkerThread
        private void zzaqk() {
            if (this.ud) {
                zzqc.this.mHandler.removeMessages(9, this.rQ);
                zzqc.this.mHandler.removeMessages(8, this.rQ);
                this.ud = false;
            }
        }

        private void zzaql() {
            zzqc.this.mHandler.removeMessages(10, this.rQ);
            zzqc.this.mHandler.sendMessageDelayed(zzqc.this.mHandler.obtainMessage(10, this.rQ), zzqc.this.uF);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaqm() {
            if (!this.uT.isConnected() || this.uX.size() != 0) {
                return;
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.uV.size()) {
                    this.uT.disconnect();
                    return;
                } else {
                    if (this.uV.get(this.uV.keyAt(i2)).zzara()) {
                        zzaql();
                        return;
                    }
                    i = i2 + 1;
                }
            }
        }

        @WorkerThread
        private Api.zze zzb(com.google.android.gms.common.api.zzc zzcVar) {
            Api<O> zzanz = zzcVar.zzanz();
            if (!zzanz.zzant()) {
                return zzcVar.zzanz().zzanq().zza(zzcVar.getApplicationContext(), zzqc.this.mHandler.getLooper(), com.google.android.gms.common.internal.zzg.zzcd(zzcVar.getApplicationContext()), zzcVar.zzaoa(), this, this);
            }
            Api.zzh<?, O> zzanr = zzanz.zzanr();
            return new com.google.android.gms.common.internal.zzah(zzcVar.getApplicationContext(), zzqc.this.mHandler.getLooper(), zzanr.zzanw(), this, this, com.google.android.gms.common.internal.zzg.zzcd(zzcVar.getApplicationContext()), zzanr.zzr(zzcVar.zzaoa()));
        }

        @WorkerThread
        private void zzc(zzpi zzpiVar) {
            Map map;
            zzpiVar.zza(this.uV);
            if (zzpiVar.iq == 3) {
                try {
                    Map<Object, zzpm.zza> map2 = this.uX.get(zzpiVar.sx);
                    if (map2 == null) {
                        ArrayMap arrayMap = new ArrayMap(1);
                        this.uX.put(zzpiVar.sx, arrayMap);
                        map = arrayMap;
                    } else {
                        map = map2;
                    }
                    Object obj = ((zzpi.zza) zzpiVar).sy;
                    map.put(((zzqm) obj).zzaqu(), obj);
                } catch (ClassCastException e) {
                    throw new IllegalStateException("Listener registration methods must implement ListenerApiMethod");
                }
            } else if (zzpiVar.iq == 4) {
                try {
                    Map<Object, zzpm.zza> map3 = this.uX.get(zzpiVar.sx);
                    zzqm zzqmVar = (zzqm) ((zzpi.zza) zzpiVar).sy;
                    if (map3 != null) {
                        map3.remove(zzqmVar.zzaqu());
                    } else {
                        Log.w("GoogleApiManager", "Received call to unregister a listener without a matching registration call.");
                    }
                } catch (ClassCastException e2) {
                    throw new IllegalStateException("Listener unregistration methods must implement ListenerApiMethod");
                }
            }
            try {
                zzpiVar.zzb(this.uU);
            } catch (DeadObjectException e3) {
                this.uT.disconnect();
                onConnectionSuspended(1);
            }
        }

        @WorkerThread
        private void zzj(ConnectionResult connectionResult) {
            Iterator<zzpl> it = this.uW.iterator();
            while (it.hasNext()) {
                it.next().zza(this.rQ, connectionResult);
            }
            this.uW.clear();
        }

        boolean isConnected() {
            return this.uT.isConnected();
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        @WorkerThread
        public void onConnected(@Nullable Bundle bundle) {
            zzaqi();
            zzj(ConnectionResult.rb);
            zzaqk();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.uX.size()) {
                    zzaqh();
                    zzaql();
                    return;
                }
                Iterator<zzpm.zza> it = this.uX.get(this.uX.keyAt(i2)).values().iterator();
                while (it.hasNext()) {
                    try {
                        it.next().zzb((zzpm.zza) this.uU);
                    } catch (DeadObjectException e) {
                        this.uT.disconnect();
                        onConnectionSuspended(1);
                    }
                }
                i = i2 + 1;
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        @WorkerThread
        public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            zzaqi();
            zzqc.this.uH = -1;
            zzj(connectionResult);
            int keyAt = this.uV.keyAt(0);
            if (this.uS.isEmpty()) {
                this.uY = connectionResult;
                return;
            }
            synchronized (zzqc.zzamr) {
                if (zzqc.zzd(zzqc.this) != null && zzqc.this.uM.contains(this.rQ)) {
                    zzqc.zzd(zzqc.this).zzb(connectionResult, keyAt);
                } else if (!zzqc.this.zzc(connectionResult, keyAt)) {
                    if (connectionResult.getErrorCode() == 18) {
                        this.ud = true;
                    }
                    if (this.ud) {
                        zzqc.this.mHandler.sendMessageDelayed(Message.obtain(zzqc.this.mHandler, 8, this.rQ), zzqc.this.uf);
                    } else {
                        String valueOf = String.valueOf(this.rQ.zzaon());
                        zzab(new Status(17, new StringBuilder(String.valueOf(valueOf).length() + 38).append("API: ").append(valueOf).append(" is not available on this device.").toString()));
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        @WorkerThread
        public void onConnectionSuspended(int i) {
            zzaqi();
            this.ud = true;
            zzqc.this.mHandler.sendMessageDelayed(Message.obtain(zzqc.this.mHandler, 8, this.rQ), zzqc.this.uf);
            zzqc.this.mHandler.sendMessageDelayed(Message.obtain(zzqc.this.mHandler, 9, this.rQ), zzqc.this.ue);
            zzqc.this.uH = -1;
        }

        @WorkerThread
        public void zzaqh() {
            while (this.uT.isConnected() && !this.uS.isEmpty()) {
                zzc(this.uS.remove());
            }
        }

        @WorkerThread
        public void zzaqi() {
            this.uY = null;
        }

        ConnectionResult zzaqj() {
            return this.uY;
        }

        @WorkerThread
        public void zzb(zzpi zzpiVar) {
            if (this.uT.isConnected()) {
                zzc(zzpiVar);
                zzaql();
                return;
            }
            this.uS.add(zzpiVar);
            if (this.uY == null || !this.uY.hasResolution()) {
                connect();
            } else {
                onConnectionFailed(this.uY);
            }
        }

        @WorkerThread
        public void zzb(zzpl zzplVar) {
            this.uW.add(zzplVar);
        }

        @WorkerThread
        public void zzf(int i, boolean z) {
            Iterator<zzpi> it = this.uS.iterator();
            while (it.hasNext()) {
                zzpi next = it.next();
                if (next.sx == i && next.iq != 1 && next.cancel()) {
                    it.remove();
                }
            }
            this.uV.get(i).release();
            this.uX.delete(i);
            if (z) {
                return;
            }
            this.uV.remove(i);
            zzqc.this.uO.remove(i);
            if (this.uV.size() == 0 && this.uS.isEmpty()) {
                zzaqk();
                this.uT.disconnect();
                zzqc.this.uK.remove(this.rQ);
                synchronized (zzqc.zzamr) {
                    zzqc.this.uM.remove(this.rQ);
                }
            }
        }

        @WorkerThread
        public void zzfn(int i) {
            this.uV.put(i, new zzqy(this.rQ.zzans(), this.uT));
        }

        @WorkerThread
        public void zzfo(final int i) {
            this.uV.get(i).zza(new zzqy.zzc() { // from class: com.google.android.gms.internal.zzqc.zzc.1
                @Override // com.google.android.gms.internal.zzqy.zzc
                public void zzaqn() {
                    if (zzc.this.uS.isEmpty()) {
                        zzc.this.zzf(i, false);
                    }
                }
            });
        }
    }

    private class zzd implements zzd.zzf {
        private final zzpj<?> rQ;
        private final Api.zze uT;

        public zzd(Api.zze zzeVar, zzpj<?> zzpjVar) {
            this.uT = zzeVar;
            this.rQ = zzpjVar;
        }

        @Override // com.google.android.gms.common.internal.zzd.zzf
        @WorkerThread
        public void zzh(@NonNull ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                this.uT.zza(null, Collections.emptySet());
            } else {
                ((zzc) zzqc.this.uK.get(this.rQ)).onConnectionFailed(connectionResult);
            }
        }
    }

    private zzqc(Context context) {
        this(context, GoogleApiAvailability.getInstance());
    }

    private zzqc(Context context, GoogleApiAvailability googleApiAvailability) {
        this.uf = 5000L;
        this.ue = 120000L;
        this.uF = 10000L;
        this.uH = -1;
        this.uI = new AtomicInteger(1);
        this.uJ = new SparseArray<>();
        this.uK = new ConcurrentHashMap(5, 0.75f, 1);
        this.uL = null;
        this.uM = new com.google.android.gms.common.util.zza();
        this.uN = new ReferenceQueue<>();
        this.uO = new SparseArray<>();
        this.mContext = context;
        HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper(), this);
        this.sh = googleApiAvailability;
    }

    private int zza(com.google.android.gms.common.api.zzc<?> zzcVar) {
        int andIncrement = this.uI.getAndIncrement();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(6, andIncrement, 0, zzcVar));
        return andIncrement;
    }

    public static Pair<zzqc, Integer> zza(Context context, com.google.android.gms.common.api.zzc<?> zzcVar) {
        Pair<zzqc, Integer> create;
        synchronized (zzamr) {
            if (uG == null) {
                uG = new zzqc(context.getApplicationContext());
            }
            create = Pair.create(uG, Integer.valueOf(uG.zza(zzcVar)));
        }
        return create;
    }

    @WorkerThread
    private void zza(com.google.android.gms.common.api.zzc<?> zzcVar, int i) {
        zzpj<?> zzaob = zzcVar.zzaob();
        if (!this.uK.containsKey(zzaob)) {
            this.uK.put(zzaob, new zzc<>(zzcVar));
        }
        zzc<?> zzcVar2 = this.uK.get(zzaob);
        zzcVar2.zzfn(i);
        this.uJ.put(i, zzcVar2);
        zzcVar2.connect();
        this.uO.put(i, new zza(zzcVar, i, this.uN));
        if (this.uP == null || !this.uP.uR.get()) {
            this.uP = new zzb(this.uN, this.uO);
            this.uP.start();
        }
    }

    @WorkerThread
    private void zza(zzpi zzpiVar) {
        this.uJ.get(zzpiVar.sx).zzb(zzpiVar);
    }

    public static zzqc zzaqd() {
        zzqc zzqcVar;
        synchronized (zzamr) {
            zzqcVar = uG;
        }
        return zzqcVar;
    }

    @WorkerThread
    private void zzaqe() {
        for (zzc<?> zzcVar : this.uK.values()) {
            zzcVar.zzaqi();
            zzcVar.connect();
        }
    }

    static /* synthetic */ zzpr zzd(zzqc zzqcVar) {
        return null;
    }

    @WorkerThread
    private void zze(int i, boolean z) {
        zzc<?> zzcVar = this.uJ.get(i);
        if (zzcVar == null) {
            Log.wtf("GoogleApiManager", new StringBuilder(52).append("onRelease received for unknown instance: ").append(i).toString(), new Exception());
            return;
        }
        if (!z) {
            this.uJ.delete(i);
        }
        zzcVar.zzf(i, z);
    }

    @WorkerThread
    private void zzfm(int i) {
        zzc<?> zzcVar = this.uJ.get(i);
        if (zzcVar == null) {
            Log.wtf("GoogleApiManager", new StringBuilder(64).append("onCleanupLeakInternal received for unknown instance: ").append(i).toString(), new Exception());
        } else {
            this.uJ.delete(i);
            zzcVar.zzfo(i);
        }
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                zza((zzpl) message.obj);
                break;
            case 2:
                zzfm(message.arg1);
                break;
            case 3:
                zzaqe();
                break;
            case 4:
                zza((zzpi) message.obj);
                break;
            case 5:
                if (this.uJ.get(message.arg1) != null) {
                    this.uJ.get(message.arg1).zzab(new Status(17, "Error resolution was canceled by the user."));
                    break;
                }
                break;
            case 6:
                zza((com.google.android.gms.common.api.zzc<?>) message.obj, message.arg1);
                break;
            case 7:
                zze(message.arg1, message.arg2 == 1);
                break;
            case 8:
                if (this.uK.containsKey(message.obj)) {
                    this.uK.get(message.obj).resume();
                    break;
                }
                break;
            case 9:
                if (this.uK.containsKey(message.obj)) {
                    this.uK.get(message.obj).zzapu();
                    break;
                }
                break;
            case 10:
                if (this.uK.containsKey(message.obj)) {
                    this.uK.get(message.obj).zzaqm();
                    break;
                }
                break;
            default:
                Log.w("GoogleApiManager", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                return false;
        }
        return true;
    }

    public void zza(ConnectionResult connectionResult, int i) {
        if (zzc(connectionResult, i)) {
            return;
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5, i, 0));
    }

    public <O extends Api.ApiOptions> void zza(com.google.android.gms.common.api.zzc<O> zzcVar, int i, zzpm.zza<? extends Result, Api.zzb> zzaVar) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, new zzpi.zza(zzcVar.getInstanceId(), i, zzaVar)));
    }

    public <O extends Api.ApiOptions, TResult> void zza(com.google.android.gms.common.api.zzc<O> zzcVar, int i, zzqw<Api.zzb, TResult> zzqwVar, TaskCompletionSource<TResult> taskCompletionSource) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, new zzpi.zzb(zzcVar.getInstanceId(), i, zzqwVar, taskCompletionSource)));
    }

    @WorkerThread
    public void zza(zzpl zzplVar) {
        for (zzpj<?> zzpjVar : zzplVar.zzaoq()) {
            zzc<?> zzcVar = this.uK.get(zzpjVar);
            if (zzcVar == null) {
                zzplVar.cancel();
                return;
            } else if (zzcVar.isConnected()) {
                zzplVar.zza(zzpjVar, ConnectionResult.rb);
            } else if (zzcVar.zzaqj() != null) {
                zzplVar.zza(zzpjVar, zzcVar.zzaqj());
            } else {
                zzcVar.zzb(zzplVar);
            }
        }
    }

    public void zza(zzpr zzprVar) {
        synchronized (zzamr) {
            if (zzprVar == null) {
                this.uL = null;
                this.uM.clear();
            }
        }
    }

    public void zzaoo() {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3));
    }

    boolean zzc(ConnectionResult connectionResult, int i) {
        if (!connectionResult.hasResolution() && !this.sh.isUserResolvableError(connectionResult.getErrorCode())) {
            return false;
        }
        this.sh.zza(this.mContext, connectionResult, i);
        return true;
    }

    public void zzd(int i, boolean z) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(7, i, z ? 1 : 2));
    }
}
