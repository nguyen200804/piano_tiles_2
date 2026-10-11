package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzams extends zzamv implements Iterable<zzamv> {
    private final List<zzamv> aFj = new ArrayList();

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof zzams) && ((zzams) obj).aFj.equals(this.aFj));
    }

    @Override // com.google.android.gms.internal.zzamv
    public boolean getAsBoolean() {
        if (this.aFj.size() == 1) {
            return this.aFj.get(0).getAsBoolean();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.zzamv
    public double getAsDouble() {
        if (this.aFj.size() == 1) {
            return this.aFj.get(0).getAsDouble();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.zzamv
    public int getAsInt() {
        if (this.aFj.size() == 1) {
            return this.aFj.get(0).getAsInt();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.zzamv
    public long getAsLong() {
        if (this.aFj.size() == 1) {
            return this.aFj.get(0).getAsLong();
        }
        throw new IllegalStateException();
    }

    public int hashCode() {
        return this.aFj.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator<zzamv> iterator() {
        return this.aFj.iterator();
    }

    public void zzc(zzamv zzamvVar) {
        if (zzamvVar == null) {
            zzamvVar = zzamx.bei;
        }
        this.aFj.add(zzamvVar);
    }

    @Override // com.google.android.gms.internal.zzamv
    public Number zzcze() {
        if (this.aFj.size() == 1) {
            return this.aFj.get(0).zzcze();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.zzamv
    public String zzczf() {
        if (this.aFj.size() == 1) {
            return this.aFj.get(0).zzczf();
        }
        throw new IllegalStateException();
    }
}
