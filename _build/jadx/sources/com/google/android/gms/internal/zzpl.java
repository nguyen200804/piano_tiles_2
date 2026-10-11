package com.google.android.gms.internal;

import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import java.util.Map;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzpl extends zzpo<com.google.android.gms.common.api.zzb> {
    private int sH;
    private boolean sI;

    private void zza(ConnectionResult connectionResult) {
        SimpleArrayMap simpleArrayMap = null;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= simpleArrayMap.size()) {
                return;
            }
            zza((zzpj) simpleArrayMap.keyAt(i2), connectionResult);
            i = i2 + 1;
        }
    }

    public void zza(zzpj<?> zzpjVar, ConnectionResult connectionResult) {
        Object obj = null;
        synchronized (obj) {
            SimpleArrayMap simpleArrayMap = null;
            try {
                simpleArrayMap.put(zzpjVar, connectionResult);
                this.sH--;
                if (!connectionResult.isSuccess()) {
                    this.sI = true;
                }
                if (this.sH == 0) {
                    Status status = this.sI ? new Status(13) : Status.sq;
                    SimpleArrayMap simpleArrayMap2 = null;
                    zzc((zzpl) (simpleArrayMap2.size() == 1 ? new com.google.android.gms.common.api.zza(status, null) : new com.google.android.gms.common.api.zzb(status, null)));
                }
            } finally {
            }
        }
    }

    public Set<zzpj<?>> zzaoq() {
        Map map = null;
        return map.keySet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzpo
    /* renamed from: zzy, reason: merged with bridge method [inline-methods] */
    public com.google.android.gms.common.api.zzb zzc(Status status) {
        Object obj = null;
        synchronized (obj) {
            try {
                zza(new ConnectionResult(8));
                SimpleArrayMap simpleArrayMap = null;
                com.google.android.gms.common.api.zzb zzaVar = simpleArrayMap.size() == 1 ? new com.google.android.gms.common.api.zza(status, null) : new com.google.android.gms.common.api.zzb(status, null);
                return zzaVar;
            } finally {
            }
        }
    }
}
