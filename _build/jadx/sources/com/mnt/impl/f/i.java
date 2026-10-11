package com.mnt.impl.f;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ Context f4015a;

    i(Context context) {
        this.f4015a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        Map map2;
        try {
            SharedPreferences a2 = com.mnt.impl.b.h.a(this.f4015a);
            Map<String, ?> all = a2.getAll();
            SharedPreferences.Editor edit = a2.edit();
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                com.mnt.impl.e.b bVar = new com.mnt.impl.e.b(entry.getValue().toString());
                if (bVar.a()) {
                    map = h.r;
                    map.remove(entry.getKey());
                    edit.remove(entry.getKey());
                } else {
                    map2 = h.r;
                    map2.put(entry.getKey(), bVar);
                }
            }
            com.mnt.impl.b.h.a(edit);
        } catch (Exception e) {
        }
        h.f();
    }
}
