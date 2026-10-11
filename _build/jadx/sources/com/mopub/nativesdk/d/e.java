package com.mopub.nativesdk.d;

import android.content.Context;

/* compiled from: DeviceUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ Context f4693a;

    e(Context context) {
        this.f4693a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = null;
        try {
            new C0220a();
            C0221c a2 = C0220a.a(this.f4693a);
            if (a2 != null) {
                str = a2.a();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (str != null) {
            q.a(this.f4693a, "ak.native.sdk", "GAID", str);
        }
    }
}
