package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzpm;
import com.google.android.gms.internal.zzqh;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzqa implements zzqh {
    private final Context mContext;
    final Api.zza<? extends zzvu, zzvv> si;
    final com.google.android.gms.common.internal.zzg tN;
    final Map<Api<?>, Integer> tO;
    final zzpy th;
    private final Lock tr;
    private final com.google.android.gms.common.zzc tz;
    int uA;
    final zzqh.zza uB;
    final Map<Api.zzc<?>, Api.zze> ui;
    private final Condition uv;
    private final zzb uw;
    private volatile zzpz uy;
    final Map<Api.zzc<?>, ConnectionResult> ux = new HashMap();
    private ConnectionResult uz = null;

    static abstract class zza {
        private final zzpz uC;

        protected zza(zzpz zzpzVar) {
            this.uC = zzpzVar;
        }

        protected abstract void zzapl();

        public final void zzd(zzqa zzqaVar) {
            zzqaVar.tr.lock();
            try {
                if (zzqaVar.uy != this.uC) {
                    return;
                }
                zzapl();
            } finally {
                zzqaVar.tr.unlock();
            }
        }
    }

    final class zzb extends Handler {
        zzb(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    ((zza) message.obj).zzd(zzqa.this);
                    return;
                case 2:
                    throw ((RuntimeException) message.obj);
                default:
                    Log.w("GACStateManager", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                    return;
            }
        }
    }

    public zzqa(Context context, zzpy zzpyVar, Lock lock, Looper looper, com.google.android.gms.common.zzc zzcVar, Map<Api.zzc<?>, Api.zze> map, com.google.android.gms.common.internal.zzg zzgVar, Map<Api<?>, Integer> map2, Api.zza<? extends zzvu, zzvv> zzaVar, ArrayList<zzpp> arrayList, zzqh.zza zzaVar2) {
        this.mContext = context;
        this.tr = lock;
        this.tz = zzcVar;
        this.ui = map;
        this.tN = zzgVar;
        this.tO = map2;
        this.si = zzaVar;
        this.th = zzpyVar;
        this.uB = zzaVar2;
        Iterator<zzpp> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().zza(this);
        }
        this.uw = new zzb(looper);
        this.uv = lock.newCondition();
        this.uy = new zzpx(this);
    }

    @Override // com.google.android.gms.internal.zzqh
    public ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.uv.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        return isConnected() ? ConnectionResult.rb : this.uz != null ? this.uz : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.internal.zzqh
    public ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        connect();
        long nanos = timeUnit.toNanos(j);
        while (isConnecting()) {
            if (nanos <= 0) {
                disconnect();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.uv.awaitNanos(nanos);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        return isConnected() ? ConnectionResult.rb : this.uz != null ? this.uz : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.internal.zzqh
    public void connect() {
        this.uy.connect();
    }

    @Override // com.google.android.gms.internal.zzqh
    public void disconnect() {
        if (this.uy.disconnect()) {
            this.ux.clear();
        }
    }

    @Override // com.google.android.gms.internal.zzqh
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String concat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.uy);
        for (Api<?> api : this.tO.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) api.getName()).println(":");
            this.ui.get(api.zzans()).dump(concat, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.internal.zzqh
    @Nullable
    public ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        Api.zzc<?> zzans = api.zzans();
        if (this.ui.containsKey(zzans)) {
            if (this.ui.get(zzans).isConnected()) {
                return ConnectionResult.rb;
            }
            if (this.ux.containsKey(zzans)) {
                return this.ux.get(zzans);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzqh
    public boolean isConnected() {
        return this.uy instanceof zzpv;
    }

    @Override // com.google.android.gms.internal.zzqh
    public boolean isConnecting() {
        return this.uy instanceof zzpw;
    }

    public void onConnected(@Nullable Bundle bundle) {
        this.tr.lock();
        try {
            this.uy.onConnected(bundle);
        } finally {
            this.tr.unlock();
        }
    }

    public void onConnectionSuspended(int i) {
        this.tr.lock();
        try {
            this.uy.onConnectionSuspended(i);
        } finally {
            this.tr.unlock();
        }
    }

    public void zza(@NonNull ConnectionResult connectionResult, @NonNull Api<?> api, int i) {
        this.tr.lock();
        try {
            this.uy.zza(connectionResult, api, i);
        } finally {
            this.tr.unlock();
        }
    }

    void zza(zza zzaVar) {
        this.uw.sendMessage(this.uw.obtainMessage(1, zzaVar));
    }

    void zza(RuntimeException runtimeException) {
        this.uw.sendMessage(this.uw.obtainMessage(2, runtimeException));
    }

    @Override // com.google.android.gms.internal.zzqh
    public boolean zza(zzqt zzqtVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.zzqh
    public void zzaof() {
    }

    @Override // com.google.android.gms.internal.zzqh
    public void zzapb() {
        if (isConnected()) {
            ((zzpv) this.uy).zzapk();
        }
    }

    void zzapz() {
        this.tr.lock();
        try {
            this.uy = new zzpw(this, this.tN, this.tO, this.tz, this.si, this.tr, this.mContext);
            this.uy.begin();
            this.uv.signalAll();
        } finally {
            this.tr.unlock();
        }
    }

    void zzaqa() {
        this.tr.lock();
        try {
            this.th.zzapw();
            this.uy = new zzpv(this);
            this.uy.begin();
            this.uv.signalAll();
        } finally {
            this.tr.unlock();
        }
    }

    void zzaqb() {
        Iterator<Api.zze> it = this.ui.values().iterator();
        while (it.hasNext()) {
            it.next().disconnect();
        }
    }

    @Override // com.google.android.gms.internal.zzqh
    public <A extends Api.zzb, R extends Result, T extends zzpm.zza<R, A>> T zzc(@NonNull T t) {
        t.zzaow();
        return (T) this.uy.zzc(t);
    }

    @Override // com.google.android.gms.internal.zzqh
    public <A extends Api.zzb, T extends zzpm.zza<? extends Result, A>> T zzd(@NonNull T t) {
        t.zzaow();
        return (T) this.uy.zzd(t);
    }

    void zzi(ConnectionResult connectionResult) {
        this.tr.lock();
        try {
            this.uz = connectionResult;
            this.uy = new zzpx(this);
            this.uy.begin();
            this.uv.signalAll();
        } finally {
            this.tr.unlock();
        }
    }
}
