package com.applovin.impl.sdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class cn implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cm f499a;

    cn(cm cmVar) {
        this.f499a = cmVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f499a.f497a.isForegroundClickInvalidated()) {
            return;
        }
        this.f499a.e.a(this.f499a.f498b, this.f499a.c, this.f499a.d, this.f499a.f497a);
    }
}
