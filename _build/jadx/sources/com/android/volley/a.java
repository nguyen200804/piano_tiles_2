package com.android.volley;

import android.content.Intent;

/* compiled from: AuthFailureError.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends s {

    /* renamed from: b, reason: collision with root package name */
    private Intent f227b;

    public a() {
    }

    public a(i iVar) {
        super(iVar);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f227b != null ? "User needs to (re)enter credentials." : super.getMessage();
    }
}
