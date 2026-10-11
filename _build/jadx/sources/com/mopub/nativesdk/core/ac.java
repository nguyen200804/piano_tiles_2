package com.mopub.nativesdk.core;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.mopub.nativesdk.a.b;
import com.mopub.nativesdk.a.d;
import java.util.Map;

/* compiled from: RRManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class ac implements com.mopub.nativesdk.c.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f4654a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f4655b;

    ac(n nVar, String str) {
        this.f4655b = nVar;
        this.f4654a = str;
    }

    @Override // com.mopub.nativesdk.c.k
    public final void a(Map<String, PackageInfo> map) {
        boolean z;
        Map map2;
        Map map3;
        Context context;
        Map map4;
        Map map5;
        if (map != null && map.size() > 0) {
            boolean z2 = false;
            for (String str : map.keySet()) {
                if (C0219a.c.containsKey(str)) {
                    z = z2;
                } else {
                    map2 = n.c;
                    if (map2.containsKey(str)) {
                        map4 = n.c;
                        int intValue = ((Integer) map4.get(str)).intValue();
                        if (intValue <= 3) {
                            map5 = n.c;
                            map5.put(str, Integer.valueOf(intValue));
                        }
                    }
                    map3 = n.c;
                    map3.put(str, 1);
                    context = this.f4655b.f4670a;
                    x a2 = b.a(d.a(context)).a(str);
                    if (a2 == null) {
                        this.f4655b.a(str, new ad(this, str));
                        z2 = true;
                    } else {
                        n nVar = this.f4655b;
                        String str2 = this.f4654a;
                        String b2 = a2.b();
                        a2.d();
                        nVar.a(str2, b2);
                        z = true;
                    }
                }
                z2 = z;
            }
            if (z2) {
                C0219a.c = map;
            }
        }
    }
}
