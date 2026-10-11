package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzkx {

    public interface zza<D, R> {
        R apply(D d);
    }

    public static <A, B> zzky<B> zza(final zzky<A> zzkyVar, final zza<A, B> zzaVar) {
        final zzkv zzkvVar = new zzkv();
        zzkyVar.zzc(new Runnable() { // from class: com.google.android.gms.internal.zzkx.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    zzkv.this.zzh(zzaVar.apply(zzkyVar.get()));
                } catch (InterruptedException | CancellationException | ExecutionException e) {
                    zzkv.this.cancel(true);
                }
            }
        });
        return zzkvVar;
    }

    public static <V> zzky<List<V>> zzn(final List<zzky<V>> list) {
        final zzkv zzkvVar = new zzkv();
        final int size = list.size();
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        Iterator<zzky<V>> it = list.iterator();
        while (it.hasNext()) {
            it.next().zzc(new Runnable() { // from class: com.google.android.gms.internal.zzkx.2
                @Override // java.lang.Runnable
                public void run() {
                    if (atomicInteger.incrementAndGet() >= size) {
                        try {
                            zzkvVar.zzh(zzkx.zzo(list));
                        } catch (InterruptedException | ExecutionException e) {
                            zzkd.zzd("Unable to convert list of futures to a future of list", e);
                        }
                    }
                }
            });
        }
        return zzkvVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <V> List<V> zzo(List<zzky<V>> list) throws ExecutionException, InterruptedException {
        ArrayList arrayList = new ArrayList();
        Iterator<zzky<V>> it = list.iterator();
        while (it.hasNext()) {
            V v = it.next().get();
            if (v != null) {
                arrayList.add(v);
            }
        }
        return arrayList;
    }
}
