package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.BinderThread;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzpm;
import com.google.android.gms.internal.zzqa;
import com.google.android.gms.signin.internal.SignInResponse;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzpw implements zzpz {
    private final Context mContext;
    private final Api.zza<? extends zzvu, zzvv> si;
    private ConnectionResult tA;
    private int tB;
    private int tD;
    private zzvu tG;
    private int tH;
    private boolean tI;
    private boolean tJ;
    private com.google.android.gms.common.internal.zzq tK;
    private boolean tL;
    private boolean tM;
    private final com.google.android.gms.common.internal.zzg tN;
    private final Map<Api<?>, Integer> tO;
    private final Lock tr;
    private final zzqa tw;
    private final com.google.android.gms.common.zzc tz;
    private int tC = 0;
    private final Bundle tE = new Bundle();
    private final Set<Api.zzc> tF = new HashSet();
    private ArrayList<Future<?>> tP = new ArrayList<>();

    private static class zza implements zzd.zzf {
        private final Api<?> pN;
        private final WeakReference<zzpw> tR;
        private final int tf;

        public zza(zzpw zzpwVar, Api<?> api, int i) {
            this.tR = new WeakReference<>(zzpwVar);
            this.pN = api;
            this.tf = i;
        }

        @Override // com.google.android.gms.common.internal.zzd.zzf
        public void zzh(@NonNull ConnectionResult connectionResult) {
            zzpw zzpwVar = this.tR.get();
            if (zzpwVar == null) {
                return;
            }
            com.google.android.gms.common.internal.zzab.zza(Looper.myLooper() == zzpwVar.tw.th.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            zzpwVar.tr.lock();
            try {
                if (zzpwVar.zzfi(0)) {
                    if (!connectionResult.isSuccess()) {
                        zzpwVar.zzb(connectionResult, this.pN, this.tf);
                    }
                    if (zzpwVar.zzapm()) {
                        zzpwVar.zzapn();
                    }
                }
            } finally {
                zzpwVar.tr.unlock();
            }
        }
    }

    private class zzb extends zzf {
        private final Map<Api.zze, zza> tS;

        public zzb(Map<Api.zze, zza> map) {
            super();
            this.tS = map;
        }

        @Override // com.google.android.gms.internal.zzpw.zzf
        @WorkerThread
        public void zzapl() {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4 = true;
            Iterator<Api.zze> it = this.tS.keySet().iterator();
            boolean z5 = true;
            boolean z6 = false;
            while (true) {
                if (!it.hasNext()) {
                    z4 = z6;
                    z = false;
                    break;
                }
                Api.zze next = it.next();
                if (!next.zzanu()) {
                    z2 = false;
                    z3 = z6;
                } else if (this.tS.get(next).tf == 0) {
                    z = true;
                    break;
                } else {
                    z2 = z5;
                    z3 = true;
                }
                z6 = z3;
                z5 = z2;
            }
            int isGooglePlayServicesAvailable = z4 ? zzpw.this.tz.isGooglePlayServicesAvailable(zzpw.this.mContext) : 0;
            if (isGooglePlayServicesAvailable != 0 && (z || z5)) {
                final ConnectionResult connectionResult = new ConnectionResult(isGooglePlayServicesAvailable, null);
                zzpw.this.tw.zza(new zzqa.zza(zzpw.this) { // from class: com.google.android.gms.internal.zzpw.zzb.1
                    @Override // com.google.android.gms.internal.zzqa.zza
                    public void zzapl() {
                        zzpw.this.zzg(connectionResult);
                    }
                });
                return;
            }
            if (zzpw.this.tI) {
                zzpw.this.tG.connect();
            }
            for (Api.zze zzeVar : this.tS.keySet()) {
                final zza zzaVar = this.tS.get(zzeVar);
                if (!zzeVar.zzanu() || isGooglePlayServicesAvailable == 0) {
                    zzeVar.zza(zzaVar);
                } else {
                    zzpw.this.tw.zza(new zzqa.zza(zzpw.this) { // from class: com.google.android.gms.internal.zzpw.zzb.2
                        @Override // com.google.android.gms.internal.zzqa.zza
                        public void zzapl() {
                            zzaVar.zzh(new ConnectionResult(16, null));
                        }
                    });
                }
            }
        }
    }

    private class zzc extends zzf {
        private final ArrayList<Api.zze> tW;

        public zzc(ArrayList<Api.zze> arrayList) {
            super();
            this.tW = arrayList;
        }

        @Override // com.google.android.gms.internal.zzpw.zzf
        @WorkerThread
        public void zzapl() {
            zzpw.this.tw.th.uj = zzpw.this.zzaps();
            Iterator<Api.zze> it = this.tW.iterator();
            while (it.hasNext()) {
                it.next().zza(zzpw.this.tK, zzpw.this.tw.th.uj);
            }
        }
    }

    private static class zzd extends com.google.android.gms.signin.internal.zzb {
        private final WeakReference<zzpw> tR;

        zzd(zzpw zzpwVar) {
            this.tR = new WeakReference<>(zzpwVar);
        }

        @Override // com.google.android.gms.signin.internal.zzb, com.google.android.gms.signin.internal.zzd
        @BinderThread
        public void zzb(final SignInResponse signInResponse) {
            final zzpw zzpwVar = this.tR.get();
            if (zzpwVar == null) {
                return;
            }
            zzpwVar.tw.zza(new zzqa.zza(zzpwVar) { // from class: com.google.android.gms.internal.zzpw.zzd.1
                @Override // com.google.android.gms.internal.zzqa.zza
                public void zzapl() {
                    zzpwVar.zza(signInResponse);
                }
            });
        }
    }

    private class zze implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        private zze() {
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            zzpw.this.tG.zza(new zzd(zzpw.this));
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            zzpw.this.tr.lock();
            try {
                if (zzpw.this.zzf(connectionResult)) {
                    zzpw.this.zzapq();
                    zzpw.this.zzapn();
                } else {
                    zzpw.this.zzg(connectionResult);
                }
            } finally {
                zzpw.this.tr.unlock();
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
        }
    }

    private abstract class zzf implements Runnable {
        private zzf() {
        }

        @Override // java.lang.Runnable
        @WorkerThread
        public void run() {
            zzpw.this.tr.lock();
            try {
                if (Thread.interrupted()) {
                    return;
                }
                zzapl();
            } catch (RuntimeException e) {
                zzpw.this.tw.zza(e);
            } finally {
                zzpw.this.tr.unlock();
            }
        }

        @WorkerThread
        protected abstract void zzapl();
    }

    public zzpw(zzqa zzqaVar, com.google.android.gms.common.internal.zzg zzgVar, Map<Api<?>, Integer> map, com.google.android.gms.common.zzc zzcVar, Api.zza<? extends zzvu, zzvv> zzaVar, Lock lock, Context context) {
        this.tw = zzqaVar;
        this.tN = zzgVar;
        this.tO = map;
        this.tz = zzcVar;
        this.si = zzaVar;
        this.tr = lock;
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(SignInResponse signInResponse) {
        if (zzfi(0)) {
            ConnectionResult zzath = signInResponse.zzath();
            if (!zzath.isSuccess()) {
                if (!zzf(zzath)) {
                    zzg(zzath);
                    return;
                } else {
                    zzapq();
                    zzapn();
                    return;
                }
            }
            ResolveAccountResponse zzbzz = signInResponse.zzbzz();
            ConnectionResult zzath2 = zzbzz.zzath();
            if (!zzath2.isSuccess()) {
                String valueOf = String.valueOf(zzath2);
                Log.wtf("GoogleApiClientConnecting", new StringBuilder(String.valueOf(valueOf).length() + 48).append("Sign-in succeeded with resolve account failure: ").append(valueOf).toString(), new Exception());
                zzg(zzath2);
            } else {
                this.tJ = true;
                this.tK = zzbzz.zzatg();
                this.tL = zzbzz.zzati();
                this.tM = zzbzz.zzatj();
                zzapn();
            }
        }
    }

    private boolean zza(int i, int i2, ConnectionResult connectionResult) {
        if (i2 != 1 || zze(connectionResult)) {
            return this.tA == null || i < this.tB;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzapm() {
        this.tD--;
        if (this.tD > 0) {
            return false;
        }
        if (this.tD < 0) {
            Log.w("GoogleApiClientConnecting", this.tw.th.zzapy());
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            zzg(new ConnectionResult(8, null));
            return false;
        }
        if (this.tA == null) {
            return true;
        }
        this.tw.uA = this.tB;
        zzg(this.tA);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzapn() {
        if (this.tD != 0) {
            return;
        }
        if (!this.tI || this.tJ) {
            zzapo();
        }
    }

    private void zzapo() {
        ArrayList arrayList = new ArrayList();
        this.tC = 1;
        this.tD = this.tw.ui.size();
        for (Api.zzc<?> zzcVar : this.tw.ui.keySet()) {
            if (!this.tw.ux.containsKey(zzcVar)) {
                arrayList.add(this.tw.ui.get(zzcVar));
            } else if (zzapm()) {
                zzapp();
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.tP.add(zzqb.zzaqc().submit(new zzc(arrayList)));
    }

    private void zzapp() {
        this.tw.zzaqa();
        zzqb.zzaqc().execute(new Runnable() { // from class: com.google.android.gms.internal.zzpw.1
            @Override // java.lang.Runnable
            public void run() {
                zzpw.this.tz.zzbp(zzpw.this.mContext);
            }
        });
        if (this.tG != null) {
            if (this.tL) {
                this.tG.zza(this.tK, this.tM);
            }
            zzbm(false);
        }
        Iterator<Api.zzc<?>> it = this.tw.ux.keySet().iterator();
        while (it.hasNext()) {
            this.tw.ui.get(it.next()).disconnect();
        }
        this.tw.uB.zzm(this.tE.isEmpty() ? null : this.tE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzapq() {
        this.tI = false;
        this.tw.th.uj = Collections.emptySet();
        for (Api.zzc<?> zzcVar : this.tF) {
            if (!this.tw.ux.containsKey(zzcVar)) {
                this.tw.ux.put(zzcVar, new ConnectionResult(17, null));
            }
        }
    }

    private void zzapr() {
        Iterator<Future<?>> it = this.tP.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
        this.tP.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<Scope> zzaps() {
        if (this.tN == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(this.tN.zzasj());
        Map<Api<?>, zzg.zza> zzasl = this.tN.zzasl();
        for (Api<?> api : zzasl.keySet()) {
            if (!this.tw.ux.containsKey(api.zzans())) {
                hashSet.addAll(zzasl.get(api).dT);
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(ConnectionResult connectionResult, Api<?> api, int i) {
        if (i != 2) {
            int priority = api.zzanp().getPriority();
            if (zza(priority, i, connectionResult)) {
                this.tA = connectionResult;
                this.tB = priority;
            }
        }
        this.tw.ux.put(api.zzans(), connectionResult);
    }

    private void zzbm(boolean z) {
        if (this.tG != null) {
            if (this.tG.isConnected() && z) {
                this.tG.zzbzo();
            }
            this.tG.disconnect();
            this.tK = null;
        }
    }

    private boolean zze(ConnectionResult connectionResult) {
        return connectionResult.hasResolution() || this.tz.zzfc(connectionResult.getErrorCode()) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzf(ConnectionResult connectionResult) {
        if (this.tH != 2) {
            return this.tH == 1 && !connectionResult.hasResolution();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzfi(int i) {
        if (this.tC == i) {
            return true;
        }
        Log.w("GoogleApiClientConnecting", this.tw.th.zzapy());
        String valueOf = String.valueOf(this);
        Log.w("GoogleApiClientConnecting", new StringBuilder(String.valueOf(valueOf).length() + 23).append("Unexpected callback in ").append(valueOf).toString());
        Log.w("GoogleApiClientConnecting", new StringBuilder(33).append("mRemainingConnections=").append(this.tD).toString());
        String valueOf2 = String.valueOf(zzfj(this.tC));
        String valueOf3 = String.valueOf(zzfj(i));
        Log.wtf("GoogleApiClientConnecting", new StringBuilder(String.valueOf(valueOf2).length() + 70 + String.valueOf(valueOf3).length()).append("GoogleApiClient connecting is in step ").append(valueOf2).append(" but received callback for step ").append(valueOf3).toString(), new Exception());
        zzg(new ConnectionResult(8, null));
        return false;
    }

    private String zzfj(int i) {
        switch (i) {
            case 0:
                return "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
            case 1:
                return "STEP_GETTING_REMOTE_SERVICE";
            default:
                return "UNKNOWN";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzg(ConnectionResult connectionResult) {
        zzapr();
        zzbm(!connectionResult.hasResolution());
        this.tw.zzi(connectionResult);
        this.tw.uB.zzd(connectionResult);
    }

    @Override // com.google.android.gms.internal.zzpz
    public void begin() {
        this.tw.ux.clear();
        this.tI = false;
        this.tA = null;
        this.tC = 0;
        this.tH = 2;
        this.tJ = false;
        this.tL = false;
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (Api<?> api : this.tO.keySet()) {
            Api.zze zzeVar = this.tw.ui.get(api.zzans());
            int intValue = this.tO.get(api).intValue();
            boolean z2 = (api.zzanp().getPriority() == 1) | z;
            if (zzeVar.zzafk()) {
                this.tI = true;
                if (intValue < this.tH) {
                    this.tH = intValue;
                }
                if (intValue != 0) {
                    this.tF.add(api.zzans());
                }
            }
            hashMap.put(zzeVar, new zza(this, api, intValue));
            z = z2;
        }
        if (z) {
            this.tI = false;
        }
        if (this.tI) {
            this.tN.zzc(Integer.valueOf(this.tw.th.getSessionId()));
            zze zzeVar2 = new zze();
            this.tG = this.si.zza(this.mContext, this.tw.th.getLooper(), this.tN, this.tN.zzasp(), zzeVar2, zzeVar2);
        }
        this.tD = this.tw.ui.size();
        this.tP.add(zzqb.zzaqc().submit(new zzb(hashMap)));
    }

    @Override // com.google.android.gms.internal.zzpz
    public void connect() {
    }

    @Override // com.google.android.gms.internal.zzpz
    public boolean disconnect() {
        zzapr();
        zzbm(true);
        this.tw.zzi(null);
        return true;
    }

    @Override // com.google.android.gms.internal.zzpz
    public void onConnected(Bundle bundle) {
        if (zzfi(1)) {
            if (bundle != null) {
                this.tE.putAll(bundle);
            }
            if (zzapm()) {
                zzapp();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzpz
    public void onConnectionSuspended(int i) {
        zzg(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.internal.zzpz
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
        if (zzfi(1)) {
            zzb(connectionResult, api, i);
            if (zzapm()) {
                zzapp();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzpz
    public <A extends Api.zzb, R extends Result, T extends zzpm.zza<R, A>> T zzc(T t) {
        this.tw.th.uc.add(t);
        return t;
    }

    @Override // com.google.android.gms.internal.zzpz
    public <A extends Api.zzb, T extends zzpm.zza<? extends Result, A>> T zzd(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
