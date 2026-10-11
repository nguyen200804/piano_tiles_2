package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class zzang<T> extends zzanh<T> {
    private zzanh<T> bdZ;
    private final zzand<T> beo;
    private final zzamu<T> bep;
    private final zzamp beq;
    private final zzaol<T> ber;
    private final zzani bes;

    private static class zza implements zzani {
        private final zzand<?> beo;
        private final zzamu<?> bep;
        private final zzaol<?> bet;
        private final boolean beu;
        private final Class<?> bev;

        private zza(Object obj, zzaol<?> zzaolVar, boolean z, Class<?> cls) {
            this.beo = obj instanceof zzand ? (zzand) obj : null;
            this.bep = obj instanceof zzamu ? (zzamu) obj : null;
            zzann.zzbo((this.beo == null && this.bep == null) ? false : true);
            this.bet = zzaolVar;
            this.beu = z;
            this.bev = cls;
        }

        @Override // com.google.android.gms.internal.zzani
        public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
            if (this.bet != null ? this.bet.equals(zzaolVar) || (this.beu && this.bet.n() == zzaolVar.m()) : this.bev.isAssignableFrom(zzaolVar.m())) {
                return new zzang(this.beo, this.bep, zzampVar, zzaolVar, this);
            }
            return null;
        }
    }

    private zzang(zzand<T> zzandVar, zzamu<T> zzamuVar, zzamp zzampVar, zzaol<T> zzaolVar, zzani zzaniVar) {
        this.beo = zzandVar;
        this.bep = zzamuVar;
        this.beq = zzampVar;
        this.ber = zzaolVar;
        this.bes = zzaniVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzani zza(zzaol<?> zzaolVar, Object obj) {
        return new zza(obj, zzaolVar, false, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzani zzb(zzaol<?> zzaolVar, Object obj) {
        return new zza(obj, zzaolVar, zzaolVar.n() == zzaolVar.m(), null);
    }

    private zzanh<T> zzczr() {
        zzanh<T> zzanhVar = this.bdZ;
        if (zzanhVar != null) {
            return zzanhVar;
        }
        zzanh<T> zza2 = this.beq.zza(this.bes, this.ber);
        this.bdZ = zza2;
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzanh
    public void zza(zzaoo zzaooVar, T t) throws IOException {
        if (this.beo == null) {
            zzczr().zza(zzaooVar, t);
        } else if (t == null) {
            zzaooVar.l();
        } else {
            zzanw.zzb(this.beo.zza(t, this.ber.n(), this.beq.bdX), zzaooVar);
        }
    }

    @Override // com.google.android.gms.internal.zzanh
    public T zzb(zzaom zzaomVar) throws IOException {
        if (this.bep == null) {
            return zzczr().zzb(zzaomVar);
        }
        zzamv zzh = zzanw.zzh(zzaomVar);
        if (zzh.zzczj()) {
            return null;
        }
        try {
            return this.bep.zzb(zzh, this.ber.n(), this.beq.bdW);
        } catch (zzamz e) {
            throw e;
        } catch (Exception e2) {
            throw new zzamz(e2);
        }
    }
}
