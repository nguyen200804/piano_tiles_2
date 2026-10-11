package com.mopub.nativesdk.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Looper;
import com.mopub.nativesdk.d.s;
import java.util.HashMap;
import java.util.Map;

/* compiled from: AdApiLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private Map<String, PackageInfo> f4624a = null;

    /* renamed from: b, reason: collision with root package name */
    private k f4625b = null;
    private Handler c = new i(this, Looper.getMainLooper());

    public void a(Context context, k kVar) {
        if (this.f4624a == null) {
            this.f4624a = new HashMap();
        }
        this.f4625b = kVar;
        s.a(0, new j(this, context));
    }
}
