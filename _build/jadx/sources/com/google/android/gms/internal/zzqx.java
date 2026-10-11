package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import java.lang.ref.WeakReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzqx<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {
    private final WeakReference<GoogleApiClient> sV;
    private final zza vB;
    private ResultTransform<? super R, ? extends Result> vw = null;
    private zzqx<? extends Result> vx = null;
    private volatile ResultCallbacks<? super R> vy = null;
    private PendingResult<R> vz = null;
    private final Object sT = new Object();
    private Status vA = null;
    private boolean vC = false;

    private final class zza extends Handler {
        public zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    PendingResult<?> pendingResult = (PendingResult) message.obj;
                    synchronized (zzqx.this.sT) {
                        if (pendingResult == null) {
                            zzqx.this.vx.zzac(new Status(13, "Transform returned null"));
                        } else if (pendingResult instanceof zzqs) {
                            zzqx.this.vx.zzac(((zzqs) pendingResult).getStatus());
                        } else {
                            zzqx.this.vx.zza(pendingResult);
                        }
                    }
                    return;
                case 1:
                    RuntimeException runtimeException = (RuntimeException) message.obj;
                    String valueOf = String.valueOf(runtimeException.getMessage());
                    Log.e("TransformedResultImpl", valueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(valueOf) : new String("Runtime exception on the transformation worker thread: "));
                    throw runtimeException;
                default:
                    Log.e("TransformedResultImpl", new StringBuilder(70).append("TransformationResultHandler received unknown message type: ").append(message.what).toString());
                    return;
            }
        }
    }

    public zzqx(WeakReference<GoogleApiClient> weakReference) {
        com.google.android.gms.common.internal.zzab.zzb(weakReference, "GoogleApiClient reference must not be null");
        this.sV = weakReference;
        GoogleApiClient googleApiClient = this.sV.get();
        this.vB = new zza(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzac(Status status) {
        synchronized (this.sT) {
            this.vA = status;
            zzad(this.vA);
        }
    }

    private void zzad(Status status) {
        synchronized (this.sT) {
            if (this.vw != null) {
                Status onFailure = this.vw.onFailure(status);
                com.google.android.gms.common.internal.zzab.zzb(onFailure, "onFailure must not return null");
                this.vx.zzac(onFailure);
            } else if (zzaqy()) {
                this.vy.onFailure(status);
            }
        }
    }

    private void zzaqw() {
        if (this.vw == null && this.vy == null) {
            return;
        }
        GoogleApiClient googleApiClient = this.sV.get();
        if (!this.vC && this.vw != null && googleApiClient != null) {
            googleApiClient.zza(this);
            this.vC = true;
        }
        if (this.vA != null) {
            zzad(this.vA);
        } else if (this.vz != null) {
            this.vz.setResultCallback(this);
        }
    }

    private boolean zzaqy() {
        return (this.vy == null || this.sV.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zze(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                Log.w("TransformedResultImpl", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public void andFinally(@NonNull ResultCallbacks<? super R> resultCallbacks) {
        synchronized (this.sT) {
            com.google.android.gms.common.internal.zzab.zza(this.vy == null, "Cannot call andFinally() twice.");
            com.google.android.gms.common.internal.zzab.zza(this.vw == null, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.vy = resultCallbacks;
            zzaqw();
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public void onResult(final R r) {
        synchronized (this.sT) {
            if (!r.getStatus().isSuccess()) {
                zzac(r.getStatus());
                zze(r);
            } else if (this.vw != null) {
                zzqr.zzaqc().submit(new Runnable() { // from class: com.google.android.gms.internal.zzqx.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    @WorkerThread
                    public void run() {
                        try {
                            try {
                                zzpo.sS.set(true);
                                zzqx.this.vB.sendMessage(zzqx.this.vB.obtainMessage(0, zzqx.this.vw.onSuccess(r)));
                                zzpo.sS.set(false);
                                zzqx.this.zze(r);
                                GoogleApiClient googleApiClient = (GoogleApiClient) zzqx.this.sV.get();
                                if (googleApiClient != null) {
                                    googleApiClient.zzb(zzqx.this);
                                }
                            } catch (RuntimeException e) {
                                zzqx.this.vB.sendMessage(zzqx.this.vB.obtainMessage(1, e));
                                zzpo.sS.set(false);
                                zzqx.this.zze(r);
                                GoogleApiClient googleApiClient2 = (GoogleApiClient) zzqx.this.sV.get();
                                if (googleApiClient2 != null) {
                                    googleApiClient2.zzb(zzqx.this);
                                }
                            }
                        } finally {
                        }
                    }
                });
            } else if (zzaqy()) {
                this.vy.onSuccess(r);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    @NonNull
    public <S extends Result> TransformedResult<S> then(@NonNull ResultTransform<? super R, ? extends S> resultTransform) {
        zzqx<? extends Result> zzqxVar;
        synchronized (this.sT) {
            com.google.android.gms.common.internal.zzab.zza(this.vw == null, "Cannot call then() twice.");
            com.google.android.gms.common.internal.zzab.zza(this.vy == null, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.vw = resultTransform;
            zzqxVar = new zzqx<>(this.sV);
            this.vx = zzqxVar;
            zzaqw();
        }
        return zzqxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void zza(PendingResult<?> pendingResult) {
        synchronized (this.sT) {
            this.vz = pendingResult;
            zzaqw();
        }
    }

    void zzaqx() {
        this.vy = null;
    }
}
