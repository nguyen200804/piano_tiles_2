package com.cmplay.ipc;

import android.content.Context;

/* compiled from: AbsIpcProviderHandler.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a implements b {

    /* renamed from: a, reason: collision with root package name */
    private Context f1551a;

    @Override // com.cmplay.ipc.b
    public void a(Context context) {
        this.f1551a = context;
    }

    public Context a() {
        return this.f1551a;
    }
}
