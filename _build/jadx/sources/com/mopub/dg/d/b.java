package com.mopub.dg.d;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {
    public static c a(Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            d dVar = new d((byte) 0);
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.STARS");
            intent.setPackage("com.google.android.gms");
            try {
                if (!context.bindService(intent, dVar, 1)) {
                    throw new IOException("Google Play connection failed");
                }
                try {
                    e eVar = new e(dVar.a());
                    return new c(eVar.a(), eVar.b());
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                context.unbindService(dVar);
            }
        } catch (Exception e2) {
            throw e2;
        }
    }
}
