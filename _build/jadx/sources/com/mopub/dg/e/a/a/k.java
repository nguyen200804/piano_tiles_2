package com.mopub.dg.e.a.a;

import com.mopub.dg.adapi.DGAdApi;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f4319a;

    k(i iVar) {
        this.f4319a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVar = this.f4319a;
        if (iVar.d) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("pkg", iVar.f4317b);
        hashMap.put(VastExtensionXmlManager.TYPE, "2");
        hashMap.put("adid", iVar.f4316a);
        hashMap.put("jt", String.valueOf(iVar.i));
        hashMap.put("preload", String.valueOf(iVar.c));
        com.mopub.dg.e.a.b.c.a(iVar.h, "http://adbsc.krmobi.com/dzzb", true, hashMap);
        DGAdApi dGAdApi = DGAdApi.getInstance(iVar.h);
        if (dGAdApi != null && dGAdApi.getStatusListener() != null) {
            dGAdApi.getStatusListener().onStatusEvent("Preload_Fail", iVar.f4317b);
        }
        com.mopub.dg.d.n.a("Preload_Fail");
    }
}
