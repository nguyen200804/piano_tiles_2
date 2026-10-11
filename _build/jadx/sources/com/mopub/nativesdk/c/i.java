package com.mopub.nativesdk.c;

import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Map;

/* compiled from: InstalledPkgLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class i extends Handler {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ e f4628a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    i(e eVar, Looper looper) {
        super(looper);
        this.f4628a = eVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        k kVar;
        k kVar2;
        Map<String, PackageInfo> map;
        super.handleMessage(message);
        kVar = this.f4628a.f4625b;
        if (kVar == null) {
            return;
        }
        kVar2 = this.f4628a.f4625b;
        map = this.f4628a.f4624a;
        kVar2.a(map);
    }
}
