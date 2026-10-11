package com.mopub.nativesdk.d;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;

/* compiled from: AdvertisingIdClient.java */
/* renamed from: com.mopub.nativesdk.d.a, reason: case insensitive filesystem */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class C0220a {
    public static C0221c a(Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
        } catch (Exception e) {
        }
        b bVar = new b((byte) 0);
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.STARS");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, bVar, 1)) {
            try {
                d dVar = new d(bVar.a());
                return new C0221c(dVar.a(), dVar.a(true));
            } catch (Exception e2) {
            } finally {
                context.unbindService(bVar);
            }
        }
        return null;
    }
}
