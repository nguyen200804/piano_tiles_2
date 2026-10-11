package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class zzapx {
    final byte[] apf;
    final int tag;

    zzapx(int i, byte[] bArr) {
        this.tag = i;
        this.apf = bArr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzapx)) {
            return false;
        }
        zzapx zzapxVar = (zzapx) obj;
        return this.tag == zzapxVar.tag && Arrays.equals(this.apf, zzapxVar.apf);
    }

    public int hashCode() {
        return ((this.tag + 527) * 31) + Arrays.hashCode(this.apf);
    }

    void zza(zzapo zzapoVar) throws IOException {
        zzapoVar.zzagb(this.tag);
        zzapoVar.zzbh(this.apf);
    }

    int zzx() {
        return zzapo.zzagc(this.tag) + 0 + this.apf.length;
    }
}
