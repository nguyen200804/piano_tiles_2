package com.mopub.nativesdk.c;

import android.content.Context;
import java.util.List;
import java.util.Map;

/* compiled from: AbsHttpLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a<T> {

    /* renamed from: a, reason: collision with root package name */
    protected boolean f4618a;

    /* renamed from: b, reason: collision with root package name */
    private l f4619b;
    private c c;

    protected abstract int a();

    protected abstract T a(Map<String, List<String>> map, byte[] bArr);

    protected abstract String b();

    protected abstract byte[] c();

    public a(Context context) {
    }

    public final void a(int i, l lVar) {
        this.f4618a = false;
        if (lVar != null) {
            this.f4619b = lVar;
        }
        if (this.c == null) {
            this.c = new c(this.f4619b);
        }
        com.mopub.nativesdk.d.a.a.a().a(new b(this, 0));
    }
}
