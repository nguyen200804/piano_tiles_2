package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpm;
import com.google.android.gms.internal.zzqh;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class zzpq implements zzqh {
    private final Context mContext;
    private final zzpy th;
    private final zzqa ti;
    private final zzqa tj;
    private final Map<Api.zzc<?>, zzqa> tk;
    private final Api.zze tm;
    private Bundle tn;
    private final Lock tr;
    private final Looper zzahv;
    private final Set<zzqt> tl = Collections.newSetFromMap(new WeakHashMap());
    private ConnectionResult to = null;
    private ConnectionResult tp = null;
    private boolean tq = false;
    private int ts = 0;

    private class zza implements zzqh.zza {
        private zza() {
        }

        @Override // com.google.android.gms.internal.zzqh.zza
        public void zzc(int i, boolean z) {
            zzpq.this.tr.lock();
            try {
                if (zzpq.this.tq || zzpq.this.tp == null || !zzpq.this.tp.isSuccess()) {
                    zzpq.this.tq = false;
                    zzpq.this.zzb(i, z);
                } else {
                    zzpq.this.tq = true;
                    zzpq.this.tj.onConnectionSuspended(i);
                }
            } finally {
                zzpq.this.tr.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzqh.zza
        public void zzd(@NonNull ConnectionResult connectionResult) {
            zzpq.this.tr.lock();
            try {
                zzpq.this.to = connectionResult;
                zzpq.this.zzape();
            } finally {
                zzpq.this.tr.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzqh.zza
        public void zzm(@Nullable Bundle bundle) {
            zzpq.this.tr.lock();
            try {
                zzpq.this.zzl(bundle);
                zzpq.this.to = ConnectionResult.rb;
                zzpq.this.zzape();
            } finally {
                zzpq.this.tr.unlock();
            }
        }
    }

    private class zzb implements zzqh.zza {
        private zzb() {
        }

        @Override // com.google.android.gms.internal.zzqh.zza
        public void zzc(int i, boolean z) {
            zzpq.this.tr.lock();
            try {
                if (zzpq.this.tq) {
                    zzpq.this.tq = false;
                    zzpq.this.zzb(i, z);
                } else {
                    zzpq.this.tq = true;
                    zzpq.this.ti.onConnectionSuspended(i);
                }
            } finally {
                zzpq.this.tr.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzqh.zza
        public void zzd(@NonNull ConnectionResult connectionResult) {
            zzpq.this.tr.lock();
            try {
                zzpq.this.tp = connectionResult;
                zzpq.this.zzape();
            } finally {
                zzpq.this.tr.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzqh.zza
        public void zzm(@Nullable Bundle bundle) {
            zzpq.this.tr.lock();
            try {
                zzpq.this.tp = ConnectionResult.rb;
                zzpq.this.zzape();
            } finally {
                zzpq.this.tr.unlock();
            }
        }
    }

    private zzpq(Context context, zzpy zzpyVar, Lock lock, Looper looper, com.google.android.gms.common.zzc zzcVar, Map<Api.zzc<?>, Api.zze> map, Map<Api.zzc<?>, Api.zze> map2, com.google.android.gms.common.internal.zzg zzgVar, Api.zza<? extends zzvu, zzvv> zzaVar, Api.zze zzeVar, ArrayList<zzpp> arrayList, ArrayList<zzpp> arrayList2, Map<Api<?>, Integer> map3, Map<Api<?>, Integer> map4) {
        this.mContext = context;
        this.th = zzpyVar;
        this.tr = lock;
        this.zzahv = looper;
        this.tm = zzeVar;
        this.ti = new zzqa(context, this.th, lock, looper, zzcVar, map2, null, map4, null, arrayList2, new zza());
        this.tj = new zzqa(context, this.th, lock, looper, zzcVar, map, zzgVar, map3, zzaVar, arrayList, new zzb());
        ArrayMap arrayMap = new ArrayMap();
        Iterator<Api.zzc<?>> it = map2.keySet().iterator();
        while (it.hasNext()) {
            arrayMap.put(it.next(), this.ti);
        }
        Iterator<Api.zzc<?>> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            arrayMap.put(it2.next(), this.tj);
        }
        this.tk = Collections.unmodifiableMap(arrayMap);
    }

    public static zzpq zza(Context context, zzpy zzpyVar, Lock lock, Looper looper, com.google.android.gms.common.zzc zzcVar, Map<Api.zzc<?>, Api.zze> map, com.google.android.gms.common.internal.zzg zzgVar, Map<Api<?>, Integer> map2, Api.zza<? extends zzvu, zzvv> zzaVar, ArrayList<zzpp> arrayList) {
        Api.zze zzeVar = null;
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        for (Map.Entry<Api.zzc<?>, Api.zze> entry : map.entrySet()) {
            Api.zze value = entry.getValue();
            if (value.zzafz()) {
                zzeVar = value;
            }
            if (value.zzafk()) {
                arrayMap.put(entry.getKey(), value);
            } else {
                arrayMap2.put(entry.getKey(), value);
            }
        }
        com.google.android.gms.common.internal.zzab.zza(!arrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (Api<?> api : map2.keySet()) {
            Api.zzc<?> zzans = api.zzans();
            if (arrayMap.containsKey(zzans)) {
                arrayMap3.put(api, map2.get(api));
            } else {
                if (!arrayMap2.containsKey(zzans)) {
                    throw new IllegalStateException("Each API in the apiTypeMap must have a corresponding client in the clients map.");
                }
                arrayMap4.put(api, map2.get(api));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<zzpp> it = arrayList.iterator();
        while (it.hasNext()) {
            zzpp next = it.next();
            if (arrayMap3.containsKey(next.pN)) {
                arrayList2.add(next);
            } else {
                if (!arrayMap4.containsKey(next.pN)) {
                    throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the apiTypeMap");
                }
                arrayList3.add(next);
            }
        }
        return new zzpq(context, zzpyVar, lock, looper, zzcVar, arrayMap, arrayMap2, zzgVar, zzaVar, zzeVar, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    private void zzapd() {
        this.tp = null;
        this.to = null;
        this.ti.connect();
        this.tj.connect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzape() {
        if (zzc(this.to)) {
            if (zzc(this.tp) || zzaph()) {
                zzapf();
                return;
            }
            if (this.tp != null) {
                if (this.ts == 1) {
                    zzapg();
                    return;
                } else {
                    zzb(this.tp);
                    this.ti.disconnect();
                    return;
                }
            }
            return;
        }
        if (this.to != null && zzc(this.tp)) {
            this.tj.disconnect();
            zzb(this.to);
        } else {
            if (this.to == null || this.tp == null) {
                return;
            }
            ConnectionResult connectionResult = this.to;
            if (this.tj.uA < this.ti.uA) {
                connectionResult = this.tp;
            }
            zzb(connectionResult);
        }
    }

    private void zzapf() {
        switch (this.ts) {
            case 2:
                this.th.zzm(this.tn);
            case 1:
                zzapg();
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                break;
        }
        this.ts = 0;
    }

    private void zzapg() {
        Iterator<zzqt> it = this.tl.iterator();
        while (it.hasNext()) {
            it.next().zzafy();
        }
        this.tl.clear();
    }

    private boolean zzaph() {
        return this.tp != null && this.tp.getErrorCode() == 4;
    }

    @Nullable
    private PendingIntent zzapi() {
        if (this.tm == null) {
            return null;
        }
        return PendingIntent.getActivity(this.mContext, this.th.getSessionId(), this.tm.zzaga(), 134217728);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(int i, boolean z) {
        this.th.zzc(i, z);
        this.tp = null;
        this.to = null;
    }

    private void zzb(ConnectionResult connectionResult) {
        switch (this.ts) {
            case 2:
                this.th.zzd(connectionResult);
            case 1:
                zzapg();
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                break;
        }
        this.ts = 0;
    }

    private static boolean zzc(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    private boolean zze(zzpm.zza<? extends Result, ? extends Api.zzb> zzaVar) {
        Api.zzc<? extends Api.zzb> zzans = zzaVar.zzans();
        com.google.android.gms.common.internal.zzab.zzb(this.tk.containsKey(zzans), "GoogleApiClient is not configured to use the API required for this call.");
        return this.tk.get(zzans).equals(this.tj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzl(Bundle bundle) {
        if (this.tn == null) {
            this.tn = bundle;
        } else if (bundle != null) {
            this.tn.putAll(bundle);
        }
    }

    @Override // com.google.android.gms.internal.zzqh
    public ConnectionResult blockingConnect() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.zzqh
    public ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.zzqh
    public void connect() {
        this.ts = 2;
        this.tq = false;
        zzapd();
    }

    @Override // com.google.android.gms.internal.zzqh
    public void disconnect() {
        this.tp = null;
        this.to = null;
        this.ts = 0;
        this.ti.disconnect();
        this.tj.disconnect();
        zzapg();
    }

    @Override // com.google.android.gms.internal.zzqh
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.tj.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.ti.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.internal.zzqh
    @Nullable
    public ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        return this.tk.get(api.zzans()).equals(this.tj) ? zzaph() ? new ConnectionResult(4, zzapi()) : this.tj.getConnectionResult(api) : this.ti.getConnectionResult(api);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
    
        if (r2.ts == 1) goto L11;
     */
    @Override // com.google.android.gms.internal.zzqh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isConnected() {
        /*
            r2 = this;
            r0 = 1
            java.util.concurrent.locks.Lock r1 = r2.tr
            r1.lock()
            com.google.android.gms.internal.zzqa r1 = r2.ti     // Catch: java.lang.Throwable -> L26
            boolean r1 = r1.isConnected()     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L24
            boolean r1 = r2.zzapc()     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L1e
            boolean r1 = r2.zzaph()     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L1e
            int r1 = r2.ts     // Catch: java.lang.Throwable -> L26
            if (r1 != r0) goto L24
        L1e:
            java.util.concurrent.locks.Lock r1 = r2.tr
            r1.unlock()
            return r0
        L24:
            r0 = 0
            goto L1e
        L26:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r2.tr
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzpq.isConnected():boolean");
    }

    @Override // com.google.android.gms.internal.zzqh
    public boolean isConnecting() {
        this.tr.lock();
        try {
            return this.ts == 2;
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzqh
    public boolean zza(zzqt zzqtVar) {
        this.tr.lock();
        try {
            if ((!isConnecting() && !isConnected()) || zzapc()) {
                this.tr.unlock();
                return false;
            }
            this.tl.add(zzqtVar);
            if (this.ts == 0) {
                this.ts = 1;
            }
            this.tp = null;
            this.tj.connect();
            return true;
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzqh
    public void zzaof() {
        this.tr.lock();
        try {
            boolean isConnecting = isConnecting();
            this.tj.disconnect();
            this.tp = new ConnectionResult(4);
            if (isConnecting) {
                new Handler(this.zzahv).post(new Runnable() { // from class: com.google.android.gms.internal.zzpq.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zzpq.this.tr.lock();
                        try {
                            zzpq.this.zzape();
                        } finally {
                            zzpq.this.tr.unlock();
                        }
                    }
                });
            } else {
                zzapg();
            }
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzqh
    public void zzapb() {
        this.ti.zzapb();
        this.tj.zzapb();
    }

    public boolean zzapc() {
        return this.tj.isConnected();
    }

    @Override // com.google.android.gms.internal.zzqh
    public <A extends Api.zzb, R extends Result, T extends zzpm.zza<R, A>> T zzc(@NonNull T t) {
        if (!zze((zzpm.zza<? extends Result, ? extends Api.zzb>) t)) {
            return (T) this.ti.zzc((zzqa) t);
        }
        if (!zzaph()) {
            return (T) this.tj.zzc((zzqa) t);
        }
        t.zzz(new Status(4, null, zzapi()));
        return t;
    }

    @Override // com.google.android.gms.internal.zzqh
    public <A extends Api.zzb, T extends zzpm.zza<? extends Result, A>> T zzd(@NonNull T t) {
        if (!zze((zzpm.zza<? extends Result, ? extends Api.zzb>) t)) {
            return (T) this.ti.zzd(t);
        }
        if (!zzaph()) {
            return (T) this.tj.zzd(t);
        }
        t.zzz(new Status(4, null, zzapi()));
        return t;
    }
}
