package com.google.android.gms.internal;

import android.os.Looper;
import android.support.annotation.NonNull;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzqo {
    private final Set<zzqn<?>> mb = Collections.newSetFromMap(new WeakHashMap());

    public void release() {
        Iterator<zzqn<?>> it = this.mb.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.mb.clear();
    }

    public <L> zzqn<L> zzb(@NonNull L l, Looper looper) {
        com.google.android.gms.common.internal.zzab.zzb(l, "Listener must not be null");
        com.google.android.gms.common.internal.zzab.zzb(looper, "Looper must not be null");
        zzqn<L> zzqnVar = new zzqn<>(looper, l);
        this.mb.add(zzqnVar);
        return zzqnVar;
    }
}
