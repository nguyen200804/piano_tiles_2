package com.tencent.wxop.stat;

import android.content.Context;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class as implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f4822a;
    final /* synthetic */ f bM;
    final /* synthetic */ Context co;

    as(String str, Context context, f fVar) {
        this.f4822a = str;
        this.co = context;
        this.bM = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tencent.wxop.stat.b.b bVar;
        Map map;
        Map map2;
        Map map3;
        String str;
        Map map4;
        String str2;
        com.tencent.wxop.stat.b.b bVar2;
        String str3;
        com.tencent.wxop.stat.b.b bVar3;
        try {
            map = e.aT;
            synchronized (map) {
                map2 = e.aT;
                if (map2.size() >= c.v()) {
                    bVar3 = e.aV;
                    bVar3.error("The number of page events exceeds the maximum value " + Integer.toString(c.v()));
                } else {
                    String unused = e.aR = this.f4822a;
                    map3 = e.aT;
                    str = e.aR;
                    if (map3.containsKey(str)) {
                        bVar2 = e.aV;
                        StringBuilder sb = new StringBuilder("Duplicate PageID : ");
                        str3 = e.aR;
                        bVar2.d(sb.append(str3).append(", onResume() repeated?").toString());
                    } else {
                        map4 = e.aT;
                        str2 = e.aR;
                        map4.put(str2, Long.valueOf(System.currentTimeMillis()));
                        e.a(this.co, true, this.bM);
                    }
                }
            }
        } catch (Throwable th) {
            bVar = e.aV;
            bVar.b(th);
            e.a(this.co, th);
        }
    }
}
