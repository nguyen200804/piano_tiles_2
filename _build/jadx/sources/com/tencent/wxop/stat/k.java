package com.tencent.wxop.stat;

import android.content.Context;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class k implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f4833b;
    final /* synthetic */ f bM;
    final /* synthetic */ Context e;

    k(Context context, String str, f fVar) {
        this.e = context;
        this.f4833b = str;
        this.bM = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tencent.wxop.stat.b.b bVar;
        Map map;
        Map map2;
        Long l;
        com.tencent.wxop.stat.b.b bVar2;
        String str;
        String str2;
        com.tencent.wxop.stat.b.b bVar3;
        try {
            e.p(this.e);
            map = e.aT;
            synchronized (map) {
                map2 = e.aT;
                l = (Long) map2.remove(this.f4833b);
            }
            if (l == null) {
                bVar2 = e.aV;
                bVar2.d("Starttime for PageID:" + this.f4833b + " not found, lost onResume()?");
                return;
            }
            Long valueOf = Long.valueOf((System.currentTimeMillis() - l.longValue()) / 1000);
            if (valueOf.longValue() <= 0) {
                valueOf = 1L;
            }
            str = e.aS;
            if (str != null && str.equals(this.f4833b)) {
                str = "-";
            }
            com.tencent.wxop.stat.a.h hVar = new com.tencent.wxop.stat.a.h(this.e, str, this.f4833b, e.a(this.e, false, this.bM), valueOf, this.bM);
            String str3 = this.f4833b;
            str2 = e.aR;
            if (!str3.equals(str2)) {
                bVar3 = e.aV;
                bVar3.warn("Invalid invocation since previous onResume on diff page.");
            }
            new p(hVar).ah();
            String unused = e.aS = this.f4833b;
        } catch (Throwable th) {
            bVar = e.aV;
            bVar.b(th);
            e.a(this.e, th);
        }
    }
}
