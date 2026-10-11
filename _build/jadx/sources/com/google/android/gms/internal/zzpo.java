package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzpo<R extends Result> extends PendingResult<R> {
    static final ThreadLocal<Boolean> sS = new ThreadLocal<Boolean>() { // from class: com.google.android.gms.internal.zzpo.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: zzaoy, reason: merged with bridge method [inline-methods] */
        public Boolean initialValue() {
            return false;
        }
    };
    private final Object sT;
    protected final zza<R> sU;
    protected final WeakReference<GoogleApiClient> sV;
    private final ArrayList<PendingResult.zza> sW;
    private ResultCallback<? super R> sX;
    private zzb sY;
    private volatile boolean sZ;
    private R sm;
    private boolean ta;
    private com.google.android.gms.common.internal.zzr tb;
    private volatile zzqx<R> tc;
    private boolean td;
    private boolean zzak;
    private final CountDownLatch zzale;

    public static class zza<R extends Result> extends Handler {
        public zza() {
            this(Looper.getMainLooper());
        }

        public zza(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    zzb((ResultCallback) pair.first, (Result) pair.second);
                    break;
                case 2:
                    ((zzpo) message.obj).zzaa(Status.st);
                    break;
                default:
                    Log.wtf("BasePendingResult", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
                    break;
            }
        }

        public void zza(ResultCallback<? super R> resultCallback, R r) {
            sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
        }

        public void zza(zzpo<R> zzpoVar, long j) {
            sendMessageDelayed(obtainMessage(2, zzpoVar), j);
        }

        public void zzaoz() {
            removeMessages(2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected void zzb(ResultCallback<? super R> resultCallback, R r) {
            try {
                resultCallback.onResult(r);
            } catch (RuntimeException e) {
                zzpo.zze(r);
                throw e;
            }
        }
    }

    private final class zzb {
        private zzb() {
        }

        protected void finalize() throws Throwable {
            zzpo.zze(zzpo.this.sm);
            super.finalize();
        }
    }

    @Deprecated
    zzpo() {
        this.sT = new Object();
        this.zzale = new CountDownLatch(1);
        this.sW = new ArrayList<>();
        this.td = false;
        this.sU = new zza<>(Looper.getMainLooper());
        this.sV = new WeakReference<>(null);
    }

    @Deprecated
    protected zzpo(Looper looper) {
        this.sT = new Object();
        this.zzale = new CountDownLatch(1);
        this.sW = new ArrayList<>();
        this.td = false;
        this.sU = new zza<>(looper);
        this.sV = new WeakReference<>(null);
    }

    protected zzpo(GoogleApiClient googleApiClient) {
        this.sT = new Object();
        this.zzale = new CountDownLatch(1);
        this.sW = new ArrayList<>();
        this.td = false;
        this.sU = new zza<>(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
        this.sV = new WeakReference<>(googleApiClient);
    }

    private R get() {
        R r;
        synchronized (this.sT) {
            com.google.android.gms.common.internal.zzab.zza(this.sZ ? false : true, "Result has already been consumed.");
            com.google.android.gms.common.internal.zzab.zza(isReady(), "Result is not ready.");
            r = this.sm;
            this.sm = null;
            this.sX = null;
            this.sZ = true;
        }
        zzaos();
        return r;
    }

    private void zzd(R r) {
        this.sm = r;
        this.tb = null;
        this.zzale.countDown();
        Status status = this.sm.getStatus();
        if (this.zzak) {
            this.sX = null;
        } else if (this.sX != null) {
            this.sU.zzaoz();
            this.sU.zza((ResultCallback<? super ResultCallback<? super R>>) this.sX, (ResultCallback<? super R>) get());
        } else if (this.sm instanceof Releasable) {
            this.sY = new zzb();
        }
        Iterator<PendingResult.zza> it = this.sW.iterator();
        while (it.hasNext()) {
            it.next().zzv(status);
        }
        this.sW.clear();
    }

    public static void zze(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                Log.w("BasePendingResult", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await() {
        com.google.android.gms.common.internal.zzab.zza(Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread");
        com.google.android.gms.common.internal.zzab.zza(!this.sZ, "Result has already been consumed");
        com.google.android.gms.common.internal.zzab.zza(this.tc == null, "Cannot await if then() has been called.");
        try {
            this.zzale.await();
        } catch (InterruptedException e) {
            zzaa(Status.sr);
        }
        com.google.android.gms.common.internal.zzab.zza(isReady(), "Result is not ready.");
        return get();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await(long j, TimeUnit timeUnit) {
        com.google.android.gms.common.internal.zzab.zza(j <= 0 || Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread when time is greater than zero.");
        com.google.android.gms.common.internal.zzab.zza(!this.sZ, "Result has already been consumed.");
        com.google.android.gms.common.internal.zzab.zza(this.tc == null, "Cannot await if then() has been called.");
        try {
            if (!this.zzale.await(j, timeUnit)) {
                zzaa(Status.st);
            }
        } catch (InterruptedException e) {
            zzaa(Status.sr);
        }
        com.google.android.gms.common.internal.zzab.zza(isReady(), "Result is not ready.");
        return get();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        synchronized (this.sT) {
            if (this.zzak || this.sZ) {
                return;
            }
            if (this.tb != null) {
                try {
                    this.tb.cancel();
                } catch (RemoteException e) {
                }
            }
            zze(this.sm);
            this.zzak = true;
            zzd(zzc(Status.su));
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public boolean isCanceled() {
        boolean z;
        synchronized (this.sT) {
            z = this.zzak;
        }
        return z;
    }

    public final boolean isReady() {
        return this.zzale.getCount() == 0;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        synchronized (this.sT) {
            if (resultCallback == null) {
                this.sX = null;
                return;
            }
            com.google.android.gms.common.internal.zzab.zza(!this.sZ, "Result has already been consumed.");
            com.google.android.gms.common.internal.zzab.zza(this.tc == null, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.sU.zza((ResultCallback<? super ResultCallback<? super R>>) resultCallback, (ResultCallback<? super R>) get());
            } else {
                this.sX = resultCallback;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        synchronized (this.sT) {
            if (resultCallback == null) {
                this.sX = null;
                return;
            }
            com.google.android.gms.common.internal.zzab.zza(!this.sZ, "Result has already been consumed.");
            com.google.android.gms.common.internal.zzab.zza(this.tc == null, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.sU.zza((ResultCallback<? super ResultCallback<? super R>>) resultCallback, (ResultCallback<? super R>) get());
            } else {
                this.sX = resultCallback;
                this.sU.zza(this, timeUnit.toMillis(j));
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        TransformedResult<S> then;
        com.google.android.gms.common.internal.zzab.zza(!this.sZ, "Result has already been consumed.");
        synchronized (this.sT) {
            com.google.android.gms.common.internal.zzab.zza(this.tc == null, "Cannot call then() twice.");
            com.google.android.gms.common.internal.zzab.zza(this.sX == null, "Cannot call then() if callbacks are set.");
            this.td = true;
            this.tc = new zzqx<>(this.sV);
            then = this.tc.then(resultTransform);
            if (isReady()) {
                this.sU.zza(this.tc, (zzqx<R>) get());
            } else {
                this.sX = this.tc;
            }
        }
        return then;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void zza(PendingResult.zza zzaVar) {
        com.google.android.gms.common.internal.zzab.zza(!this.sZ, "Result has already been consumed.");
        com.google.android.gms.common.internal.zzab.zzb(zzaVar != null, "Callback cannot be null.");
        synchronized (this.sT) {
            if (isReady()) {
                zzaVar.zzv(this.sm.getStatus());
            } else {
                this.sW.add(zzaVar);
            }
        }
    }

    protected final void zza(com.google.android.gms.common.internal.zzr zzrVar) {
        synchronized (this.sT) {
            this.tb = zzrVar;
        }
    }

    public final void zzaa(Status status) {
        synchronized (this.sT) {
            if (!isReady()) {
                zzc((zzpo<R>) zzc(status));
                this.ta = true;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public Integer zzaoj() {
        return null;
    }

    protected void zzaos() {
    }

    public boolean zzaov() {
        boolean isCanceled;
        synchronized (this.sT) {
            if (this.sV.get() == null || !this.td) {
                cancel();
            }
            isCanceled = isCanceled();
        }
        return isCanceled;
    }

    public void zzaow() {
        this.td = this.td || sS.get().booleanValue();
    }

    boolean zzaox() {
        return false;
    }

    protected abstract R zzc(Status status);

    public final void zzc(R r) {
        synchronized (this.sT) {
            if (this.ta || this.zzak || (isReady() && zzaox())) {
                zze(r);
                return;
            }
            com.google.android.gms.common.internal.zzab.zza(!isReady(), "Results have already been set");
            com.google.android.gms.common.internal.zzab.zza(this.sZ ? false : true, "Result has already been consumed");
            zzd(r);
        }
    }
}
