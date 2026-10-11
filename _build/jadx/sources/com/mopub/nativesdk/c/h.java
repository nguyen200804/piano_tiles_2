package com.mopub.nativesdk.c;

import android.content.Context;
import android.os.Looper;
import com.mopub.nativesdk.d.s;
import java.util.HashMap;

/* compiled from: InstalledPkgLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class h {
    /* JADX WARN: Multi-variable type inference failed */
    public h() {
        ((e) this).f4624a = null;
        ((e) this).f4625b = null;
        ((e) this).c = new i(this, Looper.getMainLooper());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Context context, k kVar) {
        if (((e) this).f4624a == null) {
            ((e) this).f4624a = new HashMap();
        }
        ((e) this).f4625b = kVar;
        s.a(0, new j(this, context));
    }
}
