package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzqn<L> {
    private volatile L mListener;
    private final zza vs;

    private final class zza extends Handler {
        public zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            com.google.android.gms.common.internal.zzab.zzbo(message.what == 1);
            zzqn.this.zzb((zzb) message.obj);
        }
    }

    public interface zzb<L> {
        void zzapj();

        void zzt(L l);
    }

    zzqn(Looper looper, L l) {
        this.vs = new zza(looper);
        this.mListener = (L) com.google.android.gms.common.internal.zzab.zzb(l, "Listener must not be null");
    }

    public void clear() {
        this.mListener = null;
    }

    public void zza(zzb<? super L> zzbVar) {
        com.google.android.gms.common.internal.zzab.zzb(zzbVar, "Notifier must not be null");
        this.vs.sendMessage(this.vs.obtainMessage(1, zzbVar));
    }

    void zzb(zzb<? super L> zzbVar) {
        L l = this.mListener;
        if (l == null) {
            zzbVar.zzapj();
            return;
        }
        try {
            zzbVar.zzt(l);
        } catch (RuntimeException e) {
            zzbVar.zzapj();
            throw e;
        }
    }
}
