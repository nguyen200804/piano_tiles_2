package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzah;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpm;
import com.google.android.gms.internal.zzpp;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqi;
import com.google.android.gms.internal.zzqn;
import com.google.android.gms.internal.zzqt;
import com.google.android.gms.internal.zzqx;
import com.google.android.gms.internal.zzvt;
import com.google.android.gms.internal.zzvu;
import com.google.android.gms.internal.zzvv;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class GoogleApiClient {
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;
    private static final Set<GoogleApiClient> rW = Collections.newSetFromMap(new WeakHashMap());

    public static final class Builder {
        private Account aL;
        private String bX;
        private final Context mContext;
        private final Set<Scope> rX;
        private final Set<Scope> rY;
        private int rZ;
        private View sa;
        private String sb;
        private final Map<Api<?>, zzg.zza> sc;
        private final Map<Api<?>, Api.ApiOptions> sd;
        private zzqi se;
        private int sf;
        private OnConnectionFailedListener sg;
        private GoogleApiAvailability sh;
        private Api.zza<? extends zzvu, zzvv> si;
        private final ArrayList<ConnectionCallbacks> sj;
        private final ArrayList<OnConnectionFailedListener> sk;
        private Looper zzahv;

        public Builder(@NonNull Context context) {
            this.rX = new HashSet();
            this.rY = new HashSet();
            this.sc = new ArrayMap();
            this.sd = new ArrayMap();
            this.sf = -1;
            this.sh = GoogleApiAvailability.getInstance();
            this.si = zzvt.bK;
            this.sj = new ArrayList<>();
            this.sk = new ArrayList<>();
            this.mContext = context;
            this.zzahv = context.getMainLooper();
            this.bX = context.getPackageName();
            this.sb = context.getClass().getName();
        }

        public Builder(@NonNull Context context, @NonNull ConnectionCallbacks connectionCallbacks, @NonNull OnConnectionFailedListener onConnectionFailedListener) {
            this(context);
            zzab.zzb(connectionCallbacks, "Must provide a connected listener");
            this.sj.add(connectionCallbacks);
            zzab.zzb(onConnectionFailedListener, "Must provide a connection failed listener");
            this.sk.add(onConnectionFailedListener);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static <C extends Api.zze, O> C zza(Api.zza<C, O> zzaVar, Object obj, Context context, Looper looper, zzg zzgVar, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return zzaVar.zza(context, looper, zzgVar, obj, connectionCallbacks, onConnectionFailedListener);
        }

        private Builder zza(@NonNull zzqi zzqiVar, int i, @Nullable OnConnectionFailedListener onConnectionFailedListener) {
            zzab.zzb(i >= 0, "clientId must be non-negative");
            this.sf = i;
            this.sg = onConnectionFailedListener;
            this.se = zzqiVar;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static <C extends Api.zzg, O> zzah zza(Api.zzh<C, O> zzhVar, Object obj, Context context, Looper looper, zzg zzgVar, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzah(context, looper, zzhVar.zzanw(), connectionCallbacks, onConnectionFailedListener, zzgVar, zzhVar.zzr(obj));
        }

        private <O extends Api.ApiOptions> void zza(Api<O> api, O o, int i, Scope... scopeArr) {
            boolean z = true;
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalArgumentException(new StringBuilder(90).append("Invalid resolution mode: '").append(i).append("', use a constant from GoogleApiClient.ResolutionMode").toString());
                }
                z = false;
            }
            HashSet hashSet = new HashSet(api.zzanp().zzp(o));
            for (Scope scope : scopeArr) {
                hashSet.add(scope);
            }
            this.sc.put(api, new zzg.zza(hashSet, z));
        }

        private GoogleApiClient zzaoi() {
            Api.zze zza;
            Api<?> api;
            zzg zzaoh = zzaoh();
            Api<?> api2 = null;
            Map<Api<?>, zzg.zza> zzasl = zzaoh.zzasl();
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = new ArrayMap();
            ArrayList arrayList = new ArrayList();
            Api<?> api3 = null;
            for (Api<?> api4 : this.sd.keySet()) {
                Api.ApiOptions apiOptions = this.sd.get(api4);
                int i = zzasl.get(api4) != null ? zzasl.get(api4).yn ? 1 : 2 : 0;
                arrayMap.put(api4, Integer.valueOf(i));
                zzpp zzppVar = new zzpp(api4, i);
                arrayList.add(zzppVar);
                if (api4.zzant()) {
                    Api.zzh<?, ?> zzanr = api4.zzanr();
                    Api<?> api5 = zzanr.getPriority() == 1 ? api4 : api3;
                    zza = zza(zzanr, apiOptions, this.mContext, this.zzahv, zzaoh, zzppVar, zzppVar);
                    api = api5;
                } else {
                    Api.zza<?, ?> zzanq = api4.zzanq();
                    Api<?> api6 = zzanq.getPriority() == 1 ? api4 : api3;
                    zza = zza((Api.zza<Api.zze, O>) zzanq, (Object) apiOptions, this.mContext, this.zzahv, zzaoh, (ConnectionCallbacks) zzppVar, (OnConnectionFailedListener) zzppVar);
                    api = api6;
                }
                arrayMap2.put(api4.zzans(), zza);
                if (!zza.zzafz()) {
                    api4 = api2;
                } else if (api2 != null) {
                    String valueOf = String.valueOf(api4.getName());
                    String valueOf2 = String.valueOf(api2.getName());
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 21 + String.valueOf(valueOf2).length()).append(valueOf).append(" cannot be used with ").append(valueOf2).toString());
                }
                api3 = api;
                api2 = api4;
            }
            if (api2 != null) {
                if (api3 != null) {
                    String valueOf3 = String.valueOf(api2.getName());
                    String valueOf4 = String.valueOf(api3.getName());
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf3).length() + 21 + String.valueOf(valueOf4).length()).append(valueOf3).append(" cannot be used with ").append(valueOf4).toString());
                }
                zzab.zza(this.aL == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", api2.getName());
                zzab.zza(this.rX.equals(this.rY), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", api2.getName());
            }
            return new zzpy(this.mContext, new ReentrantLock(), this.zzahv, zzaoh, this.sh, this.si, arrayMap, this.sj, this.sk, arrayMap2, this.sf, zzpy.zza(arrayMap2.values(), true), arrayList);
        }

        private void zzf(GoogleApiClient googleApiClient) {
            zzpk.zza(this.se).zza(this.sf, googleApiClient, this.sg);
        }

        public Builder addApi(@NonNull Api<? extends Api.ApiOptions.NotRequiredOptions> api) {
            zzab.zzb(api, "Api must not be null");
            this.sd.put(api, null);
            List<Scope> zzp = api.zzanp().zzp(null);
            this.rY.addAll(zzp);
            this.rX.addAll(zzp);
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApi(@NonNull Api<O> api, @NonNull O o) {
            zzab.zzb(api, "Api must not be null");
            zzab.zzb(o, "Null options are not permitted for this Api");
            this.sd.put(api, o);
            List<Scope> zzp = api.zzanp().zzp(o);
            this.rY.addAll(zzp);
            this.rX.addAll(zzp);
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApiIfAvailable(@NonNull Api<O> api, @NonNull O o, Scope... scopeArr) {
            zzab.zzb(api, "Api must not be null");
            zzab.zzb(o, "Null options are not permitted for this Api");
            this.sd.put(api, o);
            zza(api, o, 1, scopeArr);
            return this;
        }

        public Builder addApiIfAvailable(@NonNull Api<? extends Api.ApiOptions.NotRequiredOptions> api, Scope... scopeArr) {
            zzab.zzb(api, "Api must not be null");
            this.sd.put(api, null);
            zza(api, null, 1, scopeArr);
            return this;
        }

        public Builder addConnectionCallbacks(@NonNull ConnectionCallbacks connectionCallbacks) {
            zzab.zzb(connectionCallbacks, "Listener must not be null");
            this.sj.add(connectionCallbacks);
            return this;
        }

        public Builder addOnConnectionFailedListener(@NonNull OnConnectionFailedListener onConnectionFailedListener) {
            zzab.zzb(onConnectionFailedListener, "Listener must not be null");
            this.sk.add(onConnectionFailedListener);
            return this;
        }

        public Builder addScope(@NonNull Scope scope) {
            zzab.zzb(scope, "Scope must not be null");
            this.rX.add(scope);
            return this;
        }

        public GoogleApiClient build() {
            zzab.zzb(!this.sd.isEmpty(), "must call addApi() to add at least one API");
            GoogleApiClient zzaoi = zzaoi();
            synchronized (GoogleApiClient.rW) {
                GoogleApiClient.rW.add(zzaoi);
            }
            if (this.sf >= 0) {
                zzf(zzaoi);
            }
            return zzaoi;
        }

        public Builder enableAutoManage(@NonNull FragmentActivity fragmentActivity, int i, @Nullable OnConnectionFailedListener onConnectionFailedListener) {
            return zza(new zzqi(fragmentActivity), i, onConnectionFailedListener);
        }

        public Builder enableAutoManage(@NonNull FragmentActivity fragmentActivity, @Nullable OnConnectionFailedListener onConnectionFailedListener) {
            return enableAutoManage(fragmentActivity, 0, onConnectionFailedListener);
        }

        public Builder setAccountName(String str) {
            this.aL = str == null ? null : new Account(str, "com.google");
            return this;
        }

        public Builder setGravityForPopups(int i) {
            this.rZ = i;
            return this;
        }

        public Builder setHandler(@NonNull Handler handler) {
            zzab.zzb(handler, "Handler must not be null");
            this.zzahv = handler.getLooper();
            return this;
        }

        public Builder setViewForPopups(@NonNull View view) {
            zzab.zzb(view, "View must not be null");
            this.sa = view;
            return this;
        }

        public Builder useDefaultAccount() {
            return setAccountName("<<default account>>");
        }

        public zzg zzaoh() {
            zzvv zzvvVar = zzvv.atR;
            if (this.sd.containsKey(zzvt.API)) {
                zzvvVar = (zzvv) this.sd.get(zzvt.API);
            }
            return new zzg(this.aL, this.rX, this.sc, this.rZ, this.sa, this.bX, this.sb, zzvvVar);
        }
    }

    public interface ConnectionCallbacks {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        void onConnected(@Nullable Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface OnConnectionFailedListener {
        void onConnectionFailed(@NonNull ConnectionResult connectionResult);
    }

    public static void dumpAll(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        synchronized (rW) {
            String concat = String.valueOf(str).concat("  ");
            int i = 0;
            for (GoogleApiClient googleApiClient : rW) {
                printWriter.append((CharSequence) str).append("GoogleApiClient#").println(i);
                googleApiClient.dump(concat, fileDescriptor, printWriter, strArr);
                i++;
            }
        }
    }

    public static Set<GoogleApiClient> zzaoe() {
        Set<GoogleApiClient> set;
        synchronized (rW) {
            set = rW;
        }
        return set;
    }

    public abstract ConnectionResult blockingConnect();

    public abstract ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit);

    public abstract PendingResult<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public void connect(int i) {
        throw new UnsupportedOperationException();
    }

    public abstract void disconnect();

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    @NonNull
    public abstract ConnectionResult getConnectionResult(@NonNull Api<?> api);

    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasConnectedApi(@NonNull Api<?> api);

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(@NonNull ConnectionCallbacks connectionCallbacks);

    public abstract boolean isConnectionFailedListenerRegistered(@NonNull OnConnectionFailedListener onConnectionFailedListener);

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(@NonNull ConnectionCallbacks connectionCallbacks);

    public abstract void registerConnectionFailedListener(@NonNull OnConnectionFailedListener onConnectionFailedListener);

    public abstract void stopAutoManage(@NonNull FragmentActivity fragmentActivity);

    public abstract void unregisterConnectionCallbacks(@NonNull ConnectionCallbacks connectionCallbacks);

    public abstract void unregisterConnectionFailedListener(@NonNull OnConnectionFailedListener onConnectionFailedListener);

    @NonNull
    public <C extends Api.zze> C zza(@NonNull Api.zzc<C> zzcVar) {
        throw new UnsupportedOperationException();
    }

    public void zza(zzqx zzqxVar) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(@NonNull Api<?> api) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(zzqt zzqtVar) {
        throw new UnsupportedOperationException();
    }

    public void zzaof() {
        throw new UnsupportedOperationException();
    }

    public void zzb(zzqx zzqxVar) {
        throw new UnsupportedOperationException();
    }

    public <A extends Api.zzb, R extends Result, T extends zzpm.zza<R, A>> T zzc(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    public <A extends Api.zzb, T extends zzpm.zza<? extends Result, A>> T zzd(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    public <L> zzqn<L> zzs(@NonNull L l) {
        throw new UnsupportedOperationException();
    }
}
