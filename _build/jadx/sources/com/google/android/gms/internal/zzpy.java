package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.internal.zzpm;
import com.google.android.gms.internal.zzqe;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzqy;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzpy extends GoogleApiClient implements zzqh.zza {
    private final Context mContext;
    private final int sf;
    private final GoogleApiAvailability sh;
    final Api.zza<? extends zzvu, zzvv> si;
    final com.google.android.gms.common.internal.zzg tN;
    final Map<Api<?>, Integer> tO;
    private final Lock tr;
    private final com.google.android.gms.common.internal.zzl ua;
    private volatile boolean ud;
    private final zza ug;
    zzqe uh;
    final Map<Api.zzc<?>, Api.zze> ui;
    private final ArrayList<zzpp> ul;
    private Integer um;
    final zzqy uo;
    private final Looper zzahv;
    private zzqh ub = null;
    final Queue<zzpm.zza<?, ?>> uc = new LinkedList();
    private long ue = 120000;
    private long uf = 5000;
    Set<Scope> uj = new HashSet();
    private final zzqo uk = new zzqo();
    Set<zzqx> un = null;
    private final zzl.zza up = new zzl.zza() { // from class: com.google.android.gms.internal.zzpy.1
        @Override // com.google.android.gms.common.internal.zzl.zza
        public boolean isConnected() {
            return zzpy.this.isConnected();
        }

        @Override // com.google.android.gms.common.internal.zzl.zza
        public Bundle zzamh() {
            return null;
        }
    };

    final class zza extends Handler {
        zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    zzpy.this.zzapu();
                    break;
                case 2:
                    zzpy.this.resume();
                    break;
                default:
                    Log.w("GoogleApiClientImpl", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                    break;
            }
        }
    }

    static class zzb extends zzqe.zza {
        private WeakReference<zzpy> uu;

        zzb(zzpy zzpyVar) {
            this.uu = new WeakReference<>(zzpyVar);
        }

        @Override // com.google.android.gms.internal.zzqe.zza
        public void zzaou() {
            zzpy zzpyVar = this.uu.get();
            if (zzpyVar == null) {
                return;
            }
            zzpyVar.resume();
        }
    }

    public zzpy(Context context, Lock lock, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiAvailability googleApiAvailability, Api.zza<? extends zzvu, zzvv> zzaVar, Map<Api<?>, Integer> map, List<GoogleApiClient.ConnectionCallbacks> list, List<GoogleApiClient.OnConnectionFailedListener> list2, Map<Api.zzc<?>, Api.zze> map2, int i, int i2, ArrayList<zzpp> arrayList) {
        this.um = null;
        this.mContext = context;
        this.tr = lock;
        this.ua = new com.google.android.gms.common.internal.zzl(looper, this.up);
        this.zzahv = looper;
        this.ug = new zza(looper);
        this.sh = googleApiAvailability;
        this.sf = i;
        if (this.sf >= 0) {
            this.um = Integer.valueOf(i2);
        }
        this.tO = map;
        this.ui = map2;
        this.ul = arrayList;
        this.uo = new zzqy(this.ui);
        Iterator<GoogleApiClient.ConnectionCallbacks> it = list.iterator();
        while (it.hasNext()) {
            this.ua.registerConnectionCallbacks(it.next());
        }
        Iterator<GoogleApiClient.OnConnectionFailedListener> it2 = list2.iterator();
        while (it2.hasNext()) {
            this.ua.registerConnectionFailedListener(it2.next());
        }
        this.tN = zzgVar;
        this.si = zzaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resume() {
        this.tr.lock();
        try {
            if (isResuming()) {
                zzapt();
            }
        } finally {
            this.tr.unlock();
        }
    }

    public static int zza(Iterable<Api.zze> iterable, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (Api.zze zzeVar : iterable) {
            if (zzeVar.zzafk()) {
                z3 = true;
            }
            z2 = zzeVar.zzafz() ? true : z2;
        }
        if (z3) {
            return (z2 && z) ? 2 : 1;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(final GoogleApiClient googleApiClient, final zzqu zzquVar, final boolean z) {
        zzre.zt.zzg(googleApiClient).setResultCallback(new ResultCallback<Status>() { // from class: com.google.android.gms.internal.zzpy.4
            @Override // com.google.android.gms.common.api.ResultCallback
            /* renamed from: zzp, reason: merged with bridge method [inline-methods] */
            public void onResult(@NonNull Status status) {
                com.google.android.gms.auth.api.signin.internal.zzk.zzbc(zzpy.this.mContext).zzagl();
                if (status.isSuccess() && zzpy.this.isConnected()) {
                    zzpy.this.reconnect();
                }
                zzquVar.zzc((zzqu) status);
                if (z) {
                    googleApiClient.disconnect();
                }
            }
        });
    }

    private void zzapt() {
        this.ua.zzasx();
        this.ub.connect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzapu() {
        this.tr.lock();
        try {
            if (zzapw()) {
                zzapt();
            }
        } finally {
            this.tr.unlock();
        }
    }

    private void zzb(@NonNull zzqi zzqiVar) {
        if (this.sf < 0) {
            throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
        }
        zzpk.zza(zzqiVar).zzfh(this.sf);
    }

    private void zzfk(int i) {
        if (this.um == null) {
            this.um = Integer.valueOf(i);
        } else if (this.um.intValue() != i) {
            String valueOf = String.valueOf(zzfl(i));
            String valueOf2 = String.valueOf(zzfl(this.um.intValue()));
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 51 + String.valueOf(valueOf2).length()).append("Cannot use sign-in mode: ").append(valueOf).append(". Mode was already set to ").append(valueOf2).toString());
        }
        if (this.ub != null) {
            return;
        }
        boolean z = false;
        boolean z2 = false;
        for (Api.zze zzeVar : this.ui.values()) {
            if (zzeVar.zzafk()) {
                z2 = true;
            }
            z = zzeVar.zzafz() ? true : z;
        }
        switch (this.um.intValue()) {
            case 1:
                if (!z2) {
                    throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
                }
                if (z) {
                    throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
                break;
            case 2:
                if (z2) {
                    this.ub = zzpq.zza(this.mContext, this, this.tr, this.zzahv, this.sh, this.ui, this.tN, this.tO, this.si, this.ul);
                    return;
                }
                break;
        }
        this.ub = new zzqa(this.mContext, this, this.tr, this.zzahv, this.sh, this.ui, this.tN, this.tO, this.si, this.ul, this);
    }

    static String zzfl(int i) {
        switch (i) {
            case 1:
                return "SIGN_IN_MODE_REQUIRED";
            case 2:
                return "SIGN_IN_MODE_OPTIONAL";
            case 3:
                return "SIGN_IN_MODE_NONE";
            default:
                return "UNKNOWN";
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect() {
        com.google.android.gms.common.internal.zzab.zza(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.tr.lock();
        try {
            if (this.sf >= 0) {
                com.google.android.gms.common.internal.zzab.zza(this.um != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.um == null) {
                this.um = Integer.valueOf(zza(this.ui.values(), false));
            } else if (this.um.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzfk(this.um.intValue());
            this.ua.zzasx();
            return this.ub.blockingConnect();
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        com.google.android.gms.common.internal.zzab.zza(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        com.google.android.gms.common.internal.zzab.zzb(timeUnit, "TimeUnit must not be null");
        this.tr.lock();
        try {
            if (this.um == null) {
                this.um = Integer.valueOf(zza(this.ui.values(), false));
            } else if (this.um.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzfk(this.um.intValue());
            this.ua.zzasx();
            return this.ub.blockingConnect(j, timeUnit);
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public PendingResult<Status> clearDefaultAccountAndReconnect() {
        com.google.android.gms.common.internal.zzab.zza(isConnected(), "GoogleApiClient is not connected yet.");
        com.google.android.gms.common.internal.zzab.zza(this.um.intValue() != 2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        final zzqu zzquVar = new zzqu(this);
        if (this.ui.containsKey(zzre.bJ)) {
            zza(this, zzquVar, false);
        } else {
            final AtomicReference atomicReference = new AtomicReference();
            GoogleApiClient build = new GoogleApiClient.Builder(this.mContext).addApi(zzre.API).addConnectionCallbacks(new GoogleApiClient.ConnectionCallbacks() { // from class: com.google.android.gms.internal.zzpy.2
                @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
                public void onConnected(Bundle bundle) {
                    zzpy.this.zza((GoogleApiClient) atomicReference.get(), zzquVar, true);
                }

                @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
                public void onConnectionSuspended(int i) {
                }
            }).addOnConnectionFailedListener(new GoogleApiClient.OnConnectionFailedListener() { // from class: com.google.android.gms.internal.zzpy.3
                @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
                public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
                    zzquVar.zzc((zzqu) new Status(8));
                }
            }).setHandler(this.ug).build();
            atomicReference.set(build);
            build.connect();
        }
        return zzquVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect() {
        this.tr.lock();
        try {
            if (this.sf >= 0) {
                com.google.android.gms.common.internal.zzab.zza(this.um != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.um == null) {
                this.um = Integer.valueOf(zza(this.ui.values(), false));
            } else if (this.um.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            connect(this.um.intValue());
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect(int i) {
        boolean z = true;
        this.tr.lock();
        if (i != 3 && i != 1 && i != 2) {
            z = false;
        }
        try {
            com.google.android.gms.common.internal.zzab.zzb(z, new StringBuilder(33).append("Illegal sign-in mode: ").append(i).toString());
            zzfk(i);
            zzapt();
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void disconnect() {
        this.tr.lock();
        try {
            this.uo.release();
            if (this.ub != null) {
                this.ub.disconnect();
            }
            this.uk.release();
            for (zzpm.zza<?, ?> zzaVar : this.uc) {
                zzaVar.zza((zzqy.zzb) null);
                zzaVar.cancel();
            }
            this.uc.clear();
            if (this.ub == null) {
                return;
            }
            zzapw();
            this.ua.zzasw();
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.mContext);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.ud);
        printWriter.append(" mWorkQueue.size()=").print(this.uc.size());
        this.uo.dump(printWriter);
        if (this.ub != null) {
            this.ub.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        this.tr.lock();
        try {
            if (!isConnected() && !isResuming()) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (!this.ui.containsKey(api.zzans())) {
                throw new IllegalArgumentException(String.valueOf(api.getName()).concat(" was never registered with GoogleApiClient"));
            }
            ConnectionResult connectionResult = this.ub.getConnectionResult(api);
            if (connectionResult == null) {
                if (isResuming()) {
                    connectionResult = ConnectionResult.rb;
                } else {
                    Log.w("GoogleApiClientImpl", zzapy());
                    Log.wtf("GoogleApiClientImpl", String.valueOf(api.getName()).concat(" requested in getConnectionResult is not connected but is not present in the failed  connections map"), new Exception());
                    connectionResult = new ConnectionResult(8, null);
                }
            }
            return connectionResult;
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Looper getLooper() {
        return this.zzahv;
    }

    public int getSessionId() {
        return System.identityHashCode(this);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean hasConnectedApi(@NonNull Api<?> api) {
        Api.zze zzeVar = this.ui.get(api.zzans());
        return zzeVar != null && zzeVar.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnected() {
        return this.ub != null && this.ub.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnecting() {
        return this.ub != null && this.ub.isConnecting();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionCallbacksRegistered(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.ua.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionFailedListenerRegistered(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.ua.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    boolean isResuming() {
        return this.ud;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.ua.registerConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.ua.registerConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void stopAutoManage(@NonNull FragmentActivity fragmentActivity) {
        zzb(new zzqi(fragmentActivity));
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.ua.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.ua.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public <C extends Api.zze> C zza(@NonNull Api.zzc<C> zzcVar) {
        C c = (C) this.ui.get(zzcVar);
        com.google.android.gms.common.internal.zzab.zzb(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zza(zzqx zzqxVar) {
        this.tr.lock();
        try {
            if (this.un == null) {
                this.un = new HashSet();
            }
            this.un.add(zzqxVar);
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean zza(@NonNull Api<?> api) {
        return this.ui.containsKey(api.zzans());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean zza(zzqt zzqtVar) {
        return this.ub != null && this.ub.zza(zzqtVar);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zzaof() {
        if (this.ub != null) {
            this.ub.zzaof();
        }
    }

    void zzapv() {
        if (isResuming()) {
            return;
        }
        this.ud = true;
        if (this.uh == null) {
            this.uh = this.sh.zza(this.mContext.getApplicationContext(), new zzb(this));
        }
        this.ug.sendMessageDelayed(this.ug.obtainMessage(1), this.ue);
        this.ug.sendMessageDelayed(this.ug.obtainMessage(2), this.uf);
    }

    boolean zzapw() {
        if (!isResuming()) {
            return false;
        }
        this.ud = false;
        this.ug.removeMessages(2);
        this.ug.removeMessages(1);
        if (this.uh != null) {
            this.uh.unregister();
            this.uh = null;
        }
        return true;
    }

    boolean zzapx() {
        this.tr.lock();
        try {
            if (this.un != null) {
                r0 = this.un.isEmpty() ? false : true;
            }
            return r0;
        } finally {
            this.tr.unlock();
        }
    }

    String zzapy() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    <C extends Api.zze> C zzb(Api.zzc<?> zzcVar) {
        C c = (C) this.ui.get(zzcVar);
        com.google.android.gms.common.internal.zzab.zzb(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zzb(zzqx zzqxVar) {
        this.tr.lock();
        try {
            if (this.un == null) {
                Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
            } else if (!this.un.remove(zzqxVar)) {
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
            } else if (!zzapx()) {
                this.ub.zzapb();
            }
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, R extends Result, T extends zzpm.zza<R, A>> T zzc(@NonNull T t) {
        com.google.android.gms.common.internal.zzab.zzb(t.zzans() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        boolean containsKey = this.ui.containsKey(t.zzans());
        String name = t.zzanz() != null ? t.zzanz().getName() : "the API";
        com.google.android.gms.common.internal.zzab.zzb(containsKey, new StringBuilder(String.valueOf(name).length() + 65).append("GoogleApiClient is not configured to use ").append(name).append(" required for this call.").toString());
        this.tr.lock();
        try {
            if (this.ub == null) {
                this.uc.add(t);
            } else {
                t = (T) this.ub.zzc(t);
            }
            return t;
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzqh.zza
    public void zzc(int i, boolean z) {
        if (i == 1 && !z) {
            zzapv();
        }
        this.uo.zzaqz();
        this.ua.zzgf(i);
        this.ua.zzasw();
        if (i == 2) {
            zzapt();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, T extends zzpm.zza<? extends Result, A>> T zzd(@NonNull T t) {
        com.google.android.gms.common.internal.zzab.zzb(t.zzans() != null, "This task can not be executed (it's probably a Batch or malformed)");
        boolean containsKey = this.ui.containsKey(t.zzans());
        String name = t.zzanz() != null ? t.zzanz().getName() : "the API";
        com.google.android.gms.common.internal.zzab.zzb(containsKey, new StringBuilder(String.valueOf(name).length() + 65).append("GoogleApiClient is not configured to use ").append(name).append(" required for this call.").toString());
        this.tr.lock();
        try {
            if (this.ub == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (isResuming()) {
                this.uc.add(t);
                while (!this.uc.isEmpty()) {
                    zzpm.zza<?, ?> remove = this.uc.remove();
                    this.uo.zzg(remove);
                    remove.zzz(Status.ss);
                }
            } else {
                t = (T) this.ub.zzd(t);
            }
            return t;
        } finally {
            this.tr.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzqh.zza
    public void zzd(ConnectionResult connectionResult) {
        if (!this.sh.zzc(this.mContext, connectionResult.getErrorCode())) {
            zzapw();
        }
        if (isResuming()) {
            return;
        }
        this.ua.zzm(connectionResult);
        this.ua.zzasw();
    }

    @Override // com.google.android.gms.internal.zzqh.zza
    public void zzm(Bundle bundle) {
        while (!this.uc.isEmpty()) {
            zzd((zzpy) this.uc.remove());
        }
        this.ua.zzo(bundle);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <L> zzqn<L> zzs(@NonNull L l) {
        this.tr.lock();
        try {
            return this.uk.zzb(l, this.zzahv);
        } finally {
            this.tr.unlock();
        }
    }
}
