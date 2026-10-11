package com.facebook.share.internal;

import android.os.Bundle;

/* compiled from: ResultProcessor.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    private com.facebook.g f3483a;

    public abstract void a(com.facebook.internal.a aVar, Bundle bundle);

    public i(com.facebook.g gVar) {
        this.f3483a = gVar;
    }

    public void a(com.facebook.internal.a aVar) {
        if (this.f3483a != null) {
            this.f3483a.a();
        }
    }

    public void a(com.facebook.internal.a aVar, com.facebook.i iVar) {
        if (this.f3483a != null) {
            this.f3483a.a(iVar);
        }
    }
}
