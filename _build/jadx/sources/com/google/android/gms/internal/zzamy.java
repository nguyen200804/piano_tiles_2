package com.google.android.gms.internal;

import java.util.Map;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzamy extends zzamv {
    private final zzant<String, zzamv> bej = new zzant<>();

    public Set<Map.Entry<String, zzamv>> entrySet() {
        return this.bej.entrySet();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof zzamy) && ((zzamy) obj).bej.equals(this.bej));
    }

    public boolean has(String str) {
        return this.bej.containsKey(str);
    }

    public int hashCode() {
        return this.bej.hashCode();
    }

    public void zza(String str, zzamv zzamvVar) {
        if (zzamvVar == null) {
            zzamvVar = zzamx.bei;
        }
        this.bej.put(str, zzamvVar);
    }

    public zzamv zzto(String str) {
        return this.bej.get(str);
    }
}
