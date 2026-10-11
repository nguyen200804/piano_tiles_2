package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpm;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzqy {
    private static final zzpm.zza<?, ?>[] vF = new zzpm.zza[0];
    private final Map<Api.zzc<?>, Api.zze> ui;
    final Set<zzpm.zza<?, ?>> vG;
    private final zzb vH;
    private zzc vI;

    private static class zza implements IBinder.DeathRecipient, zzb {
        private final WeakReference<zzpm.zza<?, ?>> vK;
        private final WeakReference<com.google.android.gms.common.api.zzd> vL;
        private final WeakReference<IBinder> vM;

        private zza(zzpm.zza<?, ?> zzaVar, com.google.android.gms.common.api.zzd zzdVar, IBinder iBinder) {
            this.vL = new WeakReference<>(zzdVar);
            this.vK = new WeakReference<>(zzaVar);
            this.vM = new WeakReference<>(iBinder);
        }

        private void zzaqg() {
            zzpm.zza<?, ?> zzaVar = this.vK.get();
            com.google.android.gms.common.api.zzd zzdVar = this.vL.get();
            if (zzdVar != null && zzaVar != null) {
                zzdVar.remove(zzaVar.zzaoj().intValue());
            }
            IBinder iBinder = this.vM.get();
            if (this.vM != null) {
                iBinder.unlinkToDeath(this, 0);
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            zzaqg();
        }

        @Override // com.google.android.gms.internal.zzqy.zzb
        public void zzh(zzpm.zza<?, ?> zzaVar) {
            zzaqg();
        }
    }

    interface zzb {
        void zzh(zzpm.zza<?, ?> zzaVar);
    }

    interface zzc {
        void zzaqn();
    }

    public zzqy(Api.zzc<?> zzcVar, Api.zze zzeVar) {
        this.vG = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
        this.vH = new zzb() { // from class: com.google.android.gms.internal.zzqy.1
            @Override // com.google.android.gms.internal.zzqy.zzb
            public void zzh(zzpm.zza<?, ?> zzaVar) {
                zzqy.this.vG.remove(zzaVar);
                if (zzaVar.zzaoj() != null && zzqy.zza(zzqy.this) != null) {
                    zzqy.zza(zzqy.this).remove(zzaVar.zzaoj().intValue());
                }
                if (zzqy.this.vI == null || !zzqy.this.vG.isEmpty()) {
                    return;
                }
                zzqy.this.vI.zzaqn();
            }
        };
        this.vI = null;
        this.ui = new ArrayMap();
        this.ui.put(zzcVar, zzeVar);
    }

    public zzqy(Map<Api.zzc<?>, Api.zze> map) {
        this.vG = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
        this.vH = new zzb() { // from class: com.google.android.gms.internal.zzqy.1
            @Override // com.google.android.gms.internal.zzqy.zzb
            public void zzh(zzpm.zza<?, ?> zzaVar) {
                zzqy.this.vG.remove(zzaVar);
                if (zzaVar.zzaoj() != null && zzqy.zza(zzqy.this) != null) {
                    zzqy.zza(zzqy.this).remove(zzaVar.zzaoj().intValue());
                }
                if (zzqy.this.vI == null || !zzqy.this.vG.isEmpty()) {
                    return;
                }
                zzqy.this.vI.zzaqn();
            }
        };
        this.vI = null;
        this.ui = map;
    }

    static /* synthetic */ com.google.android.gms.common.api.zzd zza(zzqy zzqyVar) {
        return null;
    }

    private static void zza(zzpm.zza<?, ?> zzaVar, com.google.android.gms.common.api.zzd zzdVar, IBinder iBinder) {
        if (zzaVar.isReady()) {
            zzaVar.zza((zzb) new zza(zzaVar, zzdVar, iBinder));
            return;
        }
        if (iBinder == null || !iBinder.isBinderAlive()) {
            zzaVar.zza((zzb) null);
            zzaVar.cancel();
            zzdVar.remove(zzaVar.zzaoj().intValue());
        } else {
            zza zzaVar2 = new zza(zzaVar, zzdVar, iBinder);
            zzaVar.zza((zzb) zzaVar2);
            try {
                iBinder.linkToDeath(zzaVar2, 0);
            } catch (RemoteException e) {
                zzaVar.cancel();
                zzdVar.remove(zzaVar.zzaoj().intValue());
            }
        }
    }

    public void dump(PrintWriter printWriter) {
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.vG.size());
    }

    public void release() {
        for (zzpm.zza zzaVar : (zzpm.zza[]) this.vG.toArray(vF)) {
            zzaVar.zza((zzb) null);
            if (zzaVar.zzaoj() != null) {
                zzaVar.zzaor();
                zza(zzaVar, null, this.ui.get(zzaVar.zzans()).zzanv());
                this.vG.remove(zzaVar);
            } else if (zzaVar.zzaov()) {
                this.vG.remove(zzaVar);
            }
        }
    }

    public void zza(zzc zzcVar) {
        if (this.vG.isEmpty()) {
            zzcVar.zzaqn();
        }
        this.vI = zzcVar;
    }

    public void zzaqz() {
        for (zzpm.zza zzaVar : (zzpm.zza[]) this.vG.toArray(vF)) {
            zzaVar.zzaa(new Status(8, "The connection to Google Play services was lost"));
        }
    }

    public boolean zzara() {
        for (zzpm.zza zzaVar : (zzpm.zza[]) this.vG.toArray(vF)) {
            if (!zzaVar.isReady()) {
                return true;
            }
        }
        return false;
    }

    <A extends Api.zzb> void zzg(zzpm.zza<? extends Result, A> zzaVar) {
        this.vG.add(zzaVar);
        zzaVar.zza(this.vH);
    }
}
